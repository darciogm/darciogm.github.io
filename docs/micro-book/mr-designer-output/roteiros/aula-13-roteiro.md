# Aula 13 — Função de Produção e Tecnologia
**Tipo**: C (Conteúdo)
**Capítulo(s)**: Cap. 9 (Seções 9.1–9.4)
**Learning Outcomes desta aula**:
1. **Definir** função de produção e distinguir curto prazo (pelo menos 1 insumo fixo) de longo prazo
2. **Calcular** produto marginal, produto médio e TMST para funções clássicas
3. **Classificar** rendimentos de escala (constantes, crescentes, decrescentes) a partir da função de produção

---

## Pré-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 50 min
**Plataforma**: LMS + Livro digital interativo

### Leitura obrigatória
- Cap. 9, Seções 9.1–9.4 (produção, produto marginal/médio, rendimentos decrescentes, isoquantas)
- Explorar gráficos interativos de isoquantas e TMST

### Atividade pré-aula
- [ ] Explorar gráfico interativo: variar K e L e observar isoquantas
- [ ] Ler Box Brasil sobre revolução agrícola (Embrapa) — se disponível
- [ ] Responder Quiz Pré-Aula no LMS

### Quiz Pré-Aula (5 questões)
1. A função de produção q = f(L, K) mapeia ___ em ___. (Bloom 1)
2. PMg_L = ∂q/∂L. Se PMg_L é decrescente, o que isso significa economicamente? (Bloom 2)
3. A isoquanta é análoga a qual conceito da teoria do consumidor? (Bloom 2)
4. Se f(tL, tK) = t·f(L,K), os rendimentos de escala são ___. (Bloom 1)
5. TMST = PMg_L/PMg_K. O que acontece com a TMST quando a firma substitui K por L ao longo de uma isoquanta? (Bloom 2)

---

## Em Aula (100 min)

### Abertura (10 min)
- **Hook**: "A Embrapa multiplicou a produção agrícola do Brasil 4× em 40 anos sem quadruplicar a terra. Como? A resposta está na função de produção — e vocês vão aprender a formalizá-la hoje."
- **Check-in**: Quiz + dúvidas
- **Peer Instruction**: "Contratar o 100° funcionário numa fábrica aumenta a produção mais, menos ou igual ao 10° funcionário (com K fixo)?" → voto → pares → revoto → "Rendimentos marginais decrescentes!"

### Bloco 1: Mini-Lecture — Produção e Produtos (25 min)
**Slides 1-8 (Quarto/Reveal)**:
- Slide 1: "A firma transforma insumos em produtos" — q = f(L, K, ...)
- Slide 2: Curto prazo (K fixo) vs. longo prazo (todos variáveis)
- Slide 3: Produto total, marginal e médio — gráfico clássico
- Slide 4: Relação PMg e PMe: PMg > PMe → PMe sobe; PMg < PMe → PMe desce; PMg = PMe no máximo do PMe
- Slide 5: Lei dos rendimentos marginais decrescentes (f_LL < 0 com K fixo)
- Slide 6: Analogia: consumidor tem curvas de indiferença, firma tem isoquantas
- Slide 7: TMST = PMg_L/PMg_K — "quanto de K posso trocar por 1 unidade de L mantendo produção"
- Slide 8: TMST decrescente → isoquantas convexas → tecnologia "bem-comportada"

### Bloco 2: Exercício Guiado — Calculando Tudo (25 min)
**Estratégia ativa**: Problem solving guiado

**Problema**:
> q = L^(2/3)·K^(1/3), com w = 12 (salário), v = 6 (aluguel do capital)
> (a) Calcule PMg_L, PMg_K, PMe_L
> (b) Calcule TMST(L, K)
> (c) Se K = 27 (fixo), derive o produto total de CP: q(L) e encontre PMg_L(L)
> (d) Classifique os rendimentos de escala

**Dinâmica**:
- (a)-(b): Professor demonstra (8 min)
  - PMg_L = (2/3)(K/L)^(1/3), TMST = 2K/L
- (c): Alunos em duplas (7 min) → conferir → "PMg_L é decrescente em L — rendimentos marginais decrescentes!"
- (d): Alunos verificam: f(tL, tK) = t^(2/3+1/3)·f = t·f → CRS (5 min)
- Discussão: "Rendimentos de escala constantes E rendimentos marginais decrescentes — como é possível?" (5 min)
  - "Escala = todos os insumos crescem juntos. Marginal = só um insumo cresce."

### Bloco 3: Mini-Lecture — Funções de Produção Clássicas e Rendimentos (25 min)
**Slides 9-15 (Quarto/Reveal)**:
- Slide 9: Menu de funções de produção (análogo ao consumidor)
- Slide 10: Linear q = aL + bK — substitutos perfeitos, TMST constante, σ = ∞
- Slide 11: Leontief q = min{aL, bK} — complementares perfeitos, isoquantas em L, σ = 0
- Slide 12: Cobb-Douglas q = A·L^α·K^β — "rainha da produção"
  - α + β > 1: IRS; α + β = 1: CRS; α + β < 1: DRS
- Slide 13: CES q = A(αL^ρ + βK^ρ)^(1/ρ) — generaliza tudo, σ = 1/(1−ρ)
- Slide 14: Progresso técnico: A cresce ao longo do tempo (Solow) — "a Embrapa fez A crescer"
- Slide 15: Mapa visual: σ de 0 (Leontief) a ∞ (linear), passando por 1 (Cobb-Douglas)

### Fechamento (15 min)
- **Peer Instruction**: "Uma startup de software tem q = L². Isso é CRS, IRS ou DRS? O que isso implica sobre o tamanho da firma?" → voto → pares → IRS → "firmas com IRS tendem a crescer — oligopólio natural?"
- **Minute paper**: "Qual é a analogia entre consumidor e firma que mais ajudou?"
- **Preview**: "Próxima aula: lab — vocês vão manipular isoquantas e descobrir as propriedades de cada função"

---

## Pós-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 45 min
**Plataforma**: LMS
**Prazo**: Até 48h antes da Aula 14

### Atividade pós-aula
- [ ] **Exercícios Cap. 9** (5 exercícios):
  1. PMg, PMe, TMST para q = 10L^(0.5)K^(0.5)
  2. Classificar rendimentos de escala para 4 funções diferentes
  3. Provar que TMST é decrescente para Cobb-Douglas
  4. Calcular elasticidade de substituição para CES
  5. Curto prazo: dado K fixo, derivar e graficar PMg_L e PMe_L
- [ ] **Explorar gráficos interativos**: variar α e β em Cobb-Douglas e ver como isoquantas mudam
- [ ] **Leitura preparatória para Aula 14**: Cap. 9, Seções 9.5-9.7

---

## Materiais do Professor
- [ ] Slides Quarto/Reveal (15 slides)
- [ ] Gráficos interativos de isoquantas prontos
- [ ] Problema guiado projetado
- [ ] Ferramenta de polling (2 Peer Instruction)
