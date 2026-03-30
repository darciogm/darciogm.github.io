# Aula 05 — Escolha Ótima do Consumidor
**Tipo**: C (Conteúdo)
**Capítulo(s)**: Cap. 4 (Seções 4.1–4.3)
**Learning Outcomes desta aula**:
1. **Construir** o problema de maximização de utilidade sujeita à restrição orçamentária
2. **Derivar** a condição de tangência TMS = p_x/p_y e interpretá-la economicamente
3. **Resolver** o problema do consumidor para Cobb-Douglas, encontrando demandas Marshallianas

---

## Pré-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 50 min
**Plataforma**: LMS + Livro digital interativo

### Leitura obrigatória
- Cap. 4, Seções 4.1–4.3 (restrição orçamentária, problema do consumidor, condição de tangência)
- Explorar gráfico interativo: restrição orçamentária com slider de preço e renda

### Atividade pré-aula
- [ ] Explorar gráfico interativo: mover slider de renda e observar como o conjunto orçamentário expande/contrai
- [ ] Explorar gráfico interativo: mover slider de preço de x e observar como a inclinação muda
- [ ] Responder Quiz Pré-Aula no LMS (prazo: 2h antes da aula)

### Quiz Pré-Aula (5 questões)
1. Se I = 100, p_x = 5, p_y = 10, qual é a inclinação da restrição orçamentária? (Bloom 3)
2. No ótimo do consumidor, a TMS é igual a ___. (Bloom 1)
3. O que significa uma solução de canto? Dê um exemplo com bens reais. (Bloom 2)
4. Qual é o papel do multiplicador λ no problema do consumidor? (Bloom 2)
5. Se o preço de x dobra e a renda dobra, o que acontece com a restrição orçamentária? (Bloom 3)

---

## Em Aula (100 min)

### Abertura (10 min)
- **Hook**: "Quanto de Netflix (R$ 40/mês) e Spotify (R$ 20/mês) cabem num orçamento de R$ 100/mês para entretenimento digital? E se você pudesse fracionar? A matemática de hoje resolve isso."
- **Check-in**: Resultados do quiz — mostrar distribuição
- **Peer Instruction**: "João tem utilidade U = xy, renda I = 100 e preços p_x = p_y = 10. No ótimo, ele consome (5, 5) ou (10, 0) ou outra coisa?" → voto → pares → revoto

### Bloco 1: Mini-Lecture — O Problema do Consumidor (25 min)
**Slides 1-8 (Quarto/Reveal)**:
- Slide 1: "O consumidor quer o melhor que pode pagar" — max U(x,y) s.a. p_x·x + p_y·y ≤ I
- Slide 2: Restrição orçamentária — conjunto orçamentário, fronteira, inclinação = −p_x/p_y
- Slide 3: Gráfico: curvas de indiferença + restrição → tangência visual
- Slide 4: Condição de tangência: TMS = p_x/p_y ⟺ UMg_x/p_x = UMg_y/p_y
- Slide 5: Interpretação: "última unidade monetária rende o mesmo em ambos os bens"
- Slide 6: Lagrangiano formal: ℒ = U(x,y) + λ[I − p_x·x − p_y·y]
- Slide 7: CPOs → sistema de equações → demandas Marshallianas x*(p_x, p_y, I)
- Slide 8: Utilidade indireta V(p_x, p_y, I) = U(x*, y*) — "a máxima felicidade dado orçamento"

### Bloco 2: Exercício Guiado — Cobb-Douglas Passo-a-Passo (30 min)
**Estratégia ativa**: Problem solving guiado com participação
**Problema completo**:
> U(x,y) = x^(1/3) · y^(2/3), com p_x = 3, p_y = 6, I = 180.
> (a) Monte o Lagrangiano e derive as CPOs
> (b) Encontre x*, y*, λ*
> (c) Calcule V(3, 6, 180)
> (d) Interprete λ*: se I sobe para 181, quanto V aumenta?

**Dinâmica**:
- Professor faz (a) no quadro, alunos acompanham (5 min)
- Alunos fazem (b) individualmente (5 min) → comparar com colega (3 min)
- Professor resolve (b) e confere (5 min)
- Alunos fazem (c) e (d) em duplas (7 min)
- Professor fecha (c) e (d) com interpretação econômica (5 min)

**Resultado esperado**: x* = 20, y* = 20, λ* ≈ 0.037

**Insight Cobb-Douglas**: "Notem que a fração da renda gasta em x é sempre 1/3 e em y sempre 2/3 — isso é propriedade da Cobb-Douglas! Independe dos preços."

### Bloco 3: Mini-Lecture — Soluções de Canto e Casos Especiais (20 min)
**Slides 9-15 (Quarto/Reveal)**:
- Slide 9: Quando a tangência falha: soluções de canto
- Slide 10: Substitutos perfeitos: U = αx + βy → gasta tudo no "melhor custo-benefício"
  - Se α/p_x > β/p_y → x* = I/p_x, y* = 0
- Slide 11: Gráfico: reta de indiferença vs. reta orçamentária — canto!
- Slide 12: Complementares perfeitos: U = min{αx, βy} → consome na proporção αx = βy
  - x* = I/(p_x + p_y·α/β)
- Slide 13: Gráfico: curva em L tangencia no vértice
- Slide 14: Regra geral: "Se preferências não são estritamente convexas, cheque cantos"
- Slide 15: Mapa conceitual — problema do consumidor completo

### Fechamento (15 min)
- **Peer Instruction final**: "Ana tem utilidade U = x + 2y. Preços: p_x = 3, p_y = 4. Renda I = 120. O que ela compra?"
  → voto → pares → revoto → explicação (resposta: tudo em y, pois 2/4 > 1/3)
- **Preview**: "Próxima aula: vocês vão resolver o problema completo com dualidade — Hicksiana, função gasto, e todas as identidades"
- **Tarefa pós-aula**: Exercícios Cap. 4

---

## Pós-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 45 min
**Plataforma**: LMS
**Prazo**: Até 48h antes da Aula 06

### Atividade pós-aula
- [ ] **Exercícios Cap. 4** (5 exercícios selecionados):
  1. Maximizar utilidade Cobb-Douglas com valores numéricos diferentes
  2. Resolver para substitutos perfeitos (determinar canto)
  3. Resolver para complementares perfeitos
  4. Derivar demandas Marshallianas genéricas para U = x^a · y^b
  5. Calcular e interpretar utilidade indireta V(p_x, p_y, I)
- [ ] **Explorar gráfico interativo**: Mover preços e renda e observar como o ponto ótimo se desloca
- [ ] **Leitura preparatória para Aula 06**: Cap. 4, Seções 4.4–4.6 (dualidade, minimização de gasto, demanda Hicksiana)

---

## Materiais do Professor
- [ ] Slides Quarto/Reveal (15 slides)
- [ ] Ferramenta de polling para 2 Peer Instruction
- [ ] Gráfico interativo do livro pronto para projetar (restrição orçamentária + curvas de indiferença)
- [ ] Folha com problema guiado (para distribuir ou projetar)
