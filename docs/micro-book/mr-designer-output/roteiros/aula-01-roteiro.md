# Aula 01 — Ferramentas Matemáticas do Economista
**Tipo**: C (Conteúdo)
**Capítulo(s)**: Cap. 2 (Seções 2.1–2.4)
**Learning Outcomes desta aula**:
1. **Resolver** problemas de otimização univariada e multivariada usando CPO e CSO
2. **Aplicar** o método de Lagrange a problemas de otimização com restrição de igualdade
3. **Interpretar** o multiplicador de Lagrange como preço-sombra da restrição

---

## Pré-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 50 min
**Plataforma**: LMS + Livro digital interativo

### Leitura obrigatória
- Cap. 2, Seções 2.1–2.4 do livro interativo (otimização univariada, funções multivariáveis, derivadas parciais, Lagrangiano)
- Revisar: regras de derivação, derivadas parciais, regra da cadeia (pré-requisito de Cálculo II)

### Atividade pré-aula
- [ ] Resolver 2 exercícios de derivadas parciais do Cap. 2
- [ ] Explorar gráfico interativo 3D de superfície de utilidade (se disponível)
- [ ] Responder Quiz Pré-Aula no LMS (prazo: 2h antes da aula)

### Quiz Pré-Aula (5 questões)
1. Dada f(x) = 3x² − 12x + 5, qual é o ponto crítico e é máximo ou mínimo? (Bloom 1)
2. Para f(x,y) = x²y + xy², calcule ∂f/∂x e ∂f/∂y. (Bloom 2)
3. O que significa a condição de segunda ordem (CSO) em um problema de maximização? (Bloom 2)
4. Em uma otimização com restrição, o que o método de Lagrange faz geometricamente? (Bloom 2)
5. Verdadeiro ou falso: "Se a CPO é satisfeita, o ponto é necessariamente um máximo." (Bloom 2)

*Objetivo: verificar domínio de cálculo e preparar para formalização econômica*

---

## Em Aula (100 min)

### Abertura (10 min)
- **Hook**: "Por que o Lagrangiano vai ser seu melhor amigo neste semestre — ele resolve tudo, do consumidor ao monopolista"
- **Check-in de dúvidas**: Mostrar resultados do quiz pré-aula (estatísticas agregadas)
- **Peer Instruction**: "Se λ = 5 num problema de maximização de utilidade com restrição orçamentária, o que acontece com a utilidade ótima se a renda aumentar em R$ 1?" → voto → discussão → revoto

### Bloco 1: Mini-Lecture — Otimização sem e com restrição (25 min)
**Slides 1-8 (Quarto/Reveal)**:
- Slide 1: Título + "O economista como otimizador"
- Slide 2: Revisão relâmpago — CPO e CSO univariadas
- Slide 3: Funções multivariáveis — gradiente e Hessiana
- Slide 4: CPO multivariada: ∇f = 0
- Slide 5: CSO: Hessiana definida negativa (máximo) / positiva (mínimo)
- Slide 6: Otimização com restrição — por que o Lagrangiano?
- Slide 7: Montagem: ℒ = f(x,y) + λ[c − g(x,y)], CPOs
- Slide 8: Interpretação do λ como preço-sombra

*Nota: Não repetir derivações básicas do livro. Focar na intuição econômica do Lagrangiano.*

### Bloco 2: Exercício Guiado — Lagrangiano Passo-a-Passo (30 min)
**Estratégia ativa**: Problem solving guiado (professor resolve com turma)
**Problema 1** (15 min):
> Maximize U(x,y) = x^(1/2) · y^(1/2) sujeito a 2x + 4y = 100.
> Encontre x*, y*, U* e interprete λ*.

- Professor monta o Lagrangiano no quadro
- Alunos derivam as CPOs em seus cadernos (1 min)
- Comparação: "Quem achou as mesmas CPOs? Levante a mão"
- Professor resolve sistema e encontra (x*, y*) = (25, 12.5)
- Discussão: "O que λ = 0.05 significa em português?"

**Problema 2** (15 min):
> Minimize C(L,K) = 10L + 20K sujeito a L^(0.5) · K^(0.5) = 50.
> Encontre L*, K*, C* e interprete λ*.

- Alunos tentam individualmente (5 min)
- Think-Pair-Share: comparar soluções com colega (3 min)
- Professor fecha com solução completa

### Bloco 3: Mini-Lecture — Estática Comparativa e Diferencial Total (20 min)
**Slides 9-15 (Quarto/Reveal)**:
- Slide 9: O que é estática comparativa? "Se o preço muda, o que acontece com a escolha?"
- Slide 10: Diferencial total: df = (∂f/∂x)dx + (∂f/∂y)dy
- Slide 11: Teorema da função implícita — quando podemos inverter?
- Slide 12: Exemplo: como x* muda quando a renda I muda?
- Slide 13: Elasticidade — medindo sensibilidade em %
- Slide 14: Homogeneidade e teorema de Euler (preview)
- Slide 15: Mapa do semestre: "Tudo se reduz a otimização + estática comparativa"

### Fechamento (15 min)
- **Minute paper**: "Qual conceito matemático você mais precisa revisar? O que ficou claro hoje que não estava antes?"
- **Preview**: "Na próxima aula vocês vão resolver problemas de otimização em grupo — tragam calculadora e disposição para competir"
- **Tarefa pós-aula**: Problem set 0 + leitura preparatória

---

## Pós-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 45 min
**Plataforma**: LMS
**Prazo**: Até 48h antes da Aula 02

### Atividade pós-aula
- [ ] **Problem set 0** — Revisão matemática (6 exercícios):
  1. Otimização univariada (2 problemas)
  2. Otimização multivariada sem restrição (1 problema)
  3. Lagrangiano com restrição de igualdade (2 problemas)
  4. Estática comparativa (1 problema)
- [ ] **Autoavaliação** (3 frases): "Numa escala de 1-5, quão confortável estou com o Lagrangiano? O que preciso rever?"
- [ ] **Leitura preparatória para Aula 02**: Rever seções 2.5-2.7 (teorema do envelope, Kuhn-Tucker)

---

## Materiais do Professor
- [ ] Slides Quarto/Reveal (15 slides)
- [ ] Problemas resolvidos impressos (backup)
- [ ] Ferramenta de polling (Mentimeter/Slido) configurada com questão de Peer Instruction
- [ ] Resultados do quiz pré-aula prontos para projetar
