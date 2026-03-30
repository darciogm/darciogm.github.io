# PROMPT PARA CLAUDE CODE — Recomendações Estratégicas e Elevação para 9,8+

> **Contexto:** Livro de Microeconomia intermediária/avançada em português, MkDocs Material em `docs/micro-book/`. Usa admonitions (`!!! definition`, `!!! idea "Intuição Econômica"`, `!!! example`, `!!! brasil`, `!!! danger`), gráficos JSXGraph, apps WebR. Código R em boxes retráteis `??? r-interactive "R Interativo"`. Tom irreverente-mas-rigoroso com referências a Monty Python. O livro tem 28 módulos (caps 1–8, 9a–9d, 10–24).

> **Objetivo:** Elevar TODAS as dimensões avaliativas para 9,8+ numa escala de 10. Trabalhar com grande detalhe e cuidado.

> **Notas atuais e gaps:**
> | Dimensão | Atual | Meta | Gap |
> |---|:---:|:---:|:---:|
> | Conteúdo técnico | 9,0 | 9,8 | +0,8 |
> | Pedagogia e didática | 9,5 | 9,8 | +0,3 |
> | Interatividade | 9,0 | 9,8 | +0,8 |
> | Voz editorial e engajamento | 9,0 | 9,8 | +0,8 |
> | Enraizamento brasileiro | 8,5 | 9,8 | +1,3 |
> | Exercícios e avaliação | 8,5 | 9,8 | +1,3 |
> | Cobertura de fronteira (pesquisa) | 9,5 | 9,8 | +0,3 |
> | Arquitetura e navegação | 9,0 | 9,8 | +0,8 |

---

## BLOCO 1 — APROFUNDAR CAPS 21–24 (Conteúdo técnico +0,8)

### Estado atual:
| Cap | Seções | Subpáginas | `!!! idea` | `!!! definition` | `!!! example` | `??? r-interactive` | `!!! brasil` |
|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| 21 | 7 | 7 | 5 | 3 | 0 | 0 | ? |
| 22 | 7 | 6 | 4 | 3 | 0 | 0 | ? |
| 23 | 6 | 7 | 4 | 4 | 0 | 0 | ? |
| 24 | 6 | 6 | 5 | 5 | 0 | 0 | ? |

**Nenhum dos 4 capítulos tem `!!! example` ou `??? r-interactive`.** Isso é um buraco grave na interatividade.

### Ações por capítulo:

#### Cap 21 — "Se É De Graça, O Produto É Você" (Economia Digital)
Adicionar:
1. **Nova seção 21.x: Switching Costs e Lock-in** — formalizar modelo de Klemperer (1987): custo de troca como barreira, equilíbrio com lock-in, conexão com efeitos de rede. Exemplo brasileiro: portabilidade bancária (BCB), portabilidade numérica (Anatel). Criar subpágina `switching-costs.md`.
2. **3 boxes `!!! example`** distribuídos nas subpáginas existentes:
   - Exemplo: precificação de dados pessoais (quanto vale seu CPF no mercado negro?)
   - Exemplo: modelo de negócios do Nubank vs. bancões (plataforma bilateral)
   - Exemplo: algoritmo de recomendação da Netflix como discriminação de preços
3. **2 boxes `??? r-interactive "R Interativo"`**:
   - Simulação de efeitos de rede (externalidade positiva de adoção) com slider para massa crítica
   - Simulação de mercado bilateral (plataforma cobrando dos dois lados) variando elasticidades
4. **2 boxes `!!! brasil`** adicionais:
   - PIX como caso de padrão aberto vs. lock-in proprietário
   - iFood/Rappi e concentração de mercado em plataformas brasileiras
5. **2 boxes `!!! idea "Intuição Econômica"`** adicionais
6. **2 boxes `!!! definition`** adicionais (switching cost, lock-in)

#### Cap 22 — "RCTs, Diff-in-Diff..." (Economia Experimental)
Adicionar:
1. **Nova seção 22.x: Variáveis Instrumentais (IV) com Exemplo Aplicado** — intuição de IV, condição de exclusão, exemplo clássico (chuva como instrumento para oferta agrícola OU distância a faculdade como instrumento para educação). Formalizar com 2SLS. Exemplo brasileiro: Bolsa Família como instrumento. Criar subpágina `variaveis-instrumentais.md`.
2. **3 boxes `!!! example`**:
   - Exemplo: RCT do Bolsa Família (Ribas & Soares)
   - Exemplo: experimento de laboratório sobre cooperação (jogo do bem público com punição)
   - Exemplo: diff-in-diff da Lei Seca no Brasil (efeito sobre mortes no trânsito)
3. **2 boxes `??? r-interactive "R Interativo"`**:
   - Simulação de RCT: gerar dados, aleatorizar tratamento, estimar ATE com e sem controles
   - Visualização de diff-in-diff: gráfico com tendências paralelas pré-tratamento
4. **2 boxes `!!! brasil`** adicionais:
   - PNAD Contínua como fonte de identificação para quasi-experimentos
   - Programa Mais Médicos como experimento natural
5. **2 boxes `!!! idea "Intuição Econômica"`** adicionais
6. **2 boxes `!!! definition`** adicionais (variável instrumental, condição de exclusão)

#### Cap 23 — "Doutor, Quanto Custa?" (Economia da Saúde)
Adicionar:
1. **Nova seção 23.x: Regulação Farmacêutica e o Papel da ANS** — regulação de preços de medicamentos (CMED), planos de saúde (ANS), mercado de genéricos no Brasil. Exemplo: caso Farmácia Popular. Criar subpágina `regulacao-farmaceutica.md`.
2. **3 boxes `!!! example`**:
   - Exemplo: tabela SUS vs. plano privado — seleção adversa na prática
   - Exemplo: precificação de genéricos e a CMED
   - Exemplo: moral hazard em planos odontológicos (consumo excessivo pós-cobertura)
3. **2 boxes `??? r-interactive "R Interativo"`**:
   - Modelo de demanda por saúde (Grossman) com depreciação e investimento
   - Simulação de pooling vs. separating em seguros de saúde (Rothschild-Stiglitz)
4. **2 boxes `!!! brasil`** adicionais:
   - Farmácia Popular: subsídio cruzado e acesso
   - ANS e a regulação de reajustes de planos individuais
5. **2 boxes `!!! idea "Intuição Econômica"`** adicionais
6. **2 boxes `!!! definition`** adicionais (regulação de preços, mercado de genéricos)

#### Cap 24 — "Quanto Vale Um Pôr do Sol?" (Economia Ambiental)
Adicionar:
1. **Nova seção 24.x: Debate Nordhaus–Stern Desenvolvido** — expandir a seção existente sobre mudança climática. Formalizar: taxa de desconto social (ρ vs. δ + ηg), DICE model de Nordhaus, Review de Stern, crítica de Weitzman (fat tails). Posição brasileira: LULUCF e desmatamento. Criar subpágina `nordhaus-stern.md` ou expandir a subpágina de clima existente (`clima-carbono.md`).
2. **3 boxes `!!! example`**:
   - Exemplo: mercado de carbono europeu (EU ETS) vs. CBIO brasileiro
   - Exemplo: valoração contingente do Parque Nacional da Tijuca
   - Exemplo: custo social do carbono — diferença Nordhaus ($50) vs. Stern ($85) vs. EPA ($190)
3. **2 boxes `??? r-interactive "R Interativo"`**:
   - Modelo DICE simplificado: slider para taxa de desconto e ver trajetória ótima de emissões
   - Valoração contingente: simulação de willingness-to-pay com distribuição log-normal
4. **2 boxes `!!! brasil`** adicionais:
   - Fundo Amazônia e pagamento por serviços ambientais
   - Mercado de CBIOs (RenovaBio) como cap-and-trade tropical
5. **2 boxes `!!! idea "Intuição Econômica"`** adicionais
6. **2 boxes `!!! definition`** adicionais (taxa de desconto social, custo social do carbono)

### Diretrizes para novas seções:
- Cada nova subpágina: 200–350 linhas
- Incluir pelo menos 1 proposição/teorema formal com prova ou demonstração intuitiva
- Cross-reference para capítulos relacionados
- Atualizar o roadmap do index.md com a nova seção (formato 4 colunas com pergunta-guia)
- Atualizar `indice-remissivo.md` com novos termos

---

## BLOCO 2 — RESOLVER SOBREPOSIÇÃO 9d ↔ 19 (Arquitetura +0,8)

### Diagnóstico:
Três temas aparecem em ambos os capítulos:

| Tema | Cap 9d (arquivo) | Cap 19 (arquivo) |
|---|---|---|
| Sinalização | `sinalizacao.md` | `sinalizacao-screening.md` |
| Seleção adversa | `selecao-adversa.md` | `selecao-adversa.md` |
| Moral hazard | `moral-hazard.md` | `risco-moral.md` + `principal-agente.md` |

### Ação — diferenciação clara:

**Cap 9d → foco TEÓRICO (equilíbrio, refinamentos, provas):**
- Sinalização: derivação formal do PBE separador/pooling, single-crossing condition, refinamento de Cho-Kreps
- Seleção adversa: mecanismo de desintegração do mercado como jogo, Akerlof formal
- Moral hazard: modelo como jogo sequencial com esforço não-observável, trade-off incentivo vs. seguro em forma canônica

Para cada arquivo do 9d, adicionar no topo:
```markdown
!!! tip "Onde estou no livro?"
    Este capítulo desenvolve a **teoria dos jogos** por trás da informação assimétrica. Para **aplicações a mercados, contratos e regulação**, veja o [Capítulo 19](../cap19/index.md).
```

**Cap 19 → foco APLICADO (mercados, contratos, regulação, dados brasileiros):**
- Sinalização: educação como sinal no mercado de trabalho brasileiro (retornos da PNAD), screening como alternativa, regulação de credenciais
- Seleção adversa: menu de contratos Rothschild-Stiglitz, seguro obrigatório, mercado de usados no Brasil (FIPE/Webmotors)
- Moral hazard: desenho de contratos de incentivo, remuneração variável (B3 executivos), seguros ANS

Para cada arquivo do 19, adicionar no topo:
```markdown
!!! tip "Onde estou no livro?"
    Este capítulo aplica a informação assimétrica a **mercados e contratos reais**. Para os **fundamentos de teoria dos jogos**, veja o [Capítulo 9d](../cap09d/index.md).
```

**Eliminar redundâncias textuais:** Onde ambos os capítulos explicam o mesmo conceito com palavras diferentes, escolher:
- 9d mantém a explicação formal/matemática
- 19 diz "como vimos no Cap. 9d, [resultado]. Aqui, aplicamos a [contexto]."

---

## BLOCO 3 — TRILHAS DE LEITURA EXPANDIDAS (Arquitetura e Navegação +0,8)

### Estado atual do `mapa-livro.md`:
4 trilhas: Micro I, Micro II, IO, Comportamental + 3 express (Expressa, Completa, Aplicada).

### Ação — adicionar trilhas específicas:

Abrir `mapa-livro.md` e adicionar:

```markdown
## Trilhas por Público

### Trilha Graduação (1 semestre, ~30 aulas)
Caps 1–6 → 10–13 → 15
**Pré-requisito:** Cálculo I. **Resultado:** domínio de consumidor, firma e mercados competitivos + monopólio.

### Trilha Graduação Avançada (2 semestres)
Semestre 1: Caps 1–6 → 10–13 → 15
Semestre 2: Caps 7–8 → 9a–9b → 14 → 16–17 → 19–20
**Pré-requisito:** Micro I + Cálculo II. **Resultado:** fundações completas incluindo jogos e informação.

### Trilha Pós-Graduação (Mestrado)
Caps 2 → 3–6 → 9a–9d → 10–14 → 15–18 → 19–24
**Pré-requisito:** Análise Real desejável. **Resultado:** cobertura integral com fronteira de pesquisa.

### Trilha ANPEC
Seleção transversal: usar seções "Vem, ANPEC!" de cada capítulo.
Ordem sugerida: 3 → 4 → 5 → 10 → 11 → 12 → 13 → 15 → 16 → 9a → 14 → 6 → 7 → 17 → 18
**Foco:** exercícios tipo ANPEC + provas resolvidas + conceitos-chave.
```

Também atualizar `prefacio.md` para referenciar explicitamente o `mapa-livro.md` na seção de leitura seletiva, com link direto.

---

## BLOCO 4 — CAP 16: AVALIAR DIVISÃO EM 16a/16b (Conteúdo técnico +0,8)

### Estado atual:
Cap 16 tem 16 seções, já organizadas em 5 subpáginas temáticas + exercícios + pesquisa:
- `fundamentos.md` (16.1–16.4): Bertrand, Cournot, Cournot n firmas
- `capacidade-diferenciacao.md` (16.5–16.6): Restrições de capacidade, diferenciação
- `colusao-entrada.md` (16.7–16.10): Colusão, investimento, dissuasão, sinalização
- `entrada-inovacao.md` (16.11–16.13): Entrada livre, inovação, comparação
- `monopolistica-fusoes.md` (16.14–16.16): Competição monopolística, fusões, regulação

### Ação:
Dividir o capítulo em dois módulos independentes, cada um com seu próprio `index.md`:

**Criar `cap16a/` — "Competição Oligopolística"**
- Mover: `fundamentos.md`, `capacidade-diferenciacao.md`
- Seções 16a.1–16a.6 (renumerar)
- Novo `index.md` com roadmap 4 colunas
- Novo `exercicios.md` (mover exercícios relevantes)
- Novo `pesquisa.md` (mover artigos relevantes)

**Criar `cap16b/` — "IO Avançada: Colusão, Entrada e Regulação"**
- Mover: `colusao-entrada.md`, `entrada-inovacao.md`, `monopolistica-fusoes.md`
- Seções 16b.1–16b.10 (renumerar)
- Novo `index.md` com roadmap 4 colunas
- Novo `exercicios.md`
- Novo `pesquisa.md`

**Atualizar referências:**
- `mkdocs.yml` (nav)
- Todos os cross-references que apontam para `cap16/` em outros capítulos
- `mapa-livro.md` (trilhas)
- `indice-remissivo.md`

**ATENÇÃO:** Se a divisão parecer criar mais problemas do que resolve (muitas referências cruzadas quebradas, perda de coerência narrativa), NÃO dividir. Em vez disso, adicionar um box no início do index.md:
```markdown
!!! tip "Como navegar este capítulo"
    Este capítulo é extenso. Use o roadmap abaixo para ir direto ao tema desejado.
    **Bloco A (Fundamentos):** Seções 16.1–16.6 — modelos básicos de oligopólio.
    **Bloco B (Avançado):** Seções 16.7–16.16 — colusão, entrada, inovação e regulação.
```

---

## BLOCO 5 — ELEVAR ENRAIZAMENTO BRASILEIRO (+1,3)

### Diagnóstico:
Os caps 21–24 são os mais fracos em boxes `!!! brasil`. Mas o gap é sistêmico — vários capítulos do núcleo também podem ganhar.

### Ação — adicionar 2 boxes `!!! brasil` por capítulo nos seguintes (priorizando os mais fracos):

**Caps 21–24:** já cobertos no Bloco 1.

**Caps com menos boxes brasil (verificar e complementar):**

Para cada capítulo abaixo, ler o conteúdo e adicionar boxes `!!! brasil` que sejam **orgânicos** (não traduzidos do americano):

- **Cap 9a:** Operação Lava Jato como dilema do prisioneiro (delação premiada); licitações públicas e conluio
- **Cap 9b:** Negociação salarial no Brasil (dissídios coletivos como barganha repetida); guerra fiscal entre estados
- **Cap 9c:** Leilões da ANP (pré-sal); leilão de frequências 5G (Anatel)
- **Cap 9d:** Diploma universitário no Brasil como sinal (retornos educação PNAD); Enem/Sisu como mecanismo de screening
- **Cap 13:** Mercado de café commodity (Brasil é maior produtor); convergência de preços entre supermercados (ABRAS)
- **Cap 14:** Edgeworth Box aplicada ao comércio Brasil-China; BNDES e alocação de recursos
- **Cap 17:** Mercado de trabalho informal no Brasil (PNAD); salário mínimo e monopsônio (debate Dieese vs. CNC)
- **Cap 18:** Taxa Selic e decisão intertemporal; previdência complementar (PGBL/VGBL como poupança com incentivo)
- **Cap 20:** SUS como bem público; tragédia dos comuns na pesca artesanal nordestina

### Formato dos boxes:
```markdown
!!! brasil "Brasil na Prática — [Título Específico]"
    [2–4 parágrafos com dados reais, fonte citada, conexão explícita com a teoria do capítulo]
```

---

## BLOCO 6 — ELEVAR EXERCÍCIOS E AVALIAÇÃO (+1,3)

### Diagnóstico:
- Caps 22–24 têm pouquíssimas questões ANPEC (2–4 cada)
- Nenhum dos caps 21–24 tem `!!! example` (exercícios resolvidos inline)
- Faltam exercícios computacionais (R) em quase todo o livro (apenas 7 `??? r-interactive` no cap 2)

### Ação:

**6a. Exercícios ANPEC nos caps fracos:**
Para caps 22, 23, 24: adicionar 4–6 questões estilo ANPEC (V/F com 5 assertivas) em cada `exercicios.md`. Temas:
- Cap 22: validade interna/externa, viés de seleção, ATE vs. ATT
- Cap 23: modelo de Grossman, seleção adversa em seguros, regulação ANS
- Cap 24: teorema de Coase, imposto pigouviano vs. cap-and-trade, valoração contingente

**6b. Exercícios resolvidos inline (`!!! example`):**
Para caps 21–24: adicionar 2–3 exercícios resolvidos dentro das subpáginas temáticas (não no exercicios.md). Formato:

```markdown
!!! example "Exercício Resolvido 21.3 — Efeitos de rede no WhatsApp"
    **Enunciado:** Considere uma rede com utilidade $u_i = v \cdot n^\alpha - p$...

    **Solução:**
    Passo 1: ...
    Passo 2: ...

    **Intuição:** ...
```

**6c. Exercícios computacionais (`??? r-interactive`):**
Adicionar pelo menos 1 box `??? r-interactive` em cada capítulo que não tem nenhum. Prioridade:
- Caps 21–24 (cobertos no Bloco 1)
- Caps 9a–9d: simular jogos (matching pennies, Cournot dinâmico, leilão segundo preço, sinalização)
- Caps 13–14: simular convergência para equilíbrio competitivo; computar núcleo de uma economia de troca
- Caps 15–16: monopólio com diferentes elasticidades; Cournot com n firmas (slider)

Formato:
```markdown
??? r-interactive "R Interativo — [Título]"
    ```r
    # Código R autocontido
    # Usar webr::install() se precisar de pacotes
    # Gráficos com plot() ou ggplot2
    # Sliders com webr::input_slider() onde disponível
    ```

    **Experimente:** Altere o valor de `n` e observe como...
```

---

## BLOCO 7 — ELEVAR INTERATIVIDADE (+0,8)

### Além dos `??? r-interactive` do Bloco 6, adicionar gráficos JSXGraph onde faltam.

Para cada capítulo 21–24, adicionar pelo menos 1 gráfico JSXGraph interativo:
- **Cap 21:** Gráfico de efeitos de rede (curva S de adoção com ponto de massa crítica)
- **Cap 22:** Gráfico de diff-in-diff (duas linhas com tendências paralelas e break no tratamento)
- **Cap 23:** Gráfico de demanda por saúde de Grossman (estoque de saúde com depreciação)
- **Cap 24:** Gráfico de imposto pigouviano vs. cap-and-trade (oferta/demanda de poluição)

### Labels JSXGraph: NUNCA sobrepor curvas. Offset mínimo +5px.

---

## BLOCO 8 — CALIBRAR MONTY PYTHON (Voz editorial +0,8)

### Estado atual:
Todos os 28 módulos têm referências Monty Python. Total: ~45+ referências. Caps 12–18 têm 1–4 cada (15 total).

### Ação — "And now for something completely different":
Escolher 2–3 capítulos para serem "secos" — humor via analogia e storytelling, sem Python. Isso faz os demais brilharem por contraste.

**Candidatos a capítulos "secos":**
- **Cap 14** (Equilíbrio Geral) — já é o mais abstrato; humor via ironia matemática funciona melhor
- **Cap 17** (Mercados de Fatores) — tema mais "técnico"; humor via dados surpreendentes
- **Cap 2** (Ferramentas Matemáticas) — humor via confissões editoriais ("sim, eu sei que ninguém gosta de Hessiana")

Para esses 3 capítulos:
1. Ler todas as referências Monty Python existentes
2. Avaliar quais são realmente pedagógicas (manter) vs. decorativas (remover)
3. Substituir referências decorativas por humor orgânico (analogias, dados surpreendentes, confissões editoriais)
4. NÃO remover referências que são genuinamente a melhor explicação do conceito

### Nos caps 12, 13, 15, 16, 18 — manter e potencializar:
- Cap 12: Dead Parrot sobre custos de transação é GENIAL — manter e expandir
- Cap 13: "What have the Romans ever done for us?" para Samuelson — manter
- Cap 15: Black Knight sobre monopolista — manter
- Cap 16: Spanish Inquisition sobre mudança de variável de decisão — manter
- Cap 18: Holy Hand Grenade sobre VPL — manter

---

## BLOCO 9 — COBERTURA DE FRONTEIRA (+0,3)

### Ação — atualizar seções "Pesquisa em Ação" nos caps mais defasados:

Para cada `pesquisa.md`, verificar se inclui pelo menos 1 artigo pós-2022. Se não:

**Sugestões de artigos recentes (verificar existência real antes de incluir!):**
- Cap 21: Crémer, de Montjoye & Schweitzer (2019) "Competition Policy for the Digital Era" (relatório EU)
- Cap 22: Athey & Imbens (2022) "Design-based analysis in Difference-In-Differences" (JoE)
- Cap 23: Finkelstein, Hendren & Shepard (2019) "Subsidizing Health Insurance for Low-Income Adults" (AER)
- Cap 24: Carleton & Greenstone (2021) "Updating the United States Government's Social Cost of Carbon" (NBER)

**REGRA CRÍTICA:** Verificar CADA referência bibliográfica. Autor, ano, título, journal. NÃO alucinar referências. Se não tiver certeza, usar `WebSearch` para confirmar antes de incluir.

---

## BLOCO 10 — SPIN-OFFS E COMPLEMENTOS (Material auxiliar)

Criar um novo arquivo `recursos/spin-offs.md` com roteiros/esboços para:

### 10a. Caderno de Exercícios Resolvidos
- Estrutura: 1 seção por capítulo, 8–10 exercícios resolvidos passo a passo
- Para cada exercício: enunciado, solução detalhada (não telegráfica), intuição econômica, extensões
- Estimativa: 200+ exercícios, ~400 páginas
- Formato: pode ser volume separado em PDF ou seção adicional no site

### 10b. Guia de Laboratório Computacional
- Estrutura: 1 lab por capítulo, 50 min de aula
- Cada lab: objetivo, dados (POF, PNAD, Comex Stat), código R comentado, perguntas guiadas, extensões
- Labs prioritários:
  - Lab 3: Estimar demanda com dados POF (elasticidade-preço)
  - Lab 9a: Simular Cournot com n firmas e visualizar convergência
  - Lab 13: Equilibrio competitivo com dados de commodities
  - Lab 19: Rodar Gale-Shapley com dados de residência médica
  - Lab 22: RCT simulado com dados sintéticos
  - Lab 24: Calibrar modelo DICE simplificado

### 10c. Roteiros "1 Conceito em 60 Segundos"
- Para cada box `!!! idea "Intuição Econômica"` do livro (~158 boxes), criar roteiro de Reel/TikTok:
  - Hook (3 seg): pergunta provocativa
  - Visual (20 seg): gráfico ou animação do conceito
  - Twist (15 seg): dado surpreendente ou paradoxo
  - CTA (5 seg): "Mais no cap X do livro"
- Listar os 10 roteiros com maior potencial viral (começar pelo gancho da padaria de R$35 do Cap 11)

### 10d. Newsletter "Micro na Manchete"
- Template semanal: 3 notícias brasileiras + análise de 3 parágrafos cada
- Exemplo de edição-piloto com notícias reais recentes
- Conexão com capítulos do livro

### 10e. Versão ANPEC
- Seleção transversal de todas as questões "Vem, ANPEC!" do livro
- Organizar por tema (consumidor, produtor, jogos, etc.) e por dificuldade
- Adicionar gabarito comentado com referência ao capítulo

### 10f. Podcast "O Encanador e o Economista"
- Nome: referência a Duflo (já no prefácio)
- Formato: 15 min, 1 caso real brasileiro por episódio
- Estrutura: gancho jornalístico → conceito micro → dados → implicação de política
- Listar 10 episódios-piloto mapeados para capítulos

---

## REGRAS GLOBAIS DE EXECUÇÃO

1. **Tom e voz:** Irreverente mas preciso. Testar: "um aluno de 3o ano riria E aprenderia?"
2. **Boxes `!!! idea`:** Título SEMPRE "Intuição Econômica" (nunca renomear).
3. **Labels JSXGraph:** Nunca sobrepor curvas — offset mínimo +5px.
4. **Código R:** Sempre em `??? r-interactive "R Interativo"`.
5. **Referências:** Verificar CADA citação (autor, ano, título, journal). WebSearch para confirmar. NÃO alucinar.
6. **Cross-references:** Links relativos (`[Cap. 4](../cap04/index.md)`).
7. **Exercícios:** Numerar sequencialmente dentro do capítulo.
8. **Idioma:** Português brasileiro acadêmico. Estrangeirismos em itálico.
9. **Não criar arquivos desnecessários.** Não criar README/CHANGELOG.
10. **Commitar ao final de cada bloco** com `feat(micro-book): ...`.
11. **Atualizar `indice-remissivo.md`** com cada novo termo definido.
12. **Atualizar `glossario.md`** com cada nova definição.

---

## ORDEM DE EXECUÇÃO SUGERIDA

| Ordem | Bloco | Impacto | Esforço |
|:---:|:---:|---|---|
| 1 | Bloco 1 | Conteúdo técnico (+0,8) + Interatividade (+0,8) | Alto |
| 2 | Bloco 5 | Enraizamento brasileiro (+1,3) | Médio |
| 3 | Bloco 6 | Exercícios (+1,3) | Alto |
| 4 | Bloco 2 | Arquitetura — sobreposição 9d↔19 | Médio |
| 5 | Bloco 7 | Interatividade — JSXGraph | Médio |
| 6 | Bloco 3 | Trilhas de leitura | Baixo |
| 7 | Bloco 4 | Cap 16 divisão (avaliar) | Médio |
| 8 | Bloco 8 | Calibrar Monty Python | Baixo |
| 9 | Bloco 9 | Fronteira — pesquisa recente | Baixo |
| 10 | Bloco 10 | Spin-offs (documento de planejamento) | Médio |

**Meta final:** Após execução completa, o livro deve atingir 9,8+ em TODAS as 8 dimensões.
