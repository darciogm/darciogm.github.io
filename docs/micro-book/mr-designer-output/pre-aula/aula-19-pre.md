# Pré-Aula 19 — Equilíbrio Competitivo e Bem-Estar

!!! info "Leitura obrigatória"
    **Cap. 12, Seções 12.1–12.5** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Derivar o equilíbrio de mercado competitivo e analisar ajustes em diferentes horizontes temporais
2. Calcular excedente do consumidor, excedente do produtor e excedente total
3. Explicar por que o equilíbrio competitivo é Pareto-eficiente e identificar fontes de peso morto

---

## 1. Agregação e equilíbrio de mercado

### Demanda de mercado

A demanda de mercado é a soma horizontal das demandas individuais:

$$Q^D(P) = \sum_{i=1}^{m} q_i^D(P)$$

### Oferta de mercado

A oferta de mercado é a soma horizontal das ofertas individuais (trechos de CMg acima de CVMe):

$$Q^S(P) = \sum_{j=1}^{n} q_j^S(P)$$

### Equilíbrio

O **equilíbrio competitivo** ocorre quando:

$$Q^D(P^*) = Q^S(P^*) \implies \text{mercado se ajusta sem excesso}$$

No equilíbrio, cada consumidor maximiza utilidade, cada firma maximiza lucro, e a quantidade demandada iguala a ofertada.

---

## 2. Condições da competição perfeita

Para que o modelo competitivo se aplique, assumimos:

1. **Muitos compradores e vendedores** — ninguém tem poder de mercado
2. **Produto homogêneo** — bens idênticos entre firmas
3. **Livre entrada e saída** — sem barreiras
4. **Informação perfeita** — todos conhecem preços e qualidades

!!! tip "Na prática"
    Poucos mercados satisfazem todas as condições simultaneamente. Mas o modelo é uma referência (benchmark) poderosa: mercados agrícolas de commodities, mercados financeiros e alguns mercados digitais se aproximam bastante.

---

## 3. Horizontes temporais

A resposta do mercado a choques depende do horizonte temporal:

### Curtíssimo prazo (mercado)
Oferta **fixa** — a quantidade não pode se ajustar. Todo o ajuste ocorre via preço.

$$Q^S = \bar{Q} \implies P^* \text{ determinado pela demanda}$$

### Curto prazo
Firmas existentes ajustam a produção (fator variável), mas **novas firmas não entram**. Oferta positivamente inclinada.

### Longo prazo
Todos os fatores são variáveis e há **livre entrada/saída**. A oferta é mais elástica (ou perfeitamente elástica em indústria de custos constantes).

!!! example "Choque de demanda: aumento do preço do café"
    - **Curtíssimo prazo**: preço dispara; quantidade fixa (safra já colhida)
    - **Curto prazo**: agricultores existentes expandem colheita; preço sobe menos
    - **Longo prazo**: novos agricultores entram; preço retorna próximo ao custo mínimo

---

## 4. Dinâmica de entrada e saída

O ajuste de longo prazo segue o mecanismo:

$$\pi > 0 \xrightarrow{\text{entrada}} Q^S \uparrow \xrightarrow{} P \downarrow \xrightarrow{} \pi \downarrow$$

$$\pi < 0 \xrightarrow{\text{saída}} Q^S \downarrow \xrightarrow{} P \uparrow \xrightarrow{} \pi \uparrow$$

Convergência: $\pi^* = 0 \implies P^* = CMe_{\min}$

---

## 5. Medidas de bem-estar

### Excedente do consumidor (EC)

Diferença entre a disposição a pagar e o preço efetivamente pago:

$$EC = \int_0^{Q^*} P^D(Q)\,dQ - P^* Q^*$$

Graficamente: área **abaixo** da curva de demanda e **acima** do preço de equilíbrio.

### Excedente do produtor (EP)

Diferença entre a receita e o custo variável:

$$EP = P^* Q^* - \int_0^{Q^*} CMg(Q)\,dQ$$

Graficamente: área **acima** da curva de oferta e **abaixo** do preço de equilíbrio.

### Excedente total (ET)

$$ET = EC + EP = \int_0^{Q^*} \big[P^D(Q) - CMg(Q)\big]\,dQ$$

---

## 6. Eficiência de Pareto e peso morto

!!! warning "Conceito central"
    Uma alocação é **Pareto-eficiente** se não é possível melhorar a situação de nenhum agente sem piorar a de outro.

O equilíbrio competitivo é Pareto-eficiente — ele maximiza o excedente total. Qualquer desvio do equilíbrio (por intervenção, poder de mercado ou externalidades) gera **peso morto** (deadweight loss):

$$DWL = ET_{\text{equilíbrio}} - ET_{\text{intervenção}} > 0$$

O peso morto representa transações mutuamente benéficas que deixam de ocorrer. É uma perda líquida para a sociedade — não é transferida para ninguém.

**Primeiro Teorema do Bem-Estar:** sob competição perfeita, o equilíbrio de mercado é Pareto-eficiente.

---

## Gráfico interativo: equilíbrio de mercado

<div id="graph-equilibrio" style="min-height: 450px;">
<iframe src="../../graficos/cap12/equilibrio-mercado.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Desloque as curvas de demanda ou oferta e observe o novo equilíbrio
    - Visualize as áreas de excedente do consumidor e do produtor
    - Introduza um imposto ou preço fixo e veja o peso morto surgir

---

## Box: O poder do equilíbrio competitivo

!!! note "Intuição Econômica"
    **Por que o equilíbrio competitivo maximiza o bem-estar?**

    No equilíbrio, a última unidade transacionada tem benefício marginal (disposição a pagar) exatamente igual ao custo marginal de produzi-la. Todas as unidades anteriores geram benefício marginal superior ao custo marginal — cada uma contribui positivamente para o excedente total. Produzir além de $Q^*$ destruiria valor (custo > benefício); produzir menos de $Q^*$ desperdiçaria oportunidades de ganho mútuo. O preço de equilíbrio é o "sinal" perfeito que coordena essa eficiência.

---

## Exercícios de preparação

**Exercício 1.** Em um mercado com demanda $Q^D = 100 - 2P$ e oferta $Q^S = 3P - 25$, encontre: (a) preço e quantidade de equilíbrio, (b) excedente do consumidor e do produtor, (c) excedente total.

??? success "Solução"
    (a) $Q^D = Q^S \implies 100 - 2P = 3P - 25 \implies 5P = 125 \implies P^* = 25$

    $Q^* = 100 - 50 = 50$

    (b) Demanda inversa: $P^D = 50 - Q/2$. Oferta inversa: $P^S = (Q + 25)/3$.

    $EC = \frac{1}{2}(50 - 25)(50) = 625$

    Para o EP: preço mínimo de oferta (quando $Q^S = 0$): $P = 25/3 \approx 8{,}33$.

    $EP = \frac{1}{2}(25 - 8{,}33)(50) = \frac{1}{2}(16{,}67)(50) \approx 416{,}67$

    (c) $ET = EC + EP = 625 + 416{,}67 = 1.041{,}67$

**Exercício 2.** Explique o que acontece nesse mercado se o governo fixa o preço em $P = 20$ (abaixo do equilíbrio). Há excesso de oferta ou demanda? Calcule o peso morto.

??? success "Solução"
    Com $P = 20$: $Q^D = 100 - 40 = 60$ e $Q^S = 60 - 25 = 35$.

    Há **excesso de demanda** (escassez): $Q^D - Q^S = 25$ unidades.

    A quantidade efetivamente transacionada é $Q = 35$ (lado curto do mercado).

    Novo EC: área sob a demanda de $0$ a $35$, menos o gasto $20 \times 35$:

    $EC' = \int_0^{35}(50 - Q/2)\,dQ - 20(35) = [50(35) - 35^2/4] - 700 = 1.750 - 306{,}25 - 700 = 743{,}75$

    Novo EP: $EP' = 20(35) - \int_0^{35}(Q + 25)/3\,dQ = 700 - [35^2/6 + 25(35)/3] = 700 - 204{,}17 - 291{,}67 = 204{,}17$

    $ET' = 743{,}75 + 204{,}17 = 947{,}92$

    $DWL = 1.041{,}67 - 947{,}92 = 93{,}75$

    Alternativamente: $DWL = \frac{1}{2}(25 - 20)(50 - 35) = \frac{1}{2}(5)(15) = 37{,}5$.

    Nota: a discrepância se deve à geometria não-triangular exata; usando as inversas corretamente: $P^D(35) = 32{,}5$ e $P^S(35) = 20$, então $DWL = \frac{1}{2}(32{,}5 - 20)(50 - 35) = \frac{1}{2}(12{,}5)(15) = 93{,}75$.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** O excedente do consumidor é a área:

- [x] (a) Abaixo da curva de demanda e acima do preço de equilíbrio
- [ ] (b) Acima da curva de oferta e abaixo do preço de equilíbrio
- [ ] (c) Entre as curvas de oferta e demanda, à direita do equilíbrio
- [ ] (d) Abaixo do preço de equilíbrio e acima do eixo horizontal

**Q2.** O Primeiro Teorema do Bem-Estar afirma que:

- [ ] (a) Todo equilíbrio de mercado é justo
- [x] (b) Sob competição perfeita, o equilíbrio é Pareto-eficiente
- [ ] (c) O governo deve intervir para maximizar o bem-estar
- [ ] (d) Monopólios são eficientes

**Q3.** No longo prazo, um aumento permanente de demanda em uma indústria de custos constantes resulta em:

- [ ] (a) Preço mais alto e mais firmas
- [x] (b) Mesmo preço e mais firmas
- [ ] (c) Preço mais alto e mesmo número de firmas
- [ ] (d) Preço mais baixo e menos firmas

**Q4.** Peso morto (deadweight loss) representa:

- [ ] (a) Uma transferência de renda do consumidor para o governo
- [ ] (b) O custo administrativo de uma política pública
- [x] (c) Transações mutuamente benéficas que deixam de ocorrer
- [ ] (d) A diferença entre lucro contábil e lucro econômico

**Q5.** V ou F: "Se o preço de mercado está abaixo do equilíbrio (preço-teto), há excesso de oferta."

- [ ] (a) Verdadeiro
- [x] (b) Falso — preço abaixo do equilíbrio gera excesso de demanda (escassez)

</div>

---

!!! abstract "Próxima aula"
    **Aula 19**: Mini-lecture sobre equilíbrio competitivo e bem-estar + análise gráfica de excedentes e eficiência. Traga calculadora!
