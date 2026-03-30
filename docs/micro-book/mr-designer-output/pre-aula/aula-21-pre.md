# Pré-Aula 21 — Monopólio e Discriminação de Preços

!!! info "Leitura obrigatória"
    **Cap. 14, Seções 14.1–14.5** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Derivar a receita marginal do monopolista e explicar por que $\text{RMg} < P$
2. Calcular preço, quantidade e lucro do monopólio usando a condição $\text{RMg} = \text{CMg}$
3. Distinguir os três graus de discriminação de preços e suas implicações sobre bem-estar

---

## 1. O que define um monopólio?

Um **monopólio** é uma estrutura de mercado com um único vendedor que enfrenta toda a curva de demanda do mercado. Diferentemente da firma competitiva (que é tomadora de preço), o monopolista é **formador de preço**: ao escolher a quantidade $q$, ele determina o preço $P(q)$.

**Barreiras à entrada** sustentam o monopólio:

| Tipo | Exemplo |
|------|---------|
| **Legal** | Patentes farmacêuticas, concessões de TV |
| **Natural** | Redes de distribuição de energia (custo fixo elevado) |
| **Estratégica** | Contratos de exclusividade, preços predatórios |

---

## 2. Receita marginal do monopolista

A receita total é $R(q) = P(q) \cdot q$. A receita marginal:

$$\text{RMg} = \frac{dR}{dq} = P + q \frac{dP}{dq}$$

Como a demanda é negativamente inclinada ($dP/dq < 0$), temos sempre:

$$\text{RMg} < P$$

!!! example "Exemplo numérico"
    Demanda linear $P = 100 - 2q$.

    $R(q) = 100q - 2q^2$

    $\text{RMg} = 100 - 4q$

    Note que a RMg tem o **mesmo intercepto** e o **dobro da inclinação** da demanda inversa.

---

## 3. Otimização do monopolista

O monopolista maximiza o lucro $\pi = R(q) - C(q)$:

$$\text{RMg}(q^*) = \text{CMg}(q^*)$$

O preço é então lido na curva de demanda: $P^* = P(q^*)$.

!!! example "Exemplo completo"
    Demanda: $P = 100 - 2q$, Custo: $C(q) = 10q + 50$.

    $\text{RMg} = 100 - 4q = 10 = \text{CMg}$

    $q^* = 22{,}5$; $P^* = 100 - 45 = 55$

    $\pi = 55 \times 22{,}5 - (10 \times 22{,}5 + 50) = 1.012{,}50 - 275 = 962{,}50$

---

## 4. O índice de Lerner

O **poder de mercado** é medido pelo índice de Lerner:

$$L = \frac{P - \text{CMg}}{P}$$

Usando a condição de otimização, pode-se mostrar que:

$$L = \frac{1}{|\varepsilon_d|}$$

onde $|\varepsilon_d|$ é a elasticidade-preço da demanda (em valor absoluto).

!!! warning "Região elástica"
    O monopolista **nunca opera na região inelástica** da demanda ($|\varepsilon_d| < 1$), pois ali $\text{RMg} < 0$: reduzir a quantidade aumentaria a receita e diminuiria o custo — seria lucrativo.

---

## 5. Peso morto do monopólio

Comparando com a concorrência perfeita (onde $P = \text{CMg}$):

- O monopolista produz **menos** ($q_m < q_c$) e cobra **mais** ($P_m > P_c$)
- Surge um **peso morto** (DWL) — triângulo entre as curvas de demanda e CMg, de $q_m$ a $q_c$:

$$\text{DWL} = \frac{1}{2}(P_m - \text{CMg})(q_c - q_m)$$

---

## 6. Discriminação de preços

O monopolista pode aumentar o lucro cobrando preços diferentes:

| Grau | Mecanismo | Exemplo BR |
|------|-----------|------------|
| **1.° grau** (perfeita) | Cobra a disposição a pagar de cada consumidor | Negociação de carro usado |
| **2.° grau** | Menu de opções (auto-seleção) | Spotify Free vs. Premium, passagens aéreas |
| **3.° grau** | Segmenta por grupo observável | Meia-entrada para estudantes, tarifa de idosos |

**Tarifa em duas partes:** cobra uma taxa fixa $T$ (que extrai o excedente) + preço por unidade $p$. Exemplo: clube de compras (anuidade + preço por item).

**Bundling (venda casada):** combina dois bens num único pacote quando as disposições a pagar são negativamente correlacionadas. Exemplo: pacotes de TV + internet.

!!! tip "Uber e preço dinâmico"
    O *surge pricing* da Uber é uma forma de discriminação de preços que varia conforme o **momento** (pico de demanda). Economicamente, aproxima-se de uma discriminação de 3.° grau com segmentação temporal.

---

## Gráfico interativo: monopólio

<div id="graph-monopolio" style="min-height: 450px;">
<iframe src="../../graficos/cap14/monopolio.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Observe como $\text{RMg}$ fica abaixo da demanda
    - Mova os parâmetros de custo e veja como $q^*$ e $P^*$ se ajustam
    - Identifique visualmente o triângulo de peso morto

---

## Box: Intuição do poder de mercado

!!! note "Intuição Econômica"
    **Por que o monopolista cobra mais e produz menos?**

    O monopolista enfrenta um *trade-off* ao vender uma unidade adicional: ganha a receita daquela unidade, mas precisa **baixar o preço de todas as unidades anteriores** (efeito preço). Esse custo implícito faz com que $\text{RMg} < P$, e a firma para de produzir antes do ponto competitivo.

    A fórmula $L = 1/|\varepsilon_d|$ revela: quanto menos elástica a demanda (consumidores sem alternativas), maior o poder de mercado. Políticas antitruste buscam justamente aumentar $|\varepsilon_d|$ — abrindo mercados, reduzindo barreiras.

---

## Exercícios de preparação

**Exercício 1.** Um monopolista enfrenta $P = 200 - 5q$ e tem $\text{CMg} = 20$. Encontre $q^*$, $P^*$ e o índice de Lerner.

??? success "Solução"
    $\text{RMg} = 200 - 10q = 20 = \text{CMg}$

    $10q = 180 \implies q^* = 18$

    $P^* = 200 - 90 = 110$

    $L = \frac{110 - 20}{110} = \frac{90}{110} \approx 0{,}818$

    O monopolista tem alto poder de mercado — o preço está 82% acima do custo marginal.

**Exercício 2.** Explique por que a discriminação de preços de 1.° grau elimina o peso morto, mas não é eficiente no sentido de equidade.

??? success "Solução"
    Na discriminação perfeita, cada consumidor paga exatamente sua disposição a pagar. Isso faz com que o monopolista produza $q_c$ (a quantidade competitiva), eliminando o DWL. Toda transação com benefício líquido positivo ocorre.

    Contudo, **todo o excedente** vai para o produtor — o excedente do consumidor é zero. Embora seja eficiente no sentido de Pareto (ninguém pode melhorar sem piorar outro), a distribuição é extremamente desigual.

**Exercício 3.** Um monopolista serve dois mercados com demandas $P_1 = 80 - q_1$ e $P_2 = 60 - 2q_2$, com $\text{CMg} = 10$ constante. Calcule preço e quantidade em cada mercado sob discriminação de 3.° grau.

??? success "Solução"
    **Mercado 1:** $\text{RMg}_1 = 80 - 2q_1 = 10 \implies q_1^* = 35$, $P_1^* = 45$

    **Mercado 2:** $\text{RMg}_2 = 60 - 4q_2 = 10 \implies q_2^* = 12{,}5$, $P_2^* = 35$

    O mercado com demanda mais inelástica (mercado 1) recebe o preço mais alto.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A receita marginal do monopolista é menor que o preço porque:

- [ ] (a) O custo marginal é crescente
- [x] (b) Para vender mais uma unidade, ele precisa reduzir o preço de todas as unidades
- [ ] (c) A demanda é perfeitamente elástica
- [ ] (d) O monopolista tem custos fixos elevados

**Q2.** O índice de Lerner de uma firma competitiva é:

- [x] (a) Zero
- [ ] (b) 1
- [ ] (c) Depende da elasticidade
- [ ] (d) Igual a $1/|\varepsilon_d|$, mas positivo

**Q3.** Um monopolista enfrenta demanda com $|\varepsilon_d| = 0{,}5$. Ele deve:

- [ ] (a) Manter a produção, pois está maximizando lucro
- [ ] (b) Aumentar a produção para ganhar escala
- [x] (c) Reduzir a produção para alcançar a região elástica
- [ ] (d) Sair do mercado

**Q4.** Qual tipo de discriminação de preços o programa de meia-entrada brasileiro exemplifica?

- [ ] (a) 1.° grau
- [ ] (b) 2.° grau
- [x] (c) 3.° grau
- [ ] (d) Tarifa em duas partes

**Q5.** V ou F: "O peso morto do monopólio surge porque o monopolista produz mais do que o socialmente ótimo."

- [ ] (a) Verdadeiro
- [x] (b) Falso — o monopolista produz menos do que o socialmente ótimo

</div>

---

!!! abstract "Próxima aula"
    **Aula 21**: Derivação formal do equilíbrio de monopólio + análise de bem-estar com exercícios guiados. Traga calculadora!
