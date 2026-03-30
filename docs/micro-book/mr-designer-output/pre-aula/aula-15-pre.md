# Pré-Aula 15 — Custos de Produção

!!! info "Leitura obrigatória"
    **Cap. 10, Seções 10.1–10.5** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Distinguir custo econômico de custo contábil e identificar custos de oportunidade
2. Resolver o problema de minimização de custos usando o Lagrangiano e derivar as demandas condicionais de fatores
3. Derivar e relacionar as curvas de custo total, custo médio e custo marginal

---

## 1. Custo econômico vs. custo contábil

O **custo contábil** registra apenas despesas explícitas — salários, aluguel, matérias-primas. O **custo econômico** inclui também o **custo de oportunidade**: o valor da melhor alternativa sacrificada.

!!! example "Exemplo rápido"
    Um empresário que poderia ganhar $\text{R\$}\,8.000$/mês como empregado, mas obtém receita de $\text{R\$}\,15.000$ e tem despesas de $\text{R\$}\,5.000$:

    - Lucro contábil: $15.000 - 5.000 = \text{R\$}\,10.000$
    - Lucro econômico: $15.000 - 5.000 - 8.000 = \text{R\$}\,2.000$

**Custos irrecuperáveis (sunk costs):** gastos já realizados que **não** devem influenciar decisões futuras. Se você pagou R$ 50.000 por uma máquina que não tem valor de revenda, esse custo é irrelevante para a decisão de continuar ou parar a produção.

---

## 2. O problema de minimização de custos

A firma quer produzir uma quantidade $q$ ao menor custo possível, dados os preços dos insumos — salário $w$ (trabalho $L$) e aluguel do capital $v$ (capital $K$):

$$\min_{L,K} \; wL + vK \quad \text{s.a.} \quad f(L,K) = q$$

### Linhas de isocusto

Para um dado gasto total $C$, a combinação de insumos que custa exatamente $C$ satisfaz:

$$C = wL + vK \implies K = \frac{C}{v} - \frac{w}{v}L$$

A inclinação da isocusto é $-w/v$ — a **razão de preços dos fatores**.

### Condição de tangência

No ótimo, a isoquanta é tangente à isocusto:

$$\text{TMST}_{L,K} = \frac{PMg_L}{PMg_K} = \frac{w}{v}$$

Isso significa que o último real gasto em trabalho gera a mesma produção adicional que o último real gasto em capital.

---

## 3. Solução pelo Lagrangiano

Montamos o Lagrangiano:

$$\mathcal{L}(L, K, \lambda) = wL + vK + \lambda\big[q - f(L,K)\big]$$

As CPOs são:

$$\frac{\partial \mathcal{L}}{\partial L} = w - \lambda f_L = 0 \implies \lambda = \frac{w}{f_L}$$

$$\frac{\partial \mathcal{L}}{\partial K} = v - \lambda f_K = 0 \implies \lambda = \frac{v}{f_K}$$

$$\frac{\partial \mathcal{L}}{\partial \lambda} = q - f(L,K) = 0$$

Igualando as duas primeiras: $\frac{f_L}{f_K} = \frac{w}{v}$ — a condição de tangência.

### Demandas condicionais de fatores

Resolvendo as CPOs, obtemos as **demandas condicionais**:

$$L^* = L^c(w, v, q) \qquad K^* = K^c(w, v, q)$$

Essas funções nos dizem quanto de cada fator usar para produzir $q$ ao menor custo.

!!! example "Exemplo: Cobb-Douglas $f(L,K) = L^{1/2}K^{1/2}$"
    Da tangência: $\frac{K}{L} = \frac{w}{v} \implies K = \frac{w}{v}L$

    Substituindo na restrição: $L^{1/2}\left(\frac{w}{v}L\right)^{1/2} = q$

    $$L^c = q\left(\frac{v}{w}\right)^{1/2}, \qquad K^c = q\left(\frac{w}{v}\right)^{1/2}$$

---

## 4. A função custo e suas derivadas

Substituindo as demandas condicionais na função objetivo:

$$C(w,v,q) = wL^c(w,v,q) + vK^c(w,v,q)$$

Para a Cobb-Douglas do exemplo: $C(w,v,q) = 2q\sqrt{wv}$.

### Custo Médio e Custo Marginal

$$\text{CMe}(q) = \frac{C(q)}{q} \qquad \text{CMg}(q) = \frac{dC}{dq}$$

**Relação fundamental CMg–CMe:**

- Se $\text{CMg} < \text{CMe}$: o custo médio está **caindo**
- Se $\text{CMg} > \text{CMe}$: o custo médio está **subindo**
- Se $\text{CMg} = \text{CMe}$: o custo médio está no seu **mínimo**

!!! tip "Analogia útil"
    Pense na sua média de notas. Se a próxima prova (marginal) for abaixo da média, a média cai. Se for acima, sobe. Se for igual, a média fica constante. A mesma lógica vale para custos.

---

## Gráfico interativo: minimização de custos

<div id="graph-min-custos" style="min-height: 450px;">
<iframe src="../../graficos/cap10/minimizacao-custos.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Altere os preços dos fatores ($w$, $v$) e observe como a isocusto rotaciona
    - Mude a quantidade-alvo $q$ e veja a isoquanta se deslocar
    - Note que o ótimo está sempre na **tangência** entre isoquanta e isocusto

---

## Box: Custos de oportunidade e decisão

!!! note "Intuição Econômica"
    **Por que economistas insistem em custos de oportunidade?**

    Porque toda decisão envolve uma alternativa sacrificada. Ao alocar trabalho na linha de produção A, a firma abre mão de usá-lo na linha B. A condição de tangência $\text{TMST} = w/v$ garante que a firma não está "desperdiçando" nenhum fator — cada real gasto gera a mesma produção marginal, independentemente de onde é alocado. Ignorar custos de oportunidade leva a decisões ineficientes, mesmo quando o lucro contábil parece positivo.

---

## Exercícios de preparação

**Exercício 1.** Uma firma tem função de produção $f(L,K) = L^{1/3}K^{2/3}$, com $w = 4$ e $v = 8$. Encontre as demandas condicionais $L^c$ e $K^c$ para produzir $q = 10$.

??? success "Solução"
    Tangência: $\frac{PMg_L}{PMg_K} = \frac{w}{v}$

    $PMg_L = \frac{1}{3}L^{-2/3}K^{2/3}$, $\quad PMg_K = \frac{2}{3}L^{1/3}K^{-1/3}$

    $$\frac{K}{2L} = \frac{4}{8} = \frac{1}{2} \implies K = L$$

    Substituindo: $L^{1/3}L^{2/3} = L = 10 \implies L^c = 10, \; K^c = 10$

    Custo total: $C = 4(10) + 8(10) = 120$

**Exercício 2.** Para a função custo $C(q) = q^3 - 6q^2 + 15q$, encontre o custo marginal e o custo médio. Em que quantidade $q$ o CMe atinge seu mínimo?

??? success "Solução"
    $\text{CMg} = 3q^2 - 12q + 15$

    $\text{CMe} = q^2 - 6q + 15$

    No mínimo do CMe: $\frac{d(\text{CMe})}{dq} = 2q - 6 = 0 \implies q = 3$

    $\text{CMe}(3) = 9 - 18 + 15 = 6$

    Verificação: $\text{CMg}(3) = 27 - 36 + 15 = 6 = \text{CMe}(3)$ ✓

**Exercício 3.** Explique por que custos irrecuperáveis não devem afetar decisões racionais. Dê um exemplo cotidiano.

??? success "Solução"
    Custos irrecuperáveis (sunk costs) já foram incorridos e não podem ser recuperados, independentemente da decisão futura. Como decisões racionais se baseiam em comparar custos e benefícios **marginais** (futuros), incluir custos passados distorce a análise.

    Exemplo: você pagou R$ 80 por um ingresso de cinema, mas após 30 minutos percebe que o filme é péssimo. O custo do ingresso é irrecuperável — a decisão racional é sair se o benefício de ficar (prazer restante) for menor que o custo de oportunidade do seu tempo. Ficar "para não desperdiçar o ingresso" é a falácia do custo irrecuperável.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Qual a diferença entre custo econômico e custo contábil?

- [ ] (a) Não há diferença; são sinônimos
- [x] (b) O custo econômico inclui custos de oportunidade; o contábil, não
- [ ] (c) O custo contábil inclui custos de oportunidade; o econômico, não
- [ ] (d) O custo econômico desconsidera custos fixos

**Q2.** No problema de minimização de custos, a condição de tangência exige que:

- [ ] (a) $PMg_L = PMg_K$
- [ ] (b) $PMg_L / w = PMg_K \cdot v$
- [x] (c) $PMg_L / PMg_K = w / v$
- [ ] (d) $PMg_L \cdot PMg_K = w \cdot v$

**Q3.** Se o custo marginal está abaixo do custo médio, o que acontece com o CMe à medida que $q$ aumenta?

- [x] (a) O CMe está caindo
- [ ] (b) O CMe está subindo
- [ ] (c) O CMe permanece constante
- [ ] (d) Depende do custo fixo

**Q4.** No ótimo do Lagrangiano de minimização de custos, o multiplicador $\lambda^*$ representa:

- [ ] (a) O custo total de produção
- [x] (b) O custo marginal — quanto custa produzir uma unidade adicional
- [ ] (c) O preço do trabalho dividido pelo preço do capital
- [ ] (d) A produtividade marginal do trabalho

**Q5.** V ou F: "Custos irrecuperáveis devem ser incluídos na análise marginal de decisões futuras."

- [ ] (a) Verdadeiro
- [x] (b) Falso — custos irrecuperáveis não afetam decisões racionais futuras

</div>

---

!!! abstract "Próxima aula"
    **Aula 15**: Mini-lecture sobre custos de produção + minimização de custos com exercícios práticos. Traga calculadora!
