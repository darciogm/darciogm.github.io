# Aula 12 — Jogo de Loterias + Desenho de Seguro
**Tipo**: P (Prática Ativa)
**Capítulo(s)**: Cap. 7 (Seções 7.5–7.7)
**Learning Outcomes desta aula**:
1. **Revelar** a própria aversão ao risco através de escolhas sequenciais em loterias experimentais
2. **Projetar** um contrato de seguro viável dados riscos, probabilidades e custos
3. **Avaliar** criticamente os axiomas VNM à luz do paradoxo de Allais

---

## Pré-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 40 min
**Plataforma**: LMS + Livro digital interativo

### Leitura obrigatória
- Cap. 7, Seções 7.5-7.7 (diversificação, paradoxo de Allais, abordagem estado-preferência)

### Atividade pré-aula
- [ ] Ler sobre o paradoxo de Allais e tentar responder: "Você violaria o axioma de independência?"
- [ ] Responder Quiz Pré-Aula no LMS

### Quiz Pré-Aula (5 questões)
1. Diversificação reduz risco porque ___. (Bloom 2)
2. No paradoxo de Allais, qual axioma VNM é violado? (Bloom 1)
3. Na abordagem estado-preferência, o que é um "consumo contingente"? (Bloom 2)
4. V/F: "Comprar seguro e comprar bilhete de loteria ao mesmo tempo é irracional no modelo VNM." (Bloom 3)
5. O que a prospect theory de Kahneman sugere como alternativa à VNM? (Bloom 2)

---

## Em Aula (100 min)

### Abertura (5 min)
- **Regras do dia**: "Hoje é dia de revelar quem vocês realmente são: avessos, neutros ou propensos ao risco. E no final, vocês vão se tornar seguradores."

### Bloco 1: Simulação — "Revelando Sua Aversão ao Risco" (30 min)
**Estratégia ativa**: Simulação experimental

**Setup**: Cada aluno recebe "dotação" de 1.000 pontos (= nota da atividade × fator)

**Rodada 1-5** (2 min cada):
Cada rodada apresenta uma escolha binária via Mentimeter:

| Rodada | Opção A (segura) | Opção B (arriscada) | E(B) |
|--------|-----------------|-------------------|------|
| 1 | +100 pontos certo | +300 com prob 0.5, +0 com prob 0.5 | 150 |
| 2 | +200 certo | +600 com prob 0.4, +0 com prob 0.6 | 240 |
| 3 | +50 certo | +400 com prob 0.15, +0 com prob 0.85 | 60 |
| 4 | +150 certo | +200 com prob 0.9, −100 com prob 0.1 | 170 |
| 5 | +0 certo | +1000 com prob 0.01, −10 com prob 0.99 | 0.1 |

**Após 5 rodadas** (10 min):
- Professor tabula escolhas da turma
- Plotar: % que escolheu A vs. B em cada rodada
- "Quem sempre escolheu A é fortemente avesso ao risco"
- "Quem escolheu B em todas é propenso"
- Correlacionar com utilidade implícita: "Suas escolhas são consistentes com U côncava, linear ou convexa?"

**Meta-análise** (5 min):
- "Quantos de vocês escolheram A na rodada 1 mas B na rodada 5? Isso é consistente com VNM?"
- Introduzir o conceito de "utility curvature" e como ela varia com magnitude

### Bloco 2: PBL — "Desenhe um Seguro" (35 min)
**Estratégia ativa**: Problem-Based Learning em grupos (4-5 alunos)

**Briefing** (5 min):
> **Missão**: Sua equipe é uma startup de insurtech. Vocês precisam desenhar um produto de seguro para motoristas de aplicativo em São Paulo.
>
> **Dados fornecidos**:
> - Renda média do motorista: R$ 4.000/mês
> - Probabilidade de acidente grave: 5%/ano
> - Custo médio de acidente: R$ 20.000
> - Custo operacional da seguradora: 15% do prêmio
> - Motoristas têm U(x) = ln(x) (avessos ao risco)
>
> **Tarefas**:
> 1. Calcular prêmio atuarialmente justo
> 2. Calcular prêmio máximo que o motorista pagaria
> 3. Definir: cobertura (total ou parcial?), franquia, prêmio mensal
> 4. O produto é viável? A seguradora lucra?
> 5. E se oferecer seguro parcial (cobre 80%) — como muda o prêmio?
> 6. Pitch de 2 min: "Por que nosso seguro é o melhor do mercado?"

**Trabalho em grupo** (20 min): Grupos resolvem + preparam pitch
**Pitches** (10 min): 3 grupos apresentam (2 min cada) + Q&A rápido
- Turma vota no melhor produto (Mentimeter)

### Bloco 3: Debate — "Somos Racionais?" (20 min)
**Estratégia ativa**: Debate estruturado

**Paradoxo de Allais ao vivo** (5 min):
- Projetar as 2 questões do paradoxo
- Turma vota em cada questão
- Revelar: "Se você escolheu A1 e B2, violou independência — parabéns, você é humano"
- Mostrar % da turma que violou

**Debate** (15 min):
- **Lado 1** (metade da turma): "Os axiomas VNM são restritivos demais — precisamos de prospect theory / behavioral economics"
- **Lado 2** (outra metade): "VNM é um modelo normativo (como DEVEMOS decidir), não descritivo — é útil mesmo que imperfeito"
- Cada lado: 3 min de abertura + 2 min de réplica
- Votação final: "VNM é útil apesar de suas limitações?"

### Fechamento (10 min)
- **Debrief**: "A beleza de VNM é que com 4 axiomas conseguimos prever muito do comportamento. As violações nos dizem onde devemos ser cuidadosos — e é aí que entra economia comportamental"
- **Minute paper**: "O que você aprendeu sobre SI MESMO na simulação de loterias?"
- **Preview**: "Encerramos a teoria do consumidor! Próxima aula: mudamos de lado — como a FIRMA produz? Função de produção"

---

## Pós-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 60 min
**Plataforma**: LMS
**Prazo**: Até 48h antes da Aula 13

### Atividade pós-aula
- [ ] **Problem set 5** (7 exercícios):
  1. Calcular UE, EC, PR para 3 funções utilidade diferentes com mesma loteria
  2. Diversificação: comparar investir 100% em ativo A vs. 50%-50% em A e B (não correlacionados)
  3. Derivar demanda por seguro ótimo com cobertura variável
  4. Prêmio de risco com CARA vs. CRRA — como muda com riqueza?
  5. Paradoxo de Allais: formalizar a violação algebricamente
  6. Estado-preferência: desenhar restrição com seguro atuarialmente justo na linha de 45°
  7. **Ensaio curto** (1 parágrafo): "As pessoas compram seguro E bilhete de loteria. Explique."
- [ ] **Reflexão**: "Qual é meu nível de aversão ao risco? Isso afeta minhas decisões financeiras?"
- [ ] **Leitura preparatória para Aula 13**: Cap. 9, Seções 9.1-9.4 (função de produção, produto marginal)

---

## Materiais do Professor
- [ ] Ferramenta de polling (Mentimeter) com 5 rodadas de loterias + paradoxo de Allais
- [ ] Case "insurtech" impresso (1 por grupo)
- [ ] Planilha de pontos da simulação
- [ ] Dados de referência para o case (impressos)
- [ ] Timer para pitches (2 min)
