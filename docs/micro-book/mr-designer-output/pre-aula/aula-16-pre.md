# Pré-Aula 16 — Custos CP vs LP + Envelope (Prática)

!!! info "Leitura obrigatória"
    **Cap. 10, Seções 10.6–10.8** do livro interativo | Tempo estimado: **40 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Distinguir custos de curto prazo (com fator fixo) de custos de longo prazo (todos os fatores variáveis)
2. Explicar como a curva de custo médio de longo prazo é o **envelope** das curvas de curto prazo
3. Identificar economias e deseconomias de escala a partir do formato da curva de CMe de longo prazo

---

## 1. Custos de curto prazo: fixos e variáveis

No **curto prazo**, pelo menos um fator é fixo (tipicamente o capital $\bar{K}$). O custo total se decompõe:

$$CT_{CP}(q) = CF + CV(q) = v\bar{K} + wL(q, \bar{K})$$

Onde $L(q, \bar{K})$ é a quantidade de trabalho necessária para produzir $q$ dado $\bar{K}$.

**Curvas de custo de curto prazo:**

$$\text{CMe}_{CP} = \frac{CT_{CP}}{q} = \frac{CF}{q} + \frac{CV}{q} = \text{CFMe} + \text{CVMe}$$

$$\text{CMg}_{CP} = \frac{dCT_{CP}}{dq} = \frac{dCV}{dq}$$

!!! tip "Formato em U"
    A curva de $\text{CMe}_{CP}$ tem formato em **U**: inicialmente, o custo fixo é diluído ($\text{CFMe}$ cai rápido); depois, rendimentos marginais decrescentes fazem o $\text{CVMe}$ subir. O CMg corta o CMe no ponto mínimo.

---

## 2. Custos de longo prazo: todos os fatores variáveis

No **longo prazo**, a firma pode ajustar **todos** os fatores. Para cada nível de produção $q$, ela escolhe a combinação ótima $(L^*, K^*)$ que minimiza custos:

$$CT_{LP}(q) = \min_{L,K} \; wL + vK \quad \text{s.a.} \quad f(L,K) = q$$

O resultado é a **função custo de longo prazo** $C(q)$, já estudada na Aula 15.

**Propriedade fundamental:** $CT_{LP}(q) \leq CT_{CP}(q, \bar{K})$ para qualquer $q$ e $\bar{K}$, com igualdade no nível de produção para o qual $\bar{K}$ é ótimo.

---

## 3. A curva envelope

Imagine que a firma pode operar com diferentes tamanhos de planta: $\bar{K}_1 < \bar{K}_2 < \bar{K}_3$. Cada tamanho gera uma curva de $\text{CMe}_{CP}$ em U.

A curva de $\text{CMe}_{LP}$ é o **envelope inferior** dessas curvas:

$$\text{CMe}_{LP}(q) = \min_{\bar{K}} \; \text{CMe}_{CP}(q, \bar{K})$$

Para cada $q$, o longo prazo corresponde ao melhor tamanho de planta possível.

!!! example "Visualizando o envelope"
    Com três plantas:

    - Planta pequena ($\bar{K}_1$): eficiente para $q$ baixo
    - Planta média ($\bar{K}_2$): eficiente para $q$ intermediário
    - Planta grande ($\bar{K}_3$): eficiente para $q$ alto

    O $\text{CMe}_{LP}$ "toca" cada curva de $\text{CMe}_{CP}$ exatamente no ponto onde aquele tamanho de planta é ótimo.

---

## 4. Economias e deseconomias de escala

O formato da curva de $\text{CMe}_{LP}$ revela o tipo de retorno de escala:

| Trecho da curva | $\text{CMe}_{LP}$ | Retorno de escala | Interpretação |
|---|---|---|---|
| Descendente | Caindo | Crescente | Dobrar produção custa menos que o dobro |
| Mínimo | Constante | Constante | Dobrar produção custa exatamente o dobro |
| Ascendente | Subindo | Decrescente | Dobrar produção custa mais que o dobro |

A **escala mínima eficiente (EME)** é o menor nível de $q$ em que o $\text{CMe}_{LP}$ atinge seu mínimo. Firmas menores que a EME têm desvantagem de custo.

Formalmente, economias de escala existem quando:

$$\frac{C(\lambda q)}{\lambda q} < \frac{C(q)}{q} \quad \text{para } \lambda > 1$$

---

## Gráfico interativo: curva envelope

<div id="graph-envelope" style="min-height: 450px;">
<iframe src="../../graficos/cap10/curva-envelope.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Adicione ou remova curvas de CMe de curto prazo para diferentes tamanhos de planta
    - Observe como o envelope se forma a partir das curvas individuais
    - Identifique a escala mínima eficiente no ponto mais baixo do envelope

---

## Box: Escala e estrutura de mercado

!!! note "Intuição Econômica"
    **O que o formato do envelope diz sobre o mercado?**

    Se a EME é pequena em relação à demanda total do mercado, muitas firmas podem operar eficientemente — temos um mercado competitivo (ex.: restaurantes, padarias). Se a EME é grande em relação à demanda, apenas poucas firmas cabem — temos oligopólio (ex.: aviação, siderurgia). Se a EME é tão grande que uma única firma atende todo o mercado com menor custo, temos um **monopólio natural** (ex.: distribuição de água). O envelope é, portanto, um dos determinantes fundamentais da estrutura de mercado.

---

## Preparação para a atividade prática

!!! warning "Atividade colaborativa na Aula 16"
    Na aula, você participará de uma **construção coletiva do envelope**. Cada grupo receberá um tamanho de planta diferente e calculará sua curva de CMe de curto prazo. Em seguida, reuniremos todas as curvas para visualizar o envelope emergir.

    **Prepare-se:**

    - Revise como calcular CMe e CMg a partir de uma função custo total
    - Traga calculadora
    - Pense: por que o CMe de longo prazo nunca está **acima** de nenhum CMe de curto prazo?

---

## Exercícios de preparação

**Exercício 1.** Uma firma tem $CT_{CP} = 100 + 10q + q^2$ (com $CF = 100$). Encontre CMe, CVMe, CFMe e CMg. Em que $q$ o CMe é mínimo?

??? success "Solução"
    $\text{CMe} = \frac{100}{q} + 10 + q$

    $\text{CVMe} = 10 + q$

    $\text{CFMe} = \frac{100}{q}$

    $\text{CMg} = 10 + 2q$

    Mínimo do CMe: $\frac{d(\text{CMe})}{dq} = -\frac{100}{q^2} + 1 = 0 \implies q = 10$

    $\text{CMe}(10) = 10 + 10 + 10 = 30$

    Verificação: $\text{CMg}(10) = 10 + 20 = 30 = \text{CMe}(10)$ ✓

**Exercício 2.** Explique por que $CT_{LP}(q) \leq CT_{CP}(q, \bar{K})$ para todo $q$. Em que ponto há igualdade?

??? success "Solução"
    No longo prazo, a firma pode ajustar **todos** os fatores para minimizar custos. No curto prazo, o capital é fixo em $\bar{K}$, o que restringe as opções — a firma só pode ajustar $L$. Como o longo prazo tem mais flexibilidade (o conjunto viável do LP contém o do CP como caso particular), o custo mínimo de LP nunca pode ser maior que o de CP.

    Há igualdade quando $\bar{K}$ coincide com o capital ótimo de longo prazo para aquele nível de $q$: $\bar{K} = K^*(q)$. Nesse ponto, a restrição do curto prazo não é limitante.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** No curto prazo, qual componente de custo é independente do nível de produção?

- [x] (a) Custo fixo
- [ ] (b) Custo variável
- [ ] (c) Custo marginal
- [ ] (d) Custo variável médio

**Q2.** A curva de CMe de longo prazo é chamada de "envelope" porque:

- [ ] (a) Está sempre acima das curvas de CMe de curto prazo
- [x] (b) É tangente por baixo a cada curva de CMe de curto prazo
- [ ] (c) É a soma de todas as curvas de CMe de curto prazo
- [ ] (d) É a média das curvas de CMe de curto prazo

**Q3.** Economias de escala existem quando:

- [ ] (a) O CMe de longo prazo é constante
- [x] (b) O CMe de longo prazo é decrescente
- [ ] (c) O CMe de longo prazo é crescente
- [ ] (d) O CMg é igual ao CMe

**Q4.** A escala mínima eficiente (EME) é:

- [ ] (a) O nível de produção onde o CMg é mínimo
- [x] (b) O menor nível de produção onde o CMe de longo prazo atinge seu mínimo
- [ ] (c) O nível de produção onde o custo total é mínimo
- [ ] (d) O nível de produção onde o custo fixo é zero

**Q5.** V ou F: "No ponto mínimo do CMe de curto prazo, a curva de CMe de LP necessariamente também atinge seu mínimo."

- [ ] (a) Verdadeiro
- [x] (b) Falso — o CMe de LP toca o CMe de CP no ponto onde aquele tamanho de planta é ótimo, que geralmente não é o mínimo do CMe de CP (exceto na EME)

</div>

---

!!! abstract "Próxima aula"
    **Aula 16**: Atividade prática colaborativa — construção do envelope de custos. Cada grupo calculará custos para um tamanho de planta e veremos o envelope emergir!
