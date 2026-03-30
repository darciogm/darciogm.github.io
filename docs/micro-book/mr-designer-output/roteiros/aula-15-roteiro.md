# Aula 15 — Custos de Produção: Minimização e Curvas
**Tipo**: C (Conteúdo)
**Capítulo(s)**: Cap. 10 (Seções 10.1–10.5)
**Learning Outcomes desta aula**:
1. **Distinguir** custo econômico de contábil e explicar custo de oportunidade
2. **Resolver** o problema de minimização de custos via Lagrangiano, obtendo demandas condicionais de insumos
3. **Derivar** e interpretar as curvas de custo total, médio e marginal

---

## Pré-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 50 min
**Plataforma**: LMS + Livro digital interativo

### Leitura obrigatória
- Cap. 10, Seções 10.1-10.5 (custo econômico, isocusto, minimização, demandas condicionais, curvas de custo)
- Explorar gráfico interativo de isocustos + isoquantas

### Atividade pré-aula
- [ ] Explorar gráfico: mover w e v e observar como a isocusto rotaciona
- [ ] Responder Quiz Pré-Aula no LMS

### Quiz Pré-Aula (5 questões)
1. O custo econômico inclui ___, que o contábil não considera. (Bloom 1)
2. A isocusto C = wL + vK tem inclinação ___. (Bloom 1)
3. Na minimização de custos, a condição de tangência é TMST = ___. (Bloom 2)
4. As demandas condicionais L^c(w, v, q) dependem de q mas NÃO de ___. (Bloom 2)
5. V/F: "O custo marginal pode ser calculado como a derivada da função custo total em relação a q." (Bloom 2)

---

## Em Aula (100 min)

### Abertura (10 min)
- **Hook**: "A Amazon gasta bilhões em robôs de armazém. Substituir trabalhadores por máquinas SEMPRE reduz custo? Depende de w/v — a razão de preços dos insumos. Hoje formalizamos isso."
- **Check-in**: Quiz + dúvidas
- **Peer Instruction**: "Uma firma usa L = 10, K = 5 para produzir 100 unidades. Se w dobra e v cai pela metade, ela produz 100 com os mesmos insumos?" → voto → "Não! Ela reotimiza — substitui L por K"

### Bloco 1: Mini-Lecture — Custos Econômicos e Minimização (25 min)
**Slides 1-8 (Quarto/Reveal)**:
- Slide 1: Custo contábil = despesas registradas. Custo econômico = contábil + oportunidade
- Slide 2: "O salário do dono que não se paga é custo de oportunidade. O aluguel do prédio próprio também."
- Slide 3: Custos irrecuperáveis (sunk costs): "Já gastou? Não entra na decisão. Ignore."
- Slide 4: Problema de minimização: min wL + vK s.a. f(L,K) = q̄
- Slide 5: Isocusto: C = wL + vK → K = C/v − (w/v)L — inclinação = −w/v
- Slide 6: Tangência: TMST = w/v ⟺ PMg_L/w = PMg_K/v — "último real rende igual em ambos os insumos"
- Slide 7: Lagrangiano: ℒ = wL + vK + μ[q̄ − f(L,K)]
- Slide 8: Resultado: demandas condicionais L^c(w,v,q) e K^c(w,v,q), função custo C(w,v,q)

### Bloco 2: Exercício Guiado — Cobb-Douglas Completo (30 min)
**Estratégia ativa**: Problem solving guiado

**Problema**:
> q = L^(1/2)·K^(1/2), w = 4, v = 1.
> (a) Monte o Lagrangiano e derive as CPOs
> (b) Encontre L^c(w,v,q), K^c(w,v,q)
> (c) Derive C(w,v,q)
> (d) Calcule CMe(q) e CMg(q)
> (e) Para q = 100: L^c = ?, K^c = ?, C = ?
> (f) Verifique lema de Shephard: ∂C/∂w = L^c

**Dinâmica**:
- (a)-(b): Professor no quadro (10 min)
  - TMST = K/L = w/v = 4 → K = 4L; substituir: q = L·2 → L^c = q/2, K^c = 2q
- (c)-(d): Alunos em duplas (10 min) → conferir
  - C = 4(q/2) + 1(2q) = 4q → CMe = 4, CMg = 4 → "CRS → custos médios constantes!"
- (e)-(f): Alunos verificam (5 min)
- Discussão (5 min): "O que acontece com C(q) se α + β ≠ 1? Vamos ver..."
  - IRS → CMe decrescente; DRS → CMe crescente

### Bloco 3: Mini-Lecture — Curvas de Custo e CP vs. LP (20 min)
**Slides 9-15 (Quarto/Reveal)**:
- Slide 9: Curto prazo: K = K̄ fixo → CT_CP = wL(q, K̄) + vK̄ = CV(q) + CF
- Slide 10: Custo fixo (CF), variável (CV), total (CT) — gráfico
- Slide 11: CMe_CP = CT/q, CVMe = CV/q, CMg_CP = dCT/dq
- Slide 12: Relação CMg-CMe: "CMg corta CMe no mínimo" — mesma lógica de PMg-PMe
- Slide 13: Longo prazo: todos os insumos variáveis → C_LP(q) = min_{K} C_CP(q, K)
- Slide 14: Curva envelope: C_LP é o mínimo das C_CP para cada K̄
  - CMe_LP tangencia cada CMe_CP "por baixo"
- Slide 15: Formato em U do CMe_LP: economias de escala (esquerda) → deseconomias (direita)

### Fechamento (15 min)
- **Peer Instruction**: "Se CMg < CMe, o CMe está subindo ou descendo?" → voto → pares
- **Minute paper**: "A analogia consumidor ↔ firma ficou mais clara com custos?"
- **Preview**: "Próxima aula: vocês vão construir as curvas de custo de CP para diferentes tamanhos de planta e DESCOBRIR o envelope"

---

## Pós-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 50 min
**Plataforma**: LMS
**Prazo**: Até 48h antes da Aula 16

### Atividade pós-aula
- [ ] **Exercícios Cap. 10** (5 exercícios):
  1. Minimizar custos para q = L^(1/3)K^(2/3) genérica → C(w,v,q)
  2. Minimizar para Leontief: q = min{2L, K} — sem tangência!
  3. Derivar CMe, CMg para C(q) = q³ − 6q² + 15q + 10
  4. Encontrar ponto de mínimo do CMe e verificar que CMg = CMe ali
  5. Verificar lema de Shephard para o problema 1
- [ ] **Explorar gráfico interativo**: como CMe e CMg mudam com parâmetros
- [ ] **Leitura preparatória para Aula 16**: Cap. 10, Seções 10.6-10.8 (CP vs. LP, envelope)

---

## Materiais do Professor
- [ ] Slides Quarto/Reveal (15 slides)
- [ ] Problema guiado projetado
- [ ] Gráficos interativos (isocusto/isoquanta, curvas de custo)
- [ ] Ferramenta de polling (2 Peer Instruction)
