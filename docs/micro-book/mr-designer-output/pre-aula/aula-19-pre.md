# Pré-Aula 19 — Custos de Produção e Minimização de Custos

!!! info "Leitura obrigatória"
    **Cap. 11, Seções 11.1–11.5** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Distinguir custo econômico de custo contábil e explicar o papel do custo de oportunidade
2. Derivar as demandas condicionais de fatores via Lagrangiano e enunciar o Lema de Shephard
3. Relacionar as curvas CT, CMe, CVMe e CMg, explicar a envoltória de Viner e identificar economias de escala

---

## 1. Custo econômico vs. custo contábil

O **custo contábil** registra despesas monetárias explícitas (salários, aluguel, matéria-prima). O **custo econômico** inclui também os **custos de oportunidade** — o valor da melhor alternativa renunciada:

$$C_{\text{econômico}} = C_{\text{explícito}} + C_{\text{oportunidade}}$$

!!! note "Intuição Econômica"
    **O custo de oportunidade é invisível, mas real.** Se um empresário poderia ganhar R\$ 10.000/mês como empregado, esse valor é um custo econômico de operar seu próprio negócio, mesmo que não apareça em nenhuma nota fiscal. Ignorar o custo de oportunidade leva a decisões erradas — o empresário pode achar que tem lucro quando, na verdade, estaria melhor como empregado.

---

## 2. Minimização de custos

A firma escolhe $K$ e $L$ para minimizar o custo de produzir $q$ unidades:

$$\min_{K,L} \; wL + vK \quad \text{s.a.} \quad f(K,L) = q$$

### Lagrangiano

$$\mathcal{L} = wL + vK + \lambda\big[q - f(K,L)\big]$$

**Condições de primeira ordem:**

$$\frac{\partial \mathcal{L}}{\partial L} = w - \lambda\frac{\partial f}{\partial L} = 0 \implies \lambda = \frac{w}{PMg_L}$$

$$\frac{\partial \mathcal{L}}{\partial K} = v - \lambda\frac{\partial f}{\partial K} = 0 \implies \lambda = \frac{v}{PMg_K}$$

Igualando:

$$\boxed{\frac{PMg_L}{PMg_K} = \frac{w}{v} \iff TMST = \frac{w}{v}}$$

A firma iguala a taxa marginal de substituição técnica à razão de preços dos fatores. O multiplicador $\lambda$ é o **custo marginal** — o custo adicional de produzir uma unidade a mais.

### Demandas condicionais de fatores

As soluções $L^c(w,v,q)$ e $K^c(w,v,q)$ são as **demandas condicionais** — a quantidade ótima de cada fator para produzir $q$ ao menor custo.

---

## 3. Função custo e propriedades

Substituindo as demandas condicionais na função objetivo:

$$C(w,v,q) = wL^c(w,v,q) + vK^c(w,v,q)$$

**Propriedades da função custo:**

1. **Não decrescente** em $w$, $v$ e $q$
2. **Homogênea de grau 1** em $(w,v)$: dobrar todos os preços dos fatores dobra o custo
3. **Côncava** em $(w,v)$: a firma pode substituir fatores quando preços mudam
4. **Lema de Shephard:** $\displaystyle L^c = \frac{\partial C}{\partial w}, \quad K^c = \frac{\partial C}{\partial v}$

!!! note "Intuição Econômica"
    **O Lema de Shephard é o dual do Lema de Hotelling.** Assim como a demanda hicksiana sai da função dispêndio por diferenciação, a demanda condicional de fatores sai da função custo. A dualidade entre minimização de custos e maximização de lucro permeia toda a teoria da firma.

---

## 4. Curvas de custo no curto prazo

Com capital fixo $\bar{K}$ no curto prazo, definimos:

| Curva | Definição |
|---|---|
| Custo Total | $CT(q) = CF + CV(q)$ |
| Custo Médio | $CMe(q) = CT(q)/q = CF/q + CVMe(q)$ |
| Custo Variável Médio | $CVMe(q) = CV(q)/q$ |
| Custo Marginal | $CMg(q) = dCT/dq = dCV/dq$ |

**Relações fundamentais:**

- O CMg corta o CMe e o CVMe em seus respectivos **pontos de mínimo**
- Se $CMg < CMe$, o CMe está caindo; se $CMg > CMe$, o CMe está subindo
- A distância vertical entre CMe e CVMe é $CF/q$, que diminui com $q$

---

## 5. Custos de longo prazo e envoltória de Viner

No longo prazo, todos os fatores são variáveis. Para cada nível de capital $\bar{K}$, existe uma curva de CMe de curto prazo. A curva de **CMe de longo prazo** (CMeLP) é a **envoltória** dessas curvas:

$$CMeLP(q) = \min_{\bar{K}} CMe_{CP}(q; \bar{K})$$

A CMeLP tangencia cada curva de CMe de curto prazo no ponto correspondente ao $\bar{K}$ ótimo para aquele $q$. No ponto de escala eficiente, CMeLP = CMeCP e ambas atingem o mínimo.

**Economias de escala** ocorrem quando $CMeLP$ é decrescente ($\varepsilon_C < 1$, onde $\varepsilon_C = CMg/CMe$). **Deseconomias de escala** quando $CMeLP$ é crescente ($\varepsilon_C > 1$).

---

## Gráfico interativo: minimização de custo

<div id="graph-min-custo" style="min-height: 450px;">
<iframe src="graficos/cap11/minimizacao-custo.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Mova a isoquanta para diferentes níveis de produção e veja o ponto de tangência com a isocusto
    - Altere a razão $w/v$ e observe a substituição entre fatores
    - Verifique que no ótimo $TMST = w/v$

---

## Gráfico interativo: curvas de custo

<div id="graph-curvas-custo" style="min-height: 450px;">
<iframe src="graficos/cap11/curvas-custo.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Observe como o CMg cruza o CMe e o CVMe nos seus mínimos
    - Note que a distância CMe - CVMe diminui à medida que $q$ cresce
    - Identifique as regiões de economias e deseconomias de escala

---

## Gráfico interativo: envoltória de custo total

<div id="graph-envoltoria" style="min-height: 450px;">
<iframe src="graficos/cap11/envoltoria-custo-total.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Varie o nível de capital fixo e veja diferentes curvas de CMe de curto prazo
    - Observe como a envoltória de longo prazo tangencia cada curva de curto prazo
    - Identifique a escala eficiente (mínimo do CMeLP)

---

## Exercícios de preparação

**Exercício 1.** Uma firma tem $f(K,L) = K^{1/2}L^{1/2}$, $w = 4$ e $v = 1$. Encontre as demandas condicionais e a função custo $C(q)$.

??? success "Solução"
    $TMST = \frac{PMg_L}{PMg_K} = \frac{K}{L} = \frac{w}{v} = 4 \implies K = 4L$

    Restrição: $(4L)^{1/2}L^{1/2} = 2L = q \implies L^c = q/2$, $K^c = 2q$.

    $C(q) = 4(q/2) + 1(2q) = 2q + 2q = 4q$

    Verificação pelo Lema de Shephard: $\partial C/\partial w = q/2 = L^c$ e $\partial C/\partial v = 2q = K^c$.

**Exercício 2.** Para $C(q) = q^3 - 6q^2 + 15q + 10$, encontre CMg, CMe, CVMe e seus mínimos.

??? success "Solução"
    $CMg = 3q^2 - 12q + 15$. Mínimo: $6q - 12 = 0 \implies q = 2$, $CMg(2) = 3$.

    $CVMe = q^2 - 6q + 15$. Mínimo: $2q - 6 = 0 \implies q = 3$, $CVMe(3) = 6$.

    Verificação: $CMg(3) = 27 - 36 + 15 = 6 = CVMe(3)$.

    $CMe = q^2 - 6q + 15 + 10/q$. Mínimo onde $CMg = CMe$: resolvendo numericamente, $q \approx 3{,}68$, $CMe \approx 6{,}39$.

**Exercício 3.** Explique por que a curva de CMeLP nunca fica acima de nenhuma curva de CMe de curto prazo.

??? success "Solução"
    A CMeLP é obtida minimizando o custo sobre **todos** os fatores, inclusive o capital. Cada curva de CMe de curto prazo fixa o capital em $\bar{K}$, restringindo a escolha da firma. Como a minimização com mais liberdade (LP) não pode produzir custo maior que a minimização restrita (CP), temos $CMeLP(q) \leq CMe_{CP}(q;\bar{K})$ para todo $\bar{K}$. A igualdade ocorre apenas no ponto onde $\bar{K}$ coincide com o capital ótimo de longo prazo para aquele $q$.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A diferença entre custo econômico e custo contábil é:

- [ ] (a) O custo econômico exclui a depreciação
- [x] (b) O custo econômico inclui o custo de oportunidade
- [ ] (c) O custo contábil é sempre maior
- [ ] (d) Não há diferença relevante

**Q2.** A condição de minimização de custos é:

- [x] (a) $TMST = w/v$
- [ ] (b) $PMg_L = PMg_K$
- [ ] (c) $w = v$
- [ ] (d) $CMg = CMe$

**Q3.** Pelo Lema de Shephard, a demanda condicional por trabalho é:

- [ ] (a) $L^c = \partial C/\partial q$
- [x] (b) $L^c = \partial C/\partial w$
- [ ] (c) $L^c = \partial C/\partial v$
- [ ] (d) $L^c = C/w$

**Q4.** O CMg cruza o CMe no ponto de:

- [ ] (a) Máximo do CMe
- [x] (b) Mínimo do CMe
- [ ] (c) Máximo do CMg
- [ ] (d) Inflexão do CT

**Q5.** A envoltória de Viner mostra que o CMeLP:

- [ ] (a) É sempre igual ao CMeCP
- [ ] (b) Está sempre acima das curvas de CMeCP
- [x] (c) Tangencia cada curva de CMeCP, nunca ficando acima de nenhuma
- [ ] (d) É uma linha horizontal

</div>

---

!!! abstract "Próxima aula"
    **Aula 20**: Maximização de lucro — da condição $P = CMg$ à função lucro e o Lema de Hotelling. Revise as propriedades da função custo!
