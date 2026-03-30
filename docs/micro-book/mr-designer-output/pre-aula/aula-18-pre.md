# Pré-Aula 18 — Simulação: Decisão de Produção (Prática)

!!! info "Leitura obrigatória"
    **Cap. 11** (natureza da firma, Coase) + **Cap. 12 preview** do livro interativo | Tempo estimado: **40 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Explicar a natureza da firma segundo Coase e o papel dos custos de transação
2. Agregar curvas de oferta individuais para obter a oferta de mercado
3. Descrever o equilíbrio de longo prazo com livre entrada e a condição de lucro zero

---

## 1. Por que firmas existem? — Coase e custos de transação

Em 1937, Ronald Coase fez uma pergunta fundamental: se o mercado é tão eficiente em alocar recursos, **por que existem firmas?** Por que nem tudo é feito por contratos entre indivíduos autônomos?

A resposta está nos **custos de transação** — custos de usar o mercado:

- **Custos de busca**: encontrar fornecedores, comparar preços
- **Custos de negociação**: elaborar contratos, negociar termos
- **Custos de enforcement**: monitorar cumprimento, resolver disputas

!!! example "Exemplo: produzir vs. terceirizar"
    Uma montadora de automóveis pode:

    **(a)** Produzir parafusos internamente: custo de produção + gestão interna

    **(b)** Comprar de fornecedores: preço de mercado + custos de transação (busca, contratos, controle de qualidade)

    A firma existe quando o custo de organização interna é **menor** que os custos de transação do mercado.

A **fronteira da firma** é determinada pelo ponto onde o custo marginal de uma transação interna iguala o custo marginal de uma transação pelo mercado.

---

## 2. Oferta de mercado: agregação

A **oferta de mercado** é a soma horizontal das ofertas individuais. Se há $n$ firmas idênticas, cada com oferta $q^S(P)$:

$$Q^S(P) = \sum_{i=1}^{n} q_i^S(P) = n \cdot q^S(P) \quad \text{(firmas idênticas)}$$

Com firmas heterogêneas:

$$Q^S(P) = \sum_{i=1}^{n} q_i^S(P)$$

Onde cada $q_i^S(P)$ é o trecho do $CMg_i$ acima do $CVMe_{i,\min}$.

!!! example "Agregação com 2 firmas"
    Firma 1: $q_1^S = P - 4$ para $P \geq 4$

    Firma 2: $q_2^S = 2P - 6$ para $P \geq 3$

    Para $P < 3$: $Q^S = 0$

    Para $3 \leq P < 4$: $Q^S = 2P - 6$

    Para $P \geq 4$: $Q^S = (P - 4) + (2P - 6) = 3P - 10$

---

## 3. Equilíbrio de longo prazo com livre entrada

No longo prazo, **novas firmas podem entrar** e firmas existentes podem **sair** do mercado. O mecanismo é:

1. Se $\pi > 0$ (lucro positivo): novas firmas entram $\to$ oferta aumenta $\to$ $P$ cai
2. Se $\pi < 0$ (prejuízo): firmas saem $\to$ oferta diminui $\to$ $P$ sobe
3. Equilíbrio: $\pi = 0$ (lucro econômico zero)

**Condição de equilíbrio de longo prazo:**

$$\boxed{P^* = CMe_{\min} = CMg(q^*)}$$

Cada firma produz na **escala eficiente** (mínimo do CMe), cobra o preço que cobre exatamente todos os custos (incluindo custo de oportunidade), e não há incentivo para entrada ou saída.

!!! tip "Lucro zero não é ruim!"
    Lucro **econômico** zero significa que a firma cobre todos os custos, incluindo o retorno normal do capital. Os proprietários recebem exatamente o que ganhariam na melhor alternativa. Lucro contábil continua positivo.

---

## 4. Oferta de longo prazo da indústria

A **curva de oferta de longo prazo** depende de como os custos se comportam com a entrada de novas firmas:

| Tipo de indústria | Efeito da entrada nos custos | Oferta LP |
|---|---|---|
| Custos constantes | Nenhum | Horizontal em $P = CMe_{\min}$ |
| Custos crescentes | Entrada eleva preços dos insumos | Positivamente inclinada |
| Custos decrescentes | Entrada reduz custos (externalidades) | Negativamente inclinada |

---

## Preparação para a simulação

!!! warning "Simulação de mercado na Aula 18"
    Na aula, você assumirá o papel de uma **firma em um mercado competitivo**. Cada participante:

    1. Receberá uma função custo individual
    2. Decidirá **quanto produzir** dado o preço de mercado
    3. Observará o resultado agregado (oferta de mercado)
    4. Verá novas firmas entrarem (ou firmas saírem) em rodadas subsequentes

    **Prepare-se:**

    - Revise como encontrar $q^*$ dado $P$ (condição $P = CMg$)
    - Revise a decisão de fechamento ($P$ vs. $CVMe_{\min}$)
    - Pense: o que acontece com o preço se muitas firmas estão tendo lucro?

!!! note "Intuição Econômica"
    **A "mão invisível" em ação**

    A simulação ilustra como o mecanismo de preços coordena decisões descentralizadas. Nenhuma firma precisa saber o que as outras fazem — basta olhar para o preço. Se o preço é alto, produz mais; se é baixo, produz menos ou fecha. A entrada e saída de firmas ajustam automaticamente a oferta até o lucro econômico zerar. Adam Smith chamou isso de "mão invisível", e a simulação permite vivenciar essa convergência.

---

## Exercícios de preparação

**Exercício 1.** Um mercado tem 100 firmas idênticas, cada uma com custo $C(q) = q^2 + q + 16$. Encontre: (a) a oferta individual, (b) a oferta de mercado, (c) o preço de fechamento de curto prazo.

??? success "Solução"
    (a) $CMg = 2q + 1 \implies P = 2q + 1 \implies q^S = \frac{P - 1}{2}$ para $P \geq CVMe_{\min}$.

    $CV = q^2 + q \implies CVMe = q + 1$. Como $CVMe$ é crescente, $CVMe_{\min} = 1$ (em $q \to 0$). Na prática, $CMg = CVMe \implies 2q + 1 = q + 1 \implies q = 0$, confirmando $CVMe_{\min} = 1$.

    Oferta individual: $q^S = \frac{P-1}{2}$ para $P \geq 1$.

    (b) $Q^S = 100 \cdot \frac{P-1}{2} = 50(P - 1)$ para $P \geq 1$.

    (c) Preço de fechamento: $P = CVMe_{\min} = 1$.

**Exercício 2.** No exercício anterior, qual é o preço de equilíbrio de longo prazo com livre entrada? Quantas unidades cada firma produz?

??? success "Solução"
    No longo prazo: $P = CMe_{\min}$.

    $CMe = q + 1 + \frac{16}{q}$

    $\frac{d(CMe)}{dq} = 1 - \frac{16}{q^2} = 0 \implies q = 4$

    $CMe(4) = 4 + 1 + 4 = 9$

    Verificação: $CMg(4) = 9 = CMe(4)$ ✓

    No equilíbrio de longo prazo: $P^* = 9$ e cada firma produz $q^* = 4$.

**Exercício 3.** Segundo Coase, em que situação faz sentido para uma firma produzir internamente em vez de comprar no mercado?

??? success "Solução"
    Segundo Coase, a firma deve produzir internamente quando os custos de transação de usar o mercado (busca de fornecedores, negociação de contratos, monitoramento de qualidade, enforcement) excedem o custo de organização interna (gestão, hierarquia, burocracia).

    Em mercados com alta especificidade de ativos, alta incerteza ou transações frequentes, os custos de transação tendem a ser elevados, favorecendo a integração vertical. Em mercados com produtos padronizados e muitos fornecedores, os custos de transação são baixos, favorecendo a compra no mercado.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Segundo Coase, firmas existem porque:

- [ ] (a) O governo obriga a formação de empresas
- [ ] (b) É sempre mais barato produzir internamente
- [x] (c) Os custos de transação de usar o mercado podem ser maiores que os custos de organização interna
- [ ] (d) Os trabalhadores preferem empregos fixos

**Q2.** A oferta de mercado é obtida pela soma \_\_\_\_\_\_\_ das ofertas individuais.

- [x] (a) Horizontal (soma das quantidades para cada preço)
- [ ] (b) Vertical (soma dos preços para cada quantidade)
- [ ] (c) Algébrica (soma das funções custo)
- [ ] (d) Geométrica (média das curvas)

**Q3.** No equilíbrio de longo prazo com livre entrada:

- [ ] (a) Todas as firmas têm lucro positivo
- [ ] (b) $P = CMg$ mas $P > CMe$
- [x] (c) $P = CMe_{\min}$ e o lucro econômico é zero
- [ ] (d) Não há produção pois o lucro é zero

**Q4.** Se todas as firmas em um mercado competitivo estão tendo lucro econômico positivo, o que se espera no longo prazo?

- [ ] (a) As firmas aumentarão preços
- [x] (b) Novas firmas entrarão, aumentando a oferta e reduzindo o preço
- [ ] (c) As firmas reduzirão a produção
- [ ] (d) O governo intervirá para regular

**Q5.** V ou F: "Lucro econômico zero significa que a firma não cobre seus custos e deveria sair do mercado."

- [ ] (a) Verdadeiro
- [x] (b) Falso — lucro econômico zero significa que a firma cobre todos os custos, incluindo o custo de oportunidade do capital

</div>

---

!!! abstract "Próxima aula"
    **Aula 18**: Simulação de mercado competitivo — você será uma firma decidindo quanto produzir! Traga calculadora e esteja preparado para calcular rapidamente $P = CMg$.
