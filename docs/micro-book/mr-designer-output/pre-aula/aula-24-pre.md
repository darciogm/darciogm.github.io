# Pré-Aula 24 — Monopólio I: Maximização e Bem-Estar

!!! info "Leitura obrigatória"
    **Cap. 15, Seções 15.1–15.3** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Explicar as fontes de poder de monopólio, derivar a condição $RMg = CMg$ e a regra de markup de Lerner
2. Comparar o equilíbrio de monopólio com o competitivo e calcular o custo social (triângulo de Harberger)
3. Analisar a estática comparativa do monopólio e explicar por que não existe curva de oferta

---

## 1. Barreiras à entrada e monopólio natural

O monopólio surge quando há **barreiras à entrada** que impedem outras firmas de competir:

- **Legais**: patentes, concessões, licenças exclusivas
- **Econômicas**: economias de escala, controle de insumos essenciais
- **Estratégicas**: investimentos irreversíveis, efeitos de rede

Um **monopólio natural** ocorre quando a função custo é **subaditiva** — é mais barato uma única firma produzir toda a demanda do que duas ou mais firmas dividirem o mercado:

$$C(Q) < C(Q_1) + C(Q_2) \quad \text{para\ todo\ } Q_1 + Q_2 = Q$$

Condição suficiente (mas não necessária): custo médio estritamente decrescente em toda a faixa relevante de produção.

---

## 2. Maximização de lucro do monopolista

O monopolista é a **própria indústria** — enfrenta a demanda de mercado $P(Q)$. Sua receita total é:

$$RT = P(Q) \cdot Q$$

A receita marginal é:

$$RMg = \frac{dRT}{dQ} = P + Q\frac{dP}{dQ} = P\left(1 + \frac{1}{\varepsilon_D}\right) = P\left(1 - \frac{1}{|\varepsilon_D|}\right)$$

Como $dP/dQ < 0$, temos $\boxed{RMg < P}$: para vender mais uma unidade, o monopolista precisa reduzir o preço de **todas** as unidades.

### CPO e CSO

$$RMg(Q^m) = CMg(Q^m)$$

$$\frac{dRMg}{dQ} < \frac{dCMg}{dQ} \quad \text{(RMg\ corta\ CMg\ de\ cima)}$$

---

## 3. Regra de markup e índice de Lerner

Da CPO, podemos escrever a **regra de precificação do monopólio**:

$$P\left(1 - \frac{1}{|\varepsilon_D|}\right) = CMg \implies \boxed{P = \frac{CMg}{1 - 1/|\varepsilon_D|}}$$

O **índice de Lerner** mede o poder de mercado:

$$L = \frac{P - CMg}{P} = \frac{1}{|\varepsilon_D|}$$

| $|\varepsilon_D|$ | $L$ | Markup |
|---|---|---|
| $\infty$ (competição) | $0$ | $P = CMg$ |
| $5$ | $0{,}20$ | $P = 1{,}25\,CMg$ |
| $2$ | $0{,}50$ | $P = 2\,CMg$ |
| $1{,}5$ | $0{,}67$ | $P = 3\,CMg$ |

!!! note "Intuição Econômica"
    **O monopolista cobra mais quando a demanda é mais inelástica.** Se os consumidores têm poucas alternativas ($|\varepsilon_D|$ baixo), o monopolista pode elevar o preço sem perder muitos clientes. Se a demanda é muito elástica, o markup é pequeno — o monopólio se aproxima da competição. A fórmula $L = 1/|\varepsilon_D|$ é uma das mais elegantes da microeconomia: conecta poder de mercado e elasticidade em uma única equação.

---

## 4. Monopólio vs. competição: custo social

Na **competição perfeita**: $P_c = CMg$, $Q_c$.

No **monopólio**: $P_m > CMg$, $Q_m < Q_c$.

O monopolista produz **menos** e cobra **mais**. A diferença no excedente total é o **custo social do monopólio** — o triângulo de Harberger:

$$DWL = \frac{1}{2}(P_m - CMg_m)(Q_c - Q_m) = \frac{1}{2}(P_m - P_c)(Q_c - Q_m)$$

Esse triângulo representa transações mutuamente benéficas que o monopolista suprime para manter o preço elevado. Parte do excedente do consumidor é **transferida** ao monopolista (retângulo de lucro), mas o triângulo é perda líquida.

### Ausência de curva de oferta

O monopólio **não tem curva de oferta**. Na competição, a oferta é $P = CMg$ — uma relação unívoca entre $P$ e $Q$. No monopólio, a mesma quantidade pode ser vendida a preços diferentes dependendo da forma da demanda. A decisão de produção depende de toda a curva de demanda, não apenas do preço.

---

## 5. Estática comparativa: imposto sobre o monopólio

Um imposto de $t$ por unidade eleva o custo marginal para $CMg + t$. O monopolista repassa o imposto conforme a curvatura da demanda:

- **Demanda linear**: repasse é $< t$ (em geral, $t/2$ com CMg constante)
- **Demanda isoelástica**: repasse pode ser $> t$

$$\frac{dP_m}{dt} = \frac{1}{2 - \frac{d^2P/dQ^2 \cdot Q}{dP/dQ}} \quad \text{(demanda\ geral)}$$

Para demanda linear $P = a - bQ$ e $CMg = c$: $P_m = (a + c + t)/2$, logo $dP_m/dt = 1/2$.

!!! note "Intuição Econômica"
    **O monopólio pode repassar mais de 100% do imposto.** Com demanda isoelástica, $P = CMg/(1-1/|\varepsilon|)$. Se o CMg sobe em $t$, o preço sobe em $t/(1-1/|\varepsilon|) > t$. Isso contrasta com a competição, onde o repasse nunca excede 100%. O poder de mercado amplifica a transmissão de choques de custo.

---

## Gráfico interativo: monopólio

<div id="graph-monopolio" style="min-height: 450px;">
<iframe src="graficos/cap15/monopolio.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Compare o equilíbrio de monopólio ($RMg = CMg$) com o competitivo ($P = CMg$)
    - Visualize o triângulo de Harberger (peso morto) e o retângulo de lucro do monopolista
    - Note que $RMg$ está sempre abaixo da demanda

---

## Gráfico interativo: estática comparativa

<div id="graph-estatica" style="min-height: 450px;">
<iframe src="graficos/cap15/estatica-comparativa.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Aplique um imposto e observe como o preço do monopolista se ajusta
    - Compare o repasse do imposto com demanda linear vs. isoelástica
    - Note como o DWL do monopólio aumenta com o imposto

---

## Exercícios de preparação

**Exercício 1.** Um monopolista enfrenta $P = 100 - 2Q$ com $CMg = 20$. Encontre $Q_m$, $P_m$, lucro e índice de Lerner.

??? success "Solução"
    $RT = 100Q - 2Q^2$. $RMg = 100 - 4Q$.

    $RMg = CMg$: $100 - 4Q = 20 \implies Q_m = 20$. $P_m = 100 - 40 = 60$.

    $\pi = (60 - 20) \times 20 = 800$.

    $L = (P - CMg)/P = (60 - 20)/60 = 2/3$.

    Verificação: $\varepsilon_D = -(P/Q)(1/(dP/dQ)) = -(60/20)(1/2) = -1{,}5$. $L = 1/1{,}5 = 2/3$.

**Exercício 2.** No exercício anterior, calcule o DWL comparando com o resultado competitivo.

??? success "Solução"
    Competição: $P_c = CMg = 20$. $Q_c = (100 - 20)/2 = 40$.

    $DWL = \frac{1}{2}(60 - 20)(40 - 20) = \frac{1}{2}(40)(20) = 400$.

    $EC_{\text{comp}} = \frac{1}{2}(100 - 20)(40) = 1.600$. $EP_{\text{comp}} = 0$ (CMg constante).

    $EC_{\text{mon}} = \frac{1}{2}(100 - 60)(20) = 400$. $\pi_{\text{mon}} = 800$.

    $W_{\text{comp}} = 1.600$. $W_{\text{mon}} = 400 + 800 = 1.200$. $DWL = 1.600 - 1.200 = 400$.

**Exercício 3.** Explique por que o monopolista não tem curva de oferta.

??? success "Solução"
    Uma curva de oferta é uma relação entre preço e quantidade que independe da demanda. Na competição, $P = CMg$ define essa relação: dado qualquer $P$, a firma produz $q = CMg^{-1}(P)$, independentemente da forma da demanda.

    O monopolista, porém, escolhe $Q$ onde $RMg = CMg$. Como $RMg$ depende da **forma** da curva de demanda (não apenas do nível de preço), duas demandas diferentes que passem pelo mesmo ponto $(P, Q)$ podem gerar quantidades ótimas diferentes. Não existe uma função $Q(P)$ independente da demanda — logo, não há curva de oferta.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A receita marginal do monopolista é menor que o preço porque:

- [ ] (a) O monopolista tem custos mais altos
- [x] (b) Para vender mais, precisa reduzir o preço de todas as unidades
- [ ] (c) A demanda é perfeitamente elástica
- [ ] (d) O governo cobra impostos

**Q2.** O índice de Lerner $L = (P - CMg)/P$ é igual a:

- [ ] (a) A elasticidade-preço da demanda
- [x] (b) O inverso do valor absoluto da elasticidade: $1/|\varepsilon_D|$
- [ ] (c) A parcela do lucro na receita
- [ ] (d) O peso morto dividido pela receita

**Q3.** Comparado à competição perfeita, o monopólio:

- [ ] (a) Produz mais e cobra menos
- [x] (b) Produz menos e cobra mais
- [ ] (c) Produz a mesma quantidade com preço mais alto
- [ ] (d) Maximiza o excedente total

**Q4.** O monopólio não tem curva de oferta porque:

- [ ] (a) O monopolista produz quantidade fixa
- [ ] (b) O preço é determinado pelo governo
- [x] (c) A quantidade ótima depende da forma da curva de demanda, não apenas do preço
- [ ] (d) A oferta é perfeitamente inelástica

**Q5.** Com demanda linear e CMg constante, o monopolista repassa que fração de um imposto $t$?

- [x] (a) Metade ($t/2$)
- [ ] (b) Todo o imposto ($t$)
- [ ] (c) Mais que o imposto ($> t$)
- [ ] (d) Nada — absorve integralmente

</div>

---

!!! abstract "Próxima aula"
    **Aula 25**: Monopólio II — discriminação de preços (3 graus de Pigou), tarifa em duas partes e regulação de monopólio natural. Revise o conceito de excedente do consumidor!
