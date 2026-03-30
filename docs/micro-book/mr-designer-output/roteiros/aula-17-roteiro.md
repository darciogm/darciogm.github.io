# Aula 17 — Maximização de Lucro e Oferta da Firma
**Tipo**: C (Conteúdo)
**Capítulo(s)**: Cap. 11 (Seções 11.1–11.5)
**Learning Outcomes desta aula**:
1. **Derivar** a condição P = CMg para firma competitiva e interpretar 1ª e 2ª ordem
2. **Determinar** a curva de oferta individual como CMg acima do CVMe mínimo
3. **Aplicar** a decisão de shutdown: produzir vs. fechar no curto prazo

---

## Pré-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 50 min
**Plataforma**: LMS + Livro digital interativo

### Leitura obrigatória
- Cap. 11, Seções 11.1-11.5 (lucro, receita, maximização, condições de ótimo, oferta)
- Explorar gráficos interativos de maximização de lucro

### Atividade pré-aula
- [ ] Explorar gráfico interativo: mover preço e observar decisão ótima da firma
- [ ] Responder Quiz Pré-Aula no LMS

### Quiz Pré-Aula (5 questões)
1. Lucro = ___ − ___. (Bloom 1)
2. Para firma competitiva (price-taker), RMg = ___. (Bloom 1)
3. A condição de 1ª ordem para max lucro é ___. (Bloom 2)
4. Se P < CVMe_mín, a firma deve ___ no curto prazo. (Bloom 2)
5. A curva de oferta da firma é o trecho do CMg acima de ___. (Bloom 2)

---

## Em Aula (100 min)

### Abertura (10 min)
- **Hook**: "Uma padaria vende pão a R$ 1 a unidade. Se o trigo sobe 50%, ela fecha as portas ou aumenta o preço? Resposta: ela é price-taker, então NÃO pode aumentar o preço. O que faz então? A resposta está na relação entre P e custos."
- **Check-in**: Quiz
- **Peer Instruction**: "Se CMg(10) = 5 e P = 8, a firma deve produzir mais ou menos que 10 unidades?" → voto → pares → "Mais! Cada unidade adicional dá lucro de P − CMg > 0"

### Bloco 1: Mini-Lecture — Lucro, Receita e a Condição de Ótimo (25 min)
**Slides 1-8 (Quarto/Reveal)**:
- Slide 1: Firma competitiva: P é dado pelo mercado, firma escolhe q
- Slide 2: Lucro: π(q) = P·q − C(q) = RT(q) − CT(q)
- Slide 3: CPO: dπ/dq = P − CMg(q) = 0 → **P = CMg**
- Slide 4: CSO: d²π/dq² = −dCMg/dq < 0 → CMg deve ser crescente no ótimo
- Slide 5: Gráfico: interseção P = CMg no trecho crescente do CMg
- Slide 6: Lucro como área: π = (P − CMe)·q → retângulo no gráfico
- Slide 7: Excedente do produtor = ∫₀^q* [P − CMg(q)]dq = RT − CV
- Slide 8: Lema de Hotelling: q*(p) = ∂π*/∂p — oferta como derivada da função lucro

### Bloco 2: Exercício Guiado — Da Função Custo à Oferta (25 min)
**Estratégia ativa**: Problem solving guiado

**Problema**:
> C(q) = q³ − 6q² + 15q + 10 (CF = 10)
> (a) Derive CMg(q), CMe(q), CVMe(q)
> (b) Encontre o mínimo do CVMe
> (c) Para P = 12, encontre q* (usando P = CMg)
> (d) Calcule lucro π*
> (e) Qual é o preço de shutdown?

**Dinâmica**:
- (a): Professor (5 min) → CMg = 3q² − 12q + 15, CVMe = q² − 6q + 15
- (b): Alunos (5 min) → dCVMe/dq = 2q − 6 = 0 → q = 3, CVMe_mín = 6
- (c): Alunos em duplas (7 min) → 3q² − 12q + 15 = 12 → q² − 4q + 1 = 0 → q* ≈ 3.73
- (d)-(e): Duplas calculam (5 min) → Professor fecha → "Se P < 6, a firma fecha no CP"
- Visual: Graficar CMg, CMe, CVMe no quadro com P = 12 e sombrear lucro (3 min)

### Bloco 3: Mini-Lecture — Shutdown, Oferta e Excedente (25 min)
**Slides 9-15 (Quarto/Reveal)**:
- Slide 9: Decisão de CP — fluxograma:
  - Se P > CMe_mín → produz com lucro positivo
  - Se CVMe_mín < P < CMe_mín → produz com prejuízo (menor que CF)
  - Se P < CVMe_mín → SHUTDOWN (perde apenas CF)
- Slide 10: "Por que produzir com prejuízo?" → porque fechar perde CF inteiro, mas produzir cobre parte
- Slide 11: Curva de oferta = CMg(q) para P ≥ CVMe_mín; q = 0 para P < CVMe_mín
- Slide 12: Curva de oferta tem descontinuidade no ponto de shutdown
- Slide 13: LP: P > CMe_mín → lucro ≥ 0 → firma fica. P < CMe_mín → firma SAI do mercado
- Slide 14: Excedente do produtor vs. lucro: EP = π + CF. No LP, EP = π (CF = 0)
- Slide 15: Resumo visual: "A oferta da firma conta tudo — custos, tecnologia, decisão de entrada"

### Fechamento (15 min)
- **Peer Instruction**: "Uma firma tem CF = 100 e está com prejuízo de 80. Ela deve fechar?" → voto → pares → "NÃO! Se fechar, perde 100. Produzindo, perde só 80."
- **Minute paper**: "O conceito de sunk cost conecta com a decisão de shutdown?"
- **Preview**: "Próxima aula: simulação — cada um será uma firma no mercado, decidindo se produz, quanto, e se sobrevive"

---

## Pós-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 45 min
**Plataforma**: LMS
**Prazo**: Até 48h antes da Aula 18

### Atividade pós-aula
- [ ] **Exercícios Cap. 11** (5 exercícios):
  1. Derivar oferta para C(q) = 2q² + 10q + 50
  2. Encontrar preço de shutdown para 3 funções custo diferentes
  3. Calcular lucro e excedente do produtor para P dado
  4. Verificar lema de Hotelling: π*(P) e dπ*/dP = q*
  5. LP: Se todas as firmas têm mesma tecnologia CRS, qual é o lucro de LP?
- [ ] **Reflexão**: "Se lucro de LP = 0 é inevitável em concorrência perfeita, por que alguém abre uma empresa?"
- [ ] **Leitura preparatória para Aula 18**: Cap. 11, seções sobre natureza da firma + Cap. 12 preview

---

## Materiais do Professor
- [ ] Slides Quarto/Reveal (15 slides)
- [ ] Problema guiado projetado/impresso
- [ ] Gráfico interativo de maximização de lucro
- [ ] Ferramenta de polling (2 Peer Instruction)
