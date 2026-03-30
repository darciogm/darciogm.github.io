# Aula 02 — Oficina: Otimização e Lagrangiano
**Tipo**: P (Prática Ativa)
**Capítulo(s)**: Cap. 2 (Seções 2.5–2.7)
**Learning Outcomes desta aula**:
1. **Aplicar** o teorema do envelope para avaliar impacto de mudanças paramétricas
2. **Resolver** problemas de otimização restrita com diferentes estruturas funcionais
3. **Avaliar** a própria fluência em técnicas de otimização via exercícios cronometrados

---

## Pré-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 40 min
**Plataforma**: LMS + Livro digital interativo

### Leitura obrigatória
- Cap. 2, Seções 2.5–2.7 (teorema do envelope, elasticidade, homogeneidade)
- Rever soluções do Problem Set 0

### Atividade pré-aula
- [ ] Identificar 2 dúvidas sobre o PS0 para discutir em aula
- [ ] Responder Quiz Pré-Aula no LMS (prazo: 2h antes da aula)

### Quiz Pré-Aula (5 questões)
1. O que o teorema do envelope afirma sobre o valor ótimo de uma função? (Bloom 2)
2. Se f(tx, ty) = t²f(x,y), qual é o grau de homogeneidade de f? (Bloom 1)
3. Qual a elasticidade-preço da demanda se Q = 100/P? (Bloom 3)
4. V/F: "No ótimo, o efeito de uma mudança no parâmetro sobre o valor da função objetivo pode ser calculado sem re-resolver o problema." (Bloom 2)
5. O teorema de Euler relaciona homogeneidade com _____. (Bloom 1)

---

## Em Aula (100 min)

### Abertura (10 min)
- **Check-in**: Resultados do quiz + 2-3 dúvidas mais comuns do PS0
- **Regras do jogo**: "Hoje é dia de prática. Vamos trabalhar em duplas, resolver problemas e competir. Quem resolver corretamente mais rápido ganha pontos no ranking."

### Bloco 1: Think-Pair-Share — Problemas do PS0 (20 min)
**Estratégia ativa**: Think-Pair-Share
- Projetar 2 problemas do PS0 que tiveram mais erros
- **Think** (3 min): cada aluno tenta resolver individualmente
- **Pair** (5 min): discutir com colega — comparar abordagens
- **Share** (7 min): 2-3 duplas apresentam soluções no quadro
- Professor fecha lacunas (5 min)

### Bloco 2: Gallery Walk — 4 Estações de Otimização (35 min)
**Estratégia ativa**: Gallery Walk
**Montagem**: 4 estações em cantos da sala, cada uma com 1 problema diferente

**Estação 1**: Lagrangiano com Cobb-Douglas
> Max U = x^a · y^(1-a) s.a. p_x·x + p_y·y = I. Derive x*(p_x, p_y, I) e y*(p_x, p_y, I).

**Estação 2**: Lagrangiano com quase-linear
> Max U = ln(x) + y s.a. p_x·x + y = I. Encontre x*, y*, V(p_x, I).

**Estação 3**: Minimização de custos
> Min C = wL + rK s.a. L^(1/3) · K^(2/3) = q̄. Encontre L*, K*, C(w,r,q̄).

**Estação 4**: Teorema do envelope
> Dado V(p_x, I) do Estação 1, verifique que ∂V/∂I = λ* sem re-resolver o problema.

**Dinâmica**:
- Grupos de 4-5 alunos, 8 min por estação
- Cada grupo resolve e afixa solução na estação
- Rotação: grupos circulam e comentam (post-its) soluções de outros grupos
- "Erro mais criativo" ganha menção honrosa

### Bloco 3: Desafio Cronometrado (20 min)
**Estratégia ativa**: Gamificação
**Regras**:
- 3 problemas de Lagrangiano, dificuldade crescente
- Cada problema: 5 min para resolver (cronômetro projetado)
- Duplas entregam folha ao final de cada rodada
- Pontuação: correto + rápido = mais pontos
- Ranking projetado ao vivo

**Problema 1** (5 min): Cobb-Douglas simétrica, valores numéricos
**Problema 2** (5 min): Função CES, requer manipulação algébrica
**Problema 3** (5 min): Dois bens + restrição não-linear — requer criatividade

### Fechamento (15 min)
- **Ranking final** do desafio cronometrado — aplausos para top 3
- **Debrief**: "Quais erros mais comuns apareceram? O que eles revelam?"
- **Minute paper**: "Lagrangiano: o que ainda me trava?"
- **Preview**: "Próxima aula: por que você compra o que compra? Teoria das preferências — leitura do Cap. 3"

---

## Pós-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 40 min
**Plataforma**: LMS
**Prazo**: Até 48h antes da Aula 03

### Atividade pós-aula
- [ ] **Autoavaliação**: "Consigo montar e resolver um Lagrangiano em menos de 10 minutos? Se não, o que me trava?"
- [ ] **Revisão**: Refazer os problemas que errou no desafio cronometrado
- [ ] **Leitura preparatória para Aula 03**: Cap. 3, Seções 3.1–3.3 (axiomas de preferência, curvas de indiferença, TMS)
- [ ] **Explorar**: Gráficos interativos de curvas de indiferença no Cap. 3

---

## Materiais do Professor
- [ ] 4 folhas de problema (uma por estação) — imprimir em A3
- [ ] Post-its para Gallery Walk (4 cores, uma por grupo)
- [ ] Cronômetro projetável para desafio
- [ ] Planilha de ranking (pré-montada)
- [ ] Soluções gabarito para debrief
