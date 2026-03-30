# PROMPT PARA CLAUDE CODE — Correções e Melhorias do Micro-Book

> **Contexto:** Livro de Microeconomia intermediária/avançada em português, hospedado como site MkDocs Material em `docs/micro-book/`. Usa boxes admonition do MkDocs (`!!! definition`, `!!! idea`, `!!! example`, etc.), gráficos JSXGraph e apps WebR. O tom é irreverente-mas-rigoroso, com referências recorrentes a Monty Python. Código R aparece em boxes retráteis do tipo `??? r-interactive "R Interativo"`.

---

## BLOCO 1 — CORREÇÃO OBRIGATÓRIA: Cap 2 — Criar 6 subpáginas

**Prioridade: CRÍTICA. Sem este capítulo o livro não se sustenta.**

O `cap02/index.md` já tem um roadmap slim que referencia 6 subpáginas. Nenhuma existe. Crie cada uma com conteúdo completo, seguindo o padrão dos outros capítulos já refatorados (caps 1, 3–8, 10).

### Arquivos a criar em `cap02/`:

1. **`otimizacao.md`** — Seções 2.1–2.3
   - 2.1: Otimização em 1 variável (CPO, CSO, exemplos com receita/custo)
   - 2.2: Derivadas parciais, Teorema da Função Implícita, estática comparativa
   - 2.3: Otimização multivariada (Hessiana, condições de máximo/mínimo em n dimensões)
   - Incluir: definições formais (`!!! definition`), exemplos resolvidos (`!!! example`), intuições econômicas (`!!! idea` com título "Intuição Econômica"), erros comuns (`!!! danger`), gráficos JSXGraph onde apropriado, código R em boxes `??? r-interactive "R Interativo"`

2. **`envelope.md`** — Seção 2.4
   - Teorema do Envelope: enunciado, prova, interpretação ("no ótimo, só importa o efeito direto")
   - Conexão com Lema de Roy, Lema de Shephard, Lema de Hotelling (antecipar caps 4–5, 10–12)
   - Exemplos numéricos e gráficos

3. **`lagrange.md`** — Seções 2.5–2.6
   - 2.5: Método de Lagrange (formulação, condições, interpretação geométrica)
   - 2.6: Envelope restrito e λ como preço-sombra
   - Exemplos: maximização de utilidade com restrição orçamentária, minimização de custo

4. **`kuhn-tucker.md`** — Seção 2.7
   - Condições de Kuhn-Tucker para restrições de desigualdade
   - Soluções de canto vs. interiores
   - Complementary slackness
   - Exemplo: consumidor que pode consumir zero de um bem

5. **`curvatura.md`** — Seções 2.8–2.9
   - 2.8: Concavidade, convexidade, quase-concavidade (quando as CPOs bastam)
   - 2.9: Funções homogêneas, Teorema de Euler, retornos de escala
   - Conexão com caps 3–4 (preferências) e cap 10 (produção)

6. **`complementos.md`** — Seções 2.10–2.13
   - 2.10: Integração e excedentes (do consumidor, do produtor)
   - 2.11: Equações diferenciais e dinâmica (equação de Euler intertemporal)
   - 2.12: Probabilidade e estatística (utilidade esperada — ponte para cap 7)
   - 2.13: Teoremas de ponto fixo (existência de equilíbrio — ponte para caps 9a, 14)

### Diretrizes de conteúdo para Cap 2:
- Referência principal: Nicholson & Snyder (2017, Cap. 2), complementada por Simon & Blume e Chiang & Wainwright
- Nível: rigor formal completo (enunciados, provas quando instrutivas, contraexemplos)
- Tom: manter o estilo do livro — irreverente, com analogias, referências Monty Python onde natural (o index.md já menciona "Holy Hand Grenade" para protocolos matemáticos)
- Cada subpágina deve ter entre 200–400 linhas
- Incluir cross-references para capítulos que usarão cada ferramenta

### Correção adicional no `cap02/index.md`:
- Linhas 9–16 da introdução: os parágrafos 2 e 3 são redundantes ("Este capítulo é a caixa de ferramentas..." / "cada ferramenta será usada..."). Fundir numa única versão concisa.

---

## BLOCO 2 — CORREÇÃO OBRIGATÓRIA: Refatorar Caps 9a–9d em subpáginas

Cada um dos 4 capítulos é monolítico (814–1197 linhas). Refatorar seguindo o padrão usado em caps 1–8 e 10:

### Padrão de refatoração:
- **`index.md`**: manter intro + roadmap slim (máx 40 linhas de conteúdo) + parágrafo de conexão
- **Subpáginas temáticas**: uma por seção principal (9x.1, 9x.2, etc.)
- **`exercicios.md`**: consolidar revisão rápida (🧠), resumo (📋), conceitos-chave (🔑), exercícios resolvidos (🎯), exercícios propostos (✏️) e questões ANPEC (🏆)
- **`pesquisa.md`**: seção "Pesquisa em Ação" (🔬)

### Cap 9a — "Pedra, Papel, Nash" (1197 linhas):
Criar em `cap09a/`:
- `estrategias-dominantes.md` — 9a.1: estratégias dominantes, dilema do prisioneiro
- `nash.md` — 9a.2: equilíbrio de Nash (definição, existência, unicidade)
- `estrategias-mistas.md` — 9a.3: estratégias mistas, teorema minimax
- `jogos-coordenacao.md` — 9a.4–9a.5: jogos de coordenação, battle of the sexes, chicken
- `exercicios.md` — consolidar exercícios e ANPEC
- `pesquisa.md` — seção Pesquisa em Ação

### Cap 9b — "Primeiro Você, Depois Eu" (930 linhas):
Criar em `cap09b/`:
- `backward-induction.md` — 9b.1: indução retroativa, forma extensiva
- `jogos-repetidos.md` — 9b.2: jogos repetidos (finitos e infinitos), folk theorem
- `barganha.md` — 9b.3: barganha de Rubinstein, ultimato
- `exercicios.md`
- `pesquisa.md`

### Cap 9c — "Jogando no Escuro" (814 linhas):
Criar em `cap09c/`:
- `tipos-bayesiano.md` — 9c.1–9c.2: tipos, transformação de Harsanyi, equilíbrio bayesiano de Nash
- `leiloes.md` — 9c.3: leilões (inglês, holandês, primeiro preço, segundo preço, teorema da equivalência de receita)
- `mecanismos.md` — 9c.4: desenho de mecanismos (princípio da revelação, VCG)
- `exercicios.md`
- `pesquisa.md`

### Cap 9d — "O Diploma É Caro" (944 linhas):
Criar em `cap09d/`:
- `pbe.md` — 9d.1: equilíbrio bayesiano perfeito
- `sinalizacao.md` — 9d.2: sinalização de Spence (educação como sinal)
- `cheap-talk.md` — 9d.3: cheap talk (Crawford-Sobel)
- `moral-hazard.md` — 9d.4: risco moral (principal-agente)
- `selecao-adversa.md` — 9d.5: seleção adversa (Akerlof, screening)
- `exercicios.md`
- `pesquisa.md`

### Para cada refatoração:
- Mover o conteúdo existente (não reescrever!) — cortar do index.md e colar na subpágina correspondente
- Atualizar o `index.md` com roadmap slim no formato de 4 colunas (ver Bloco 3)
- Verificar que nenhum conteúdo se perdeu (diff antes/depois deve ter saldo zero de conteúdo substantivo)
- Manter todos os gráficos JSXGraph, boxes, e referências intactos

---

## BLOCO 3 — CORREÇÃO OBRIGATÓRIA: Padronizar roadmaps

### Estado atual:
| Formato | Colunas | Capítulos |
|---|---|---|
| 4-col "Pergunta-guia" | Seção \| Pergunta-guia \| O que você vai aprender \| Página | 1, 3–8 |
| 4-col "Tema/Ideia" | Seção \| Tema \| Ideia central \| Página | 10–11 |
| 3-col "Tema" | Seção \| Tema \| Página | 12–18 |
| 3-col "Tópico" | Seção \| Tópico \| Página | 19–24 |

### Formato-alvo (único para todo o livro):

```markdown
| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
```

### Ação:
Para cada capítulo que NÃO usa o formato de 4 colunas com "Pergunta-guia" (caps 2, 9a–9d, 10–24):
1. Ler o index.md atual
2. Reescrever a tabela roadmap no formato-alvo
3. Criar uma pergunta-guia pedagógica para cada seção (formulada como pergunta que desperta curiosidade, não como descrição seca)
4. Manter a coluna "O que você vai aprender" com conteúdo equivalente ao que já existe em "Tema", "Ideia central" ou "Tópico"
5. Manter os links de Página inalterados

### Exemplos de boas perguntas-guia (referência dos caps já padronizados):
- Cap 3: "E se eu não tivesse que escolher?" → Preferências e restrições
- Cap 5: "Quando o preço sobe, o que acontece?" → Efeito renda e substituição
- Cap 7: "Quanto vale um bilhete de loteria?" → Utilidade esperada
- Cap 8: "Por que erramos de formas previsíveis?" → Heurísticas e vieses

---

## BLOCO 4 — RECOMENDAÇÃO FORTE: Guia de uso modular

### Estado atual:
- `mapa-livro.md` tem 3 trilhas: Expressa (1 semestre), Completa (pós), Aplicada (contemporânea)
- `prefacio.md` menciona "leitura seletiva" mas sem mapas concretos
- `guia-instrutor.md` tem roteiro de 30 aulas

### Ação:
Atualizar `mapa-livro.md` adicionando as seguintes trilhas (mantendo as 3 existentes):

```
d. **Micro I — Graduação (1 semestre, ~30 aulas)**
   1 → 2* → 3 → 4 → 5 → 6 → 7 → 10 → 11 → 12 → 13
   (* Cap 2 como referência, sem cobrir integralmente)

e. **Micro II — Graduação (1 semestre, ~30 aulas)**
   8 → 9a → 9b → 14 → 15 → 16 → 17 → 18 → 19 → 20

f. **Organização Industrial (IO)**
   9a → 9c → 15 → 16 → 19 → 21

g. **Economia Comportamental**
   7 → 8 → 22 (+ seleção de 9b para jogos experimentais)
```

Verificar que as trilhas existentes (Expressa, Completa, Aplicada) estão atualizadas com a numeração final dos capítulos.

---

## BLOCO 5 — RECOMENDAÇÃO FORTE: Redundância na intro do Cap 2

Ler `cap02/index.md` linhas 1–20. Identificar os parágrafos redundantes sobre "caixa de ferramentas" e fundir numa única versão concisa que:
- Mantenha a metáfora da caixa de ferramentas
- Diga de uma vez: o que o capítulo cobre, por que importa, como será usado depois
- Máximo 1 parágrafo (4–5 linhas)

---

## BLOCO 6 — SUGESTÃO: Notas Monty Python nos caps 12–18

Os caps 12–18 (teoria da firma, equilíbrio, monopólio, oligopólio) têm menos referências Monty Python que o restante do livro. Para cada um desses capítulos:
1. Ler o conteúdo completo
2. Identificar 1–2 pontos onde uma referência Python seria natural e pedagógica
3. Adicionar como nota de rodapé ou comentário parentético (nunca forçado)

Referências disponíveis no repertório do livro:
- Dead Parrot → assimetria de informação, goods that "cease to be"
- Cheese Shop → oferta zero, mercados sem estoque
- Spanish Inquisition → hipóteses que falham inesperadamente
- Life of Brian → bens públicos, free-riding
- Holy Hand Grenade → protocolos e regras formais
- Shrubbery → demanda inelástica
- Ministry of Silly Walks → ineficiência burocrática
- Black Knight → sunk costs ("it's just a flesh wound")
- Lumberjack Song → mudança de preferências
- Knights Who Say Ni → demandas absurdas de reguladores

---

## REGRAS GLOBAIS DE EXECUÇÃO

1. **Tom e voz:** Irreverente mas preciso, provocador mas honesto, divertido mas rigoroso. Testar cada frase: "um aluno de 3o ano de economia riria E aprenderia?"
2. **Boxes `!!! idea`:** Manter título "Intuição Econômica" (nunca renomear para outro título).
3. **Labels JSXGraph:** Nunca sobrepor curvas — offset mínimo de +5px.
4. **Código R:** Sempre em box retrátil `??? r-interactive "R Interativo"`.
5. **Referências bibliográficas:** Verificar cada citação contra a realidade (autor, ano, título, journal). Não alucinar referências.
6. **Cross-references:** Usar links relativos entre capítulos (`[Cap. 4](../cap04/index.md)`).
7. **Exercícios:** Numerar sequencialmente dentro de cada capítulo (Exercício 9a.1, 9a.2, ...).
8. **Idioma:** Português brasileiro acadêmico, com estrangeirismos técnicos em itálico (*free-riding*, *cheap talk*).
9. **Não criar arquivos desnecessários.** Não criar README, CHANGELOG ou documentação extra.
10. **Commitar ao final de cada bloco** com mensagem descritiva no padrão `feat(micro-book): ...`.

---

## ORDEM DE EXECUÇÃO SUGERIDA

1. **Bloco 1** (Cap 2 subpáginas) — crítico, base de tudo
2. **Bloco 5** (Redundância intro Cap 2) — rápido, junto com Bloco 1
3. **Bloco 2** (Refatorar 9a–9d) — grande mas mecânico
4. **Bloco 3** (Padronizar roadmaps) — fazer junto com Bloco 2 para os 9x, depois caps 10–24
5. **Bloco 4** (Trilhas modulares) — rápido, após roadmaps estáveis
6. **Bloco 6** (Monty Python caps 12–18) — criativo, pode ser último
