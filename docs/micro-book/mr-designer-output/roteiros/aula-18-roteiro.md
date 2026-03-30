# Aula 18 — Simulação: Decisão de Produção e Entrada/Saída
**Tipo**: P (Prática Ativa)
**Capítulo(s)**: Cap. 11–12 (transição)
**Learning Outcomes desta aula**:
1. **Experimentar** a decisão de produção individual e observar a emergência de oferta de mercado
2. **Aplicar** a decisão de shutdown e entrada/saída em contexto simulado
3. **Avaliar** a viabilidade de um negócio usando análise de custos e receitas

---

## Pré-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 40 min
**Plataforma**: LMS

### Leitura obrigatória
- Cap. 11, seções sobre natureza da firma (Coase, custos de transação) — se disponíveis
- Preview: Cap. 12, Seção 12.1 (agregação de oferta)

### Atividade pré-aula
- [ ] Revisar: como derivar oferta individual e preço de shutdown
- [ ] Responder Quiz Pré-Aula no LMS

### Quiz Pré-Aula (5 questões)
1. A oferta de mercado é a soma ___ das ofertas individuais. (Bloom 1)
2. Se P = CMe_mín no LP, o lucro econômico é ___. (Bloom 1)
3. No LP com livre entrada, firmas entram até que P = ___. (Bloom 2)
4. Qual a diferença entre custos de transação e custos de produção? (Bloom 2)
5. V/F: "Lucro econômico zero significa que os donos não ganham nada." (Bloom 3)

---

## Em Aula (100 min)

### Abertura (5 min)
- **Regras**: "Hoje vocês são empresários. Cada um recebe uma firma com custos diferentes. O mercado vai ditar o preço. Vocês decidem: produzir, quanto, ou fechar."

### Bloco 1: Simulação de Mercado — "Sobrevivência Empresarial" (45 min)
**Estratégia ativa**: Simulação com decisão individual

**Setup** (5 min):
- Cada aluno recebe carta de "Firma" com:
  - Função custo específica (custos diferentes para gerar heterogeneidade)
  - Exemplo: Firma A: C(q) = q² + 10; Firma B: C(q) = 2q² + 5; Firma C: C(q) = 0.5q² + 20
  - Tabela pré-calculada: q, CT, CMg, CMe, CVMe para q = 1 a 10
  - Preço de shutdown marcado

**Rodada 1 — Preço alto, P = 15** (8 min):
- Cada firma decide: quanto produzir? (usar P = CMg)
- Registrar q* individual e lucro π*
- Professor agrega: soma de q* = oferta de mercado

**Rodada 2 — Preço médio, P = 8** (8 min):
- Algumas firmas de alto custo estão com prejuízo
- Decisão: continuar (se P > CVMe) ou shutdown?
- Registrar decisões

**Rodada 3 — Preço baixo, P = 3** (8 min):
- Mais firmas fazem shutdown
- Quantas sobrevivem?

**Rodada 4 — Longo prazo** (8 min):
- Professor anuncia: "É LP. Novas firmas podem entrar. Firmas com prejuízo saem."
- Firmas de baixo custo: lucro > 0 → "mais firmas iguais a vocês entram"
- Firmas de alto custo: lucro < 0 → saem
- Repetir até π ≈ 0 para todas as sobreviventes
- "Isso é equilíbrio de longo prazo!"

**Debriefing** (8 min):
- Plotar dados das 4 rodadas: P × Q_mercado → curva de oferta de mercado emerge
- "Vocês construíram uma curva de oferta sem nenhuma equação de mercado!"
- Conectar com teoria: oferta = ∑CMg; LP: P = CMe_mín
- "Quais firmas sobreviveram? As de menor custo. Isso é seleção natural do mercado."

### Bloco 2: PBL — "Startup de Delivery" (30 min)
**Estratégia ativa**: Problem-Based Learning em grupos

**Caso distribuído**:
> Sua equipe quer montar uma startup de delivery de comida saudável em São Paulo.
>
> **Dados**:
> - Custo fixo mensal: R$ 15.000 (aluguel, app, administrativo)
> - Custo variável por pedido: R$ 18 (ingredientes, embalagem, entregador)
> - Preço médio por pedido no mercado: R$ 35
> - Mercado tem 50 concorrentes similares
> - Demanda potencial: 5.000 pedidos/mês na sua área
>
> **Tarefas** (20 min):
> 1. Montar estrutura de custos: CT(q), CMe(q), CMg(q), CVMe
> 2. Encontrar break-even: quantos pedidos para lucro ≥ 0?
> 3. Se demanda é 5.000/50 = 100 pedidos/mês por firma: é viável?
> 4. O que você faria para reduzir custos ou aumentar demanda?
> 5. No LP, o que acontece com o número de firmas? E com o preço?

**Apresentação** (8 min): 2 grupos apresentam (4 min cada)
**Discussão** (2 min): "Por que tantas startups de delivery fecham?"

### Bloco 3: Think-Pair-Share — "Lucro Zero é Ruim?" (10 min)
**Estratégia ativa**: Think-Pair-Share

**Pergunta**: "No equilíbrio de LP com livre entrada, lucro econômico = 0 para todas as firmas. Isso é bom ou ruim?"
- Think (2 min) → Pair (3 min) → Share (5 min)
- Pontos-chave: lucro econômico = 0 ≠ lucro contábil = 0. Firmas cobrem TODOS os custos de oportunidade. Recursos estão alocados eficientemente. "Zero econômico = normal contábil."

### Fechamento (10 min)
- **Ranking atualizado** (se gamificação)
- **Minute paper**: "O que a simulação ensinou que os exercícios algébricos não tinham?"
- **Preview**: "Próxima aula: quando TODAS as firmas interagem num mercado — equilíbrio competitivo, excedentes e bem-estar"

---

## Pós-Aula (Responsabilidade do Aluno)
**Tempo estimado**: 55 min
**Plataforma**: LMS
**Prazo**: Até 48h antes da Aula 19

### Atividade pós-aula
- [ ] **Problem set 8** (6 exercícios):
  1. Dadas 3 firmas com custos diferentes, agregar oferta de mercado
  2. Encontrar equilíbrio de LP com livre entrada para indústria de custo constante
  3. Calcular lucro, EC e EP para firma competitiva
  4. Analisar efeito de aumento de custo fixo sobre decisão de LP
  5. Firma com IRS: por que concorrência perfeita é incompatível?
  6. **Mini-ensaio**: "Por que a iFood cobra taxas crescentes dos restaurantes?"
- [ ] **Leitura preparatória para Aula 19**: Cap. 12, Seções 12.1-12.5 (equilíbrio, excedentes, bem-estar)

---

## Materiais do Professor
- [ ] Cartas de "Firma" (N cartas com custos variados + tabelas pré-calculadas)
- [ ] Planilha de registro de produção/lucro (projetável)
- [ ] Case "startup de delivery" impresso
- [ ] Calculadoras disponíveis
