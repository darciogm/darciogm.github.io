# Aula 23 — Oligopólio: Cournot, Bertrand, Stackelberg
**Tipo**: C (Conteúdo)
**Capítulo(s)**: Cap. 15 (Seções 15.1–15.5)
**Learning Outcomes desta aula**:
1. **Derivar** o equilíbrio de Nash em Cournot (competição em quantidades) para duopólio
2. **Comparar** os resultados de Bertrand, Cournot e Stackelberg em termos de preço, quantidade e lucro
3. **Explicar** o paradoxo de Bertrand e suas resoluções

---

## Pré-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 50 min
**Plataforma**: LMS + Livro digital interativo

### Leitura obrigatória
- Cap. 15, Seções 15.1-15.5 (oligopólio, Bertrand, Cournot, funções de reação, Stackelberg)
- Explorar gráficos interativos de funções de melhor resposta

### Atividade pré-aula
- [ ] Explorar gráfico interativo: mover q₁ e ver q₂* (best response)
- [ ] Ler Box Brasil sobre oligopólio bancário ou companhias aéreas (se disponível)
- [ ] Responder Quiz Pré-Aula no LMS

### Quiz Pré-Aula (5 questões)
1. No oligopólio, cada firma reconhece que suas decisões afetam ___. (Bloom 1)
2. No modelo de Bertrand, as firmas competem em ___. No Cournot, em ___. (Bloom 1)
3. O paradoxo de Bertrand é que com apenas 2 firmas, o resultado é ___. (Bloom 2)
4. A função de melhor resposta (best response) de Cournot: q₁* = f(q₂). O que ela mostra? (Bloom 2)
5. No Stackelberg, quem tem vantagem: o líder ou o seguidor? (Bloom 2)

---

## Em Aula (100 min)

### Abertura (10 min)
- **Hook**: "Gol e Azul — por que às vezes os preços de passagem SP-RJ são praticamente iguais, e às vezes é guerra de preços? A resposta depende de como elas competem: em preços (Bertrand) ou em capacidade/frequência (Cournot)."
- **Check-in**: Quiz
- **Peer Instruction**: "Dois postos de gasolina na mesma esquina. Se um cobra R$ 5,80, o outro cobra..." → voto → "R$ 5,79! Bertrand em ação — guerra de preços até P = CMg"

### Bloco 1: Mini-Lecture — Bertrand e o Paradoxo (15 min)
**Slides 1-5 (Quarto/Reveal)**:
- Slide 1: Oligopólio: poucos vendedores, interdependência estratégica
- Slide 2: Bertrand: firmas escolhem PREÇO simultaneamente, produtos homogêneos
- Slide 3: Lógica: se P₁ > P₂, firma 1 perde tudo. Se P₁ = P₂, dividem. Se P₁ < P₂, firma 1 leva tudo
- Slide 4: Equilíbrio de Nash: P₁* = P₂* = CMg → lucro = 0! Com apenas 2 firmas!
- Slide 5: Paradoxo: "2 firmas são suficientes para resultado competitivo?"
  - Resoluções: diferenciação de produto, restrição de capacidade, jogos repetidos

### Bloco 2: Mini-Lecture — Cournot e Funções de Reação (25 min)
**Slides 6-12 (Quarto/Reveal)**:
- Slide 6: Cournot: firmas escolhem QUANTIDADE simultaneamente
- Slide 7: Demanda inversa: P = a − b(q₁ + q₂). Firma 1 maximiza:
  - π₁ = [a − b(q₁ + q₂)]q₁ − C(q₁)
- Slide 8: CPO: ∂π₁/∂q₁ = 0 → função de melhor resposta q₁*(q₂)
- Slide 9: Para demanda linear e CMg constante c:
  - q₁*(q₂) = (a − c)/(2b) − q₂/2
  - "Cada unidade a mais do rival me faz produzir 0.5 a menos"
- Slide 10: Equilíbrio de Nash: interseção das 2 best responses
  - q₁* = q₂* = (a − c)/(3b); Q_C = 2(a − c)/(3b); P_C = (a + 2c)/3
- Slide 11: Comparação: Q_M < Q_C < Q_CP; P_M > P_C > P_CP
  - "Cournot: entre monopólio e competição perfeita"
- Slide 12: Gráfico: funções de reação se cruzam → equilíbrio de Cournot-Nash

### Bloco 3: Exercício Guiado + Stackelberg (30 min)
**Estratégia ativa**: Problem solving guiado + mini-lecture

**Problema Cournot** (15 min):
> Demanda: P = 100 − (q₁ + q₂). CMg₁ = CMg₂ = 10 (duopólio simétrico).
> (a) Derive funções de melhor resposta
> (b) Encontre equilíbrio de Cournot (q₁*, q₂*, P*, π₁*, π₂*)
> (c) Compare com monopólio e competição perfeita

**Dinâmica**:
- Professor faz (a): q₁* = 45 − q₂/2 (5 min)
- Alunos fazem (b) em duplas: q₁* = q₂* = 30, P* = 40, π* = 900 cada (5 min)
- Professor fecha (c): Q_M = 45, P_M = 55; Q_CP = 90, P_CP = 10 (5 min)

**Mini-Lecture Stackelberg** — Slides 13-15 (15 min):
- Slide 13: Stackelberg: jogo sequencial — líder escolhe primeiro, seguidor observa e responde
- Slide 14: Indução retroativa: líder maximiza sabendo que seguidor vai jogar best response
  - Líder: max π₁ = [a − b(q₁ + q₂*(q₁))]q₁ − cq₁ → substitui q₂*(q₁)
- Slide 15: Resultado: líder produz mais que Cournot, seguidor menos. Líder lucra mais.
  - Com os dados: q_L = 45, q_S = 22.5, Q = 67.5, P = 32.5
  - "First-mover advantage!"

**Tabela comparativa** no quadro:
| Modelo | Q total | P | π₁ | π₂ |
|--------|---------|---|-----|-----|
| Monopólio | 45 | 55 | 2025 | — |
| Cournot | 60 | 40 | 900 | 900 |
| Stackelberg | 67.5 | 32.5 | 1012 | 506 |
| Bertrand | 90 | 10 | 0 | 0 |
| Competição | 90 | 10 | 0 | 0 |

### Fechamento (15 min)
- **Peer Instruction**: "3 firmas Cournot com custos iguais. Cada uma produz ___ do que no duopólio." → voto → "Menos! Com N firmas: qᵢ = (a−c)/((N+1)b). Quando N → ∞, converge para CP"
- **Minute paper**: "Qual modelo descreve melhor o mercado de aviação brasileiro: Cournot ou Bertrand?"
- **Preview**: "ÚLTIMA AULA! Torneio de oligopólio — vocês vão competir como firmas por 10 rodadas. Preparem estratégia!"

---

## Pós-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 50 min
**Plataforma**: LMS
**Prazo**: Até 48h antes da Aula 24

### Atividade pós-aula
- [ ] **Exercícios Cap. 15** (6 exercícios):
  1. Duopólio Cournot assimétrico (custos diferentes) — equilíbrio e comparar lucros
  2. Bertrand com diferenciação: P₁ = a − bq₁ + dq₂ → equilíbrio
  3. Stackelberg: resolver com funções lineares
  4. Cournot com N firmas: derivar qᵢ*, Q*, P* como função de N
  5. Colusão: se as 2 firmas cooperam (cartel), qual é Q e P? Compare com Cournot
  6. **Desafio**: "Trigger strategy" — quando a colusão é sustentável em jogo repetido?
- [ ] **Preparar estratégia** para o Torneio de Oligopólio da Aula 24
- [ ] **Leitura preparatória**: Cap. 15, seções sobre jogos repetidos e concorrência monopolística

---

## Materiais do Professor
- [ ] Slides Quarto/Reveal (15 slides)
- [ ] Problema guiado projetado
- [ ] Gráficos interativos de best response
- [ ] Tabela comparativa para quadro
- [ ] Ferramenta de polling (2 Peer Instruction)
