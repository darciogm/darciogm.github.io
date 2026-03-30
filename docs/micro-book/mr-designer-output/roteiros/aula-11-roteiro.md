# Aula 11 — Escolha sob Incerteza e Utilidade Esperada
**Tipo**: C (Conteúdo)
**Capítulo(s)**: Cap. 7 (Seções 7.1–7.4)
**Learning Outcomes desta aula**:
1. **Definir** loteria, valor esperado e utilidade esperada (Von Neumann-Morgenstern)
2. **Classificar** atitudes frente ao risco (aversão, neutralidade, propensão) pela concavidade da utilidade
3. **Calcular** equivalente certo, prêmio de risco e preço máximo de seguro

---

## Pré-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 50 min
**Plataforma**: LMS + Livro digital interativo

### Leitura obrigatória
- Cap. 7, Seções 7.1–7.4 (loterias, paradoxo de São Petersburgo, axiomas VNM, utilidade esperada, aversão ao risco)
- Explorar gráficos interativos de utilidade esperada e prêmio de risco

### Atividade pré-aula
- [ ] Explorar gráfico interativo: mover probabilidades e observar como UE muda
- [ ] Responder Quiz Pré-Aula no LMS

### Quiz Pré-Aula (5 questões)
1. O valor esperado de uma loteria que paga R$ 100 com prob. 0.6 e R$ 0 com prob. 0.4 é ___. (Bloom 1)
2. O paradoxo de São Petersburgo mostra que as pessoas não maximizam ___. (Bloom 2)
3. Se a função utilidade é côncava, o agente é ___. (Bloom 2)
4. O equivalente certo é o valor ___ que dá a mesma utilidade que a loteria. (Bloom 1)
5. Prêmio de risco = E(X) − EC. Se PR > 0, o agente é ___. (Bloom 2)

---

## Em Aula (100 min)

### Abertura (10 min)
- **Hook**: "Você aceita esta aposta: cara ganha R$ 1.200, coroa perde R$ 1.000? O valor esperado é +R$ 100. A maioria de vocês vai recusar. Por quê? Hoje explico."
- **Enquete ao vivo** (Mentimeter): "Aceita a aposta?" → mostrar resultado → "A porcentagem que recusou é proporcional à aversão ao risco da turma"
- **Check-in**: Resultados do quiz

### Bloco 1: Mini-Lecture — De Loterias à Utilidade Esperada (25 min)
**Slides 1-8 (Quarto/Reveal)**:
- Slide 1: Incerteza está em toda parte: emprego, investimento, saúde, clima
- Slide 2: Loteria L = {(x₁, π₁), (x₂, π₂), ...} — estados da natureza e probabilidades
- Slide 3: Valor esperado E(L) = Σ πᵢxᵢ — "a média ponderada dos resultados"
- Slide 4: Paradoxo de São Petersburgo: E(L) = ∞ mas ninguém paga ∞ para jogar. Logo, VE ≠ decisão
- Slide 5: Solução de Bernoulli: maximizar E[U(x)], não E(x)
- Slide 6: Axiomas VNM: completude, transitividade, continuidade, independência → existe U
- Slide 7: Utilidade esperada: UE = Σ πᵢ·U(xᵢ)
- Slide 8: "A utilidade esperada NÃO é U(E(x)) — essa diferença é tudo"

### Bloco 2: Mini-Lecture — Aversão ao Risco (20 min)
**Slides 9-15 (Quarto/Reveal)**:
- Slide 9: Três atitudes — gráfico lado a lado:
  - Avesso (U côncava): UE < U(E(x)) — prefere o certo
  - Neutro (U linear): UE = U(E(x)) — indiferente
  - Propenso (U convexa): UE > U(E(x)) — prefere a loteria
- Slide 10: Desigualdade de Jensen: se U côncava, E[U(x)] ≤ U[E(x)]
- Slide 11: Equivalente certo (EC): U(EC) = UE → EC é o "valor certo que aceito"
- Slide 12: Prêmio de risco: PR = E(X) − EC → "quanto pago para eliminar o risco"
- Slide 13: Medidas: coeficiente de aversão absoluta r(x) = −U''(x)/U'(x) (Arrow-Pratt)
- Slide 14: Exemplo numérico: U(x) = √x, loteria {400, 0.5; 0, 0.5}
  - E(X) = 200, UE = 0.5·20 + 0.5·0 = 10, EC: √EC = 10 → EC = 100, PR = 100
- Slide 15: "O prêmio de risco é R$ 100 — esse consumidor pagaria até R$ 100 por um seguro completo"

### Bloco 3: Exercício Guiado — Seguros (25 min)
**Estratégia ativa**: Problem solving guiado

**Problema**:
> Maria tem renda W = 1.000. Com prob. 0.2, sofre perda de 600.
> Utilidade: U(x) = ln(x).
> (a) Calcule UE sem seguro
> (b) Calcule EC e PR
> (c) Uma seguradora oferece cobertura total por prêmio p. Qual o máximo que Maria paga?
> (d) A seguradora cobra prêmio atuarialmente justo = 0.2 × 600 = 120. Maria compra?
> (e) O seguro gera excedente para quem?

**Dinâmica**:
- Professor faz (a): UE = 0.8·ln(1000) + 0.2·ln(400) ≈ 6.73 (5 min)
- Alunos fazem (b) em duplas: EC = e^6.73 ≈ 838, PR = 162 (5 min)
- Professor fecha (c): paga até PR = 162 (3 min)
- Alunos fazem (d)-(e) em duplas (7 min): Sim, pois 120 < 162. Excedente = 162 − 120 = 42 para Maria
- Discussão: "E se a seguradora não sabe se Maria é alto ou baixo risco?" → teaser para info assimétrica (5 min)

### Fechamento (10 min)
- **Peer Instruction**: "João tem U(x) = x² (propenso ao risco). Ele compraria seguro atuarialmente justo?"
  → voto → pares → revoto → "Não! Propenso ao risco PAGA para jogar, não para se proteger"
- **Minute paper**: "Qual foi o insight mais surpreendente sobre incerteza?"
- **Preview**: "Próxima aula: vocês vão jogar loterias reais (fictícias), desenhar seguros e debater se somos racionais"

---

## Pós-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 45 min
**Plataforma**: LMS
**Prazo**: Até 48h antes da Aula 12

### Atividade pós-aula
- [ ] **Exercícios Cap. 7** (5 exercícios):
  1. Calcular UE, EC e PR para U(x) = √x com loteria dada
  2. Determinar atitude frente ao risco para U(x) = x^2, U(x) = ln(x), U(x) = 3x
  3. Preço máximo de seguro para agricultor com risco de seca
  4. Calcular coeficiente de Arrow-Pratt para CRRA: U(x) = x^(1-γ)/(1-γ)
  5. Comparar seguro parcial vs. total: quando seguro parcial é ótimo?
- [ ] **Explorar** gráfico interativo: variar concavidade de U e observar como PR muda
- [ ] **Leitura preparatória para Aula 12**: Cap. 7, Seções 7.5-7.7 (diversificação, Allais, estado-preferência)

---

## Materiais do Professor
- [ ] Slides Quarto/Reveal (15 slides)
- [ ] Ferramenta de polling (Mentimeter) com enquete de aposta inicial + 1 Peer Instruction
- [ ] Gráficos interativos do livro (utilidade esperada, prêmio de risco)
- [ ] Problema guiado projetado/impresso
- [ ] Moeda para demonstração de aposta (prop físico)
