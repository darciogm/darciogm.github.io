# Pré-Aula 22 — Concorrência Perfeita e Bem-Estar

!!! info "Leitura obrigatória"
    **Cap. 13, Seções 13.1–13.4** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Derivar a oferta de mercado por soma horizontal e determinar o equilíbrio marshalliano com estática comparativa
2. Explicar o equilíbrio de longo prazo com livre entrada/saída e distinguir os três tipos de indústria
3. Calcular excedentes (EC + EP) e enunciar o Primeiro Teorema do Bem-Estar

---

## 1. Oferta de mercado: soma horizontal

A **oferta de mercado** é a soma horizontal das ofertas individuais. Com $n$ firmas, cada uma com oferta $q_i^S(P)$:

$$Q^S(P) = \sum_{i=1}^{n} q_i^S(P)$$

Para firmas idênticas: $Q^S(P) = n \cdot q^S(P)$.

A soma é **horizontal** — para cada preço $P$, somamos as quantidades. Cuidado com os "kinks": firmas com custos diferentes entram em preços diferentes, criando quebras na curva de oferta agregada.

---

## 2. Equilíbrio marshalliano

O **equilíbrio de mercado** ocorre quando oferta iguala demanda:

$$Q^D(P^*) = Q^S(P^*)$$

No equilíbrio, cada consumidor maximiza utilidade, cada firma maximiza lucro, e não há excesso de oferta nem de demanda.

### Estática comparativa

Deslocamentos de demanda ou oferta alteram o equilíbrio:

- **Aumento de demanda** ($D$ desloca para a direita): $P^* \uparrow$, $Q^* \uparrow$
- **Aumento de oferta** ($S$ desloca para a direita): $P^* \downarrow$, $Q^* \uparrow$

A magnitude dos ajustes depende das elasticidades: lado mais inelástico absorve mais do ajuste em preço.

---

## 3. Longo prazo: entrada e saída

No longo prazo, **livre entrada e saída** impõe:

$$\pi > 0 \xrightarrow{\text{entrada}} Q^S \uparrow \xrightarrow{} P \downarrow \xrightarrow{} \pi \downarrow$$

$$\pi < 0 \xrightarrow{\text{saída}} Q^S \downarrow \xrightarrow{} P \uparrow \xrightarrow{} \pi \uparrow$$

**Equilíbrio de longo prazo:** $\pi^* = 0 \implies P^* = CMe_{\min}$. Cada firma produz na **escala eficiente**.

### Três tipos de indústria

| Tipo | Efeito da entrada nos custos | Oferta de LP |
|---|---|---|
| Custos constantes | Nenhum | Horizontal em $P = CMe_{\min}$ |
| Custos crescentes | Entrada eleva preços dos insumos | Positivamente inclinada |
| Custos decrescentes | Entrada reduz custos (externalidades) | Negativamente inclinada |

!!! note "Intuição Econômica"
    **Lucro zero não é ruim para a firma.** Lucro econômico zero significa que a firma cobre todos os custos, incluindo o retorno normal do capital (custo de oportunidade). Os proprietários recebem exatamente o que ganhariam na melhor alternativa. Lucro contábil continua positivo. A condição $P = CMe_{\min}$ é a expressão máxima da eficiência: o consumidor paga o menor preço possível que sustenta a produção.

---

## 4. Medidas de bem-estar

### Excedente do consumidor (EC)

$$EC = \int_0^{Q^*} P^D(Q)\,dQ - P^*Q^*$$

Graficamente: área **abaixo** da demanda e **acima** do preço.

### Excedente do produtor (EP)

$$EP = P^*Q^* - \int_0^{Q^*} P^S(Q)\,dQ$$

Graficamente: área **acima** da oferta e **abaixo** do preço.

### Excedente total

$$W = EC + EP = \int_0^{Q^*}\big[P^D(Q) - P^S(Q)\big]\,dQ$$

O excedente total é maximizado quando a última unidade produzida tem benefício marginal igual ao custo marginal.

---

## 5. Primeiro Teorema do Bem-Estar e perda de peso morto

**Primeiro Teorema do Bem-Estar:** sob competição perfeita (sem externalidades, sem poder de mercado, com informação completa), o equilíbrio de mercado é **Pareto-eficiente** — maximiza o excedente total.

Qualquer desvio do equilíbrio competitivo gera **perda de peso morto** (*deadweight loss*, DWL):

$$DWL = W_{\text{equilíbrio}} - W_{\text{intervenção}} > 0$$

O peso morto representa transações mutuamente benéficas que deixam de ocorrer — uma perda líquida para a sociedade que não é capturada por ninguém.

!!! note "Intuição Econômica"
    **O preço de equilíbrio é um coordenador perfeito.** No equilíbrio competitivo, a última unidade transacionada tem disposição a pagar exatamente igual ao custo marginal. Todas as unidades anteriores geram benefício marginal superior ao custo marginal. Produzir além de $Q^*$ destruiria valor; produzir menos desperdiçaria oportunidades de ganho mútuo. Nenhum planejador central poderia fazer melhor.

---

## Gráfico interativo: equilíbrio de oferta e demanda

<div id="graph-equilibrio" style="min-height: 450px;">
<iframe src="graficos/cap13/oferta-demanda.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Desloque as curvas de demanda ou oferta e observe o novo equilíbrio
    - Visualize as áreas de EC e EP e como se redistribuem
    - Note que o excedente total é máximo no equilíbrio sem intervenção

---

## Gráfico interativo: equilíbrio de longo prazo

<div id="graph-lp" style="min-height: 450px;">
<iframe src="graficos/cap13/equilibrio-longo-prazo.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Observe a dinâmica de entrada e saída de firmas até o lucro zero
    - Compare os três tipos de indústria e suas curvas de oferta de longo prazo
    - Verifique que no equilíbrio de LP cada firma produz no mínimo do CMe

---

## Exercícios de preparação

**Exercício 1.** Um mercado tem 50 firmas idênticas com $C(q) = q^2 + 2q + 8$ e demanda $Q^D = 400 - 10P$. Encontre o equilíbrio de curto prazo e o lucro de cada firma.

??? success "Solução"
    Oferta individual: $CMg = 2q + 2 = P \implies q^S = (P-2)/2$ para $P \geq CVMe_{\min}$.

    $CVMe = q + 2$, crescente, então $CVMe_{\min} = 2$ (em $q \to 0$). Oferta válida para $P \geq 2$.

    Oferta de mercado: $Q^S = 50 \times (P-2)/2 = 25(P-2) = 25P - 50$.

    Equilíbrio: $400 - 10P = 25P - 50 \implies 35P = 450 \implies P^* \approx 12{,}86$.

    $Q^* = 400 - 128{,}6 = 271{,}4$. Cada firma: $q^* = 5{,}43$.

    Lucro: $\pi = 12{,}86(5{,}43) - [(5{,}43)^2 + 2(5{,}43) + 8] = 69{,}8 - [29{,}5 + 10{,}9 + 8] = 69{,}8 - 48{,}4 = 21{,}4$.

**Exercício 2.** No exercício anterior, qual é o preço de equilíbrio de longo prazo? Quantas firmas haverá se a demanda permanecer a mesma?

??? success "Solução"
    LP: $P = CMe_{\min}$. $CMe = q + 2 + 8/q$. Mínimo: $1 - 8/q^2 = 0 \implies q = 2\sqrt{2} \approx 2{,}83$.

    $CMe(2\sqrt{2}) = 2\sqrt{2} + 2 + 8/(2\sqrt{2}) = 2\sqrt{2} + 2 + 2\sqrt{2} = 4\sqrt{2} + 2 \approx 7{,}66$.

    Verificação: $CMg(2\sqrt{2}) = 2(2\sqrt{2}) + 2 = 4\sqrt{2} + 2 \approx 7{,}66 = CMe$.

    $Q^D(7{,}66) = 400 - 76{,}6 = 323{,}4$. Firmas: $n = 323{,}4/2{,}83 \approx 114$.

**Exercício 3.** Explique por que o equilíbrio competitivo maximiza o excedente total.

??? success "Solução"
    No equilíbrio, $P^* = CMg(Q^*)$ e $P^* = P^D(Q^*)$. Isso significa que a disposição a pagar marginal iguala o custo marginal. Para qualquer $Q < Q^*$, há consumidores dispostos a pagar mais do que o custo de produção — transações com ganho mútuo positivo. Para qualquer $Q > Q^*$, o custo supera a disposição a pagar — transações destruiriam valor. O equilíbrio $Q^*$ é exatamente o ponto onde todas as transações benéficas ocorrem e nenhuma prejudicial acontece, maximizando $W = \int_0^{Q^*}[P^D - CMg]\,dQ$.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A oferta de mercado é obtida pela soma \_\_\_\_\_\_ das ofertas individuais.

- [x] (a) Horizontal (soma das quantidades para cada preço)
- [ ] (b) Vertical (soma dos preços para cada quantidade)
- [ ] (c) Algébrica das funções custo
- [ ] (d) Geométrica das curvas

**Q2.** No equilíbrio de longo prazo com livre entrada:

- [ ] (a) Todas as firmas têm lucro positivo
- [ ] (b) $P = CMg$ mas $P > CMe$
- [x] (c) $P = CMe_{\min}$ e o lucro econômico é zero
- [ ] (d) Não há produção

**Q3.** Em uma indústria de custos constantes, um aumento permanente de demanda resulta no LP em:

- [ ] (a) Preço mais alto e mais firmas
- [x] (b) Mesmo preço e mais firmas
- [ ] (c) Preço mais alto e mesmo número de firmas
- [ ] (d) Preço mais baixo e menos firmas

**Q4.** O Primeiro Teorema do Bem-Estar afirma que:

- [ ] (a) Todo equilíbrio de mercado é justo
- [x] (b) Sob competição perfeita, o equilíbrio é Pareto-eficiente
- [ ] (c) O governo deve intervir para maximizar bem-estar
- [ ] (d) Monopólios são eficientes

**Q5.** Perda de peso morto representa:

- [ ] (a) Transferência de renda entre agentes
- [ ] (b) Custo administrativo de políticas
- [x] (c) Transações mutuamente benéficas que deixam de ocorrer
- [ ] (d) A diferença entre lucro contábil e econômico

</div>

---

!!! abstract "Próxima aula"
    **Aula 23**: Intervenção estatal — tributação, subsídios e controles de preços. Traga calculadora e prepare-se para calcular peso morto!
