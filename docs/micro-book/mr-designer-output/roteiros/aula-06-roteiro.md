# Aula 06 — Resolução Colaborativa: Demanda e Dualidade
**Tipo**: P (Prática Ativa)
**Capítulo(s)**: Cap. 4 (Seções 4.4–4.6)
**Learning Outcomes desta aula**:
1. **Resolver** o problema dual (minimização de gasto) e derivar demanda Hicksiana
2. **Conectar** as funções Marshalliana, Hicksiana, gasto e utilidade indireta no "mapa da dualidade"
3. **Verificar** identidades de dualidade (Roy, Shephard) numericamente

---

## Pré-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 50 min
**Plataforma**: LMS + Livro digital interativo

### Leitura obrigatória
- Cap. 4, Seções 4.4–4.6 (problema dual, minimização de gasto, demanda Hicksiana, identidades de dualidade)
- Atenção especial ao diagrama de dualidade (se disponível no livro)

### Atividade pré-aula
- [ ] Ler sobre: identidade de Roy, lema de Shephard
- [ ] Tentar derivar a demanda Hicksiana para Cobb-Douglas (comparar com solução no livro)
- [ ] Responder Quiz Pré-Aula no LMS (prazo: 2h antes da aula)

### Quiz Pré-Aula (5 questões)
1. O problema dual do consumidor é: minimizar ___ sujeito a ___. (Bloom 1)
2. A demanda Hicksiana h(p_x, p_y, Ū) depende de quais variáveis? Em que difere da Marshalliana? (Bloom 2)
3. O que o lema de Shephard afirma? (Bloom 2)
4. V/F: "A demanda Hicksiana é sempre decrescente no próprio preço." (Bloom 2)
5. Se E(p_x, p_y, Ū) = 2·p_x^(1/3)·p_y^(2/3)·Ū, qual é h_x? (Bloom 3)

---

## Em Aula (100 min)

### Abertura (10 min)
- **Check-in**: Resultados do quiz + dúvidas sobre dualidade
- **Peer Instruction**: "A Marshalliana mede o efeito de uma mudança de preço mantendo ___ constante. A Hicksiana mantém ___ constante. Qual captura melhor o 'verdadeiro' efeito de substituição?"
  → voto → pares → revoto → "Essa distinção é o coração da aula de hoje e da próxima"

### Bloco 1: PBL — "Caso Consumidor Completo" (40 min)
**Estratégia ativa**: Problem-Based Learning em grupos
**Problema distribuído** (1 por grupo, 4-5 alunos):

> **Caso**: Um consumidor tem utilidade U(x,y) = x^(1/2) · y^(1/2).
> Preços: p_x = 4, p_y = 1. Renda: I = 200.
>
> **Missão do grupo** — Produzir o "Dossiê Completo do Consumidor":
> 1. Demandas Marshallianas: x*(p_x, p_y, I), y*(p_x, p_y, I)
> 2. Utilidade indireta: V(p_x, p_y, I)
> 3. Demandas Hicksianas: h_x(p_x, p_y, Ū), h_y(p_x, p_y, Ū)
> 4. Função gasto: E(p_x, p_y, Ū)
> 5. Verificar identidade de Roy: x* = −(∂V/∂p_x)/(∂V/∂I)
> 6. Verificar lema de Shephard: h_x = ∂E/∂p_x
> 7. Verificar: E(p_x, p_y, V(p_x, p_y, I)) = I
> 8. Gráfico: curvas de indiferença + restrição + ponto ótimo

**Dinâmica**:
- Grupos trabalham autonomamente (25 min)
- Professor circula, orientando grupos que travam
- Cada grupo preenche "Dossiê" em folha A3
- Apresentação: 2 grupos selecionados (5 min cada) mostram seus dossiês
- Professor consolida e fecha lacunas (5 min)

### Bloco 2: Peer Instruction — Interpretações (20 min)
**Estratégia ativa**: Peer Instruction (3 questões)

**Q1**: "O multiplicador λ* do problema primal e a derivada ∂E/∂Ū do dual são iguais?"
(a) Sim, sempre  (b) Não, nunca  (c) Sim, mas com sinais opostos  (d) Depende da função
→ voto → pares → revoto

**Q2**: "Se p_x sobe de 4 para 5, o gasto mínimo para manter Ū = 50 aumenta ou diminui? Por quanto (aproximadamente)?"
(a) Aumenta em ~h_x·Δp_x  (b) Diminui  (c) Não muda  (d) Impossível saber
→ voto → pares → revoto

**Q3**: "A Marshalliana e a Hicksiana se cruzam em exatamente um ponto. Qual?"
(a) No ponto de ótimo original  (b) No ponto de renda zero  (c) Nunca se cruzam  (d) Dependem de parâmetros
→ voto → pares → revoto

### Bloco 3: Desafio — "Complete o Mapa da Dualidade" (15 min)
**Estratégia ativa**: Construção colaborativa de diagrama
- Projetar diagrama parcialmente preenchido com 6 funções/conceitos:

```
     Primal                          Dual
  max U(x,y)                    min p·x + p·y
  s.a. p·x ≤ I                 s.a. U(x,y) ≥ Ū
       │                              │
       ▼                              ▼
  x*(p, I)  ──── Roy ────▶    V(p, I)
       │                              │
       │         Identidade           │
  h(p, Ū) ◀── Shephard ──── E(p, Ū)
```

- Turma preenche as setas, identidades e verificações
- Professor formaliza o diagrama completo

### Fechamento (15 min)
- **Minute paper**: "Qual identidade de dualidade fez mais sentido para você? Qual ainda confunde?"
- **Preview**: "Próxima aula: o que acontece quando o preço muda? Efeito renda e substituição — a pergunta mais importante da teoria do consumidor"
- **Tarefa pós-aula**: Problem set 2

---

## Pós-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 60 min
**Plataforma**: LMS
**Prazo**: Até 48h antes da Aula 07

### Atividade pós-aula
- [ ] **Problem set 2** — Escolha do consumidor e dualidade (7 exercícios):
  1. Maximizar utilidade para U = x^(2/3) · y^(1/3) — dossiê completo
  2. Maximizar para U = (x^0.5 + y^0.5)² (CES) — Marshallianas
  3. Minimizar gasto para U = x·y — Hicksianas e função gasto
  4. Verificar identidade de Roy para Cobb-Douglas genérica
  5. Verificar lema de Shephard para CES
  6. Solução de canto: U = 3x + y, p_x = 2, p_y = 1, I = 50
  7. **Desafio** (opcional): Provar que a Hicksiana é homogênea de grau 0 em preços
- [ ] **Reflexão**: "Qual é a vantagem prática de ter a função gasto E(p, Ū) em vez de só a Marshalliana?"
- [ ] **Leitura preparatória para Aula 07**: Cap. 5, Seções 5.1–5.4

---

## Materiais do Professor
- [ ] Folhas A3 para dossiê dos grupos
- [ ] Problema impresso (1 cópia por grupo)
- [ ] Diagrama de dualidade parcial para projetar
- [ ] Ferramenta de polling para 3 Peer Instruction
- [ ] Gabarito do dossiê para checagem rápida
