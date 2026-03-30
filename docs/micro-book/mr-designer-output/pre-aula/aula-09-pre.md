# Pré-Aula 09 — Dotações, Trabalho e Escolha Intertemporal

!!! info "Leitura obrigatória"
    **Cap. 5 (seções sobre dotações) + Cap. 17 (escolha intertemporal)** do livro interativo | Tempo estimado: **50 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Distinguir demanda bruta de demanda líquida em uma economia com dotações
2. Derivar a oferta de trabalho a partir do trade-off lazer-consumo e explicar a curva de oferta backward-bending
3. Resolver o problema de Fisher (2 períodos) e classificar o agente como poupador ou devedor

---

## 1. Economia com dotações

Até agora, o consumidor recebia uma renda monetária $I$ e comprava cestas no mercado. Agora, ele **já possui** uma cesta inicial — a **dotação** $\omega = (\omega_1, \omega_2)$.

O valor da dotação aos preços de mercado define a renda:

$$I = p_1 \omega_1 + p_2 \omega_2$$

A restrição orçamentária continua:

$$p_1 x_1 + p_2 x_2 = p_1 \omega_1 + p_2 \omega_2$$

Mas agora a reta orçamentária **sempre passa pela dotação** — independentemente dos preços, o consumidor sempre pode consumir o que já tem.

---

## 2. Demanda bruta vs. demanda líquida

- **Demanda bruta**: $x_i^*$ — quanto o consumidor efetivamente consome do bem $i$.
- **Demanda líquida**: $x_i^* - \omega_i$ — quanto **compra** (se positivo) ou **vende** (se negativo) no mercado.

$$x_i^* - \omega_i > 0 \implies \text{comprador líquido do bem } i$$
$$x_i^* - \omega_i < 0 \implies \text{vendedor líquido do bem } i$$

!!! example "Exemplo numérico"
    Dotação $\omega = (10, 4)$, preços $p_1 = 2$, $p_2 = 3$. Renda: $I = 20 + 12 = 32$.

    Se a escolha ótima é $x^* = (7, 6)$:

    - Bem 1: demanda líquida $= 7 - 10 = -3$ (vende 3 unidades)
    - Bem 2: demanda líquida $= 6 - 4 = +2$ (compra 2 unidades)

---

## 3. Oferta de trabalho: lazer vs. consumo

O modelo de oferta de trabalho é um caso especial de dotações. O consumidor possui uma dotação de **tempo** $\bar{T}$ (por exemplo, 24 horas por dia).

- **Lazer**: $R$ (horas de descanso)
- **Trabalho**: $L = \bar{T} - R$ (horas trabalhadas)
- **Salário**: $w$ por hora
- **Renda não-salarial**: $m$

A restrição orçamentária:

$$C = w(\bar{T} - R) + m = w\bar{T} + m - wR$$

Rearranjando para a forma "dotação":

$$C + wR = w\bar{T} + m \equiv \text{renda plena (full income)}$$

A **renda plena** é o máximo que o consumidor poderia gastar se trabalhasse todas as $\bar{T}$ horas.

---

## 4. A curva de oferta de trabalho backward-bending

Um aumento no salário $w$ gera dois efeitos:

| Efeito | Direção | Mecanismo |
|:---|:---|:---|
| **Substituição** | Mais trabalho | Lazer ficou mais caro (custo de oportunidade subiu) |
| **Renda** | Menos trabalho | Consumidor está mais rico; lazer é bem normal |

Para **salários baixos**, o efeito substituição domina: $w \uparrow \implies L \uparrow$.

Para **salários altos**, o efeito renda domina: $w \uparrow \implies L \downarrow$.

Isso gera a famosa curva de oferta de trabalho **backward-bending** (inclinada para trás).

---

## Gráfico interativo: oferta de trabalho

<div id="graph-labor-supply" style="min-height: 450px;">
<iframe src="../../graficos/cap05/oferta-trabalho.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Aumente o salário $w$ gradualmente e observe a escolha ótima
    - Identifique o ponto em que a oferta de trabalho começa a diminuir
    - Compare os efeitos substituição e renda no diagrama de Slutsky

---

## 5. Escolha intertemporal: modelo de Fisher

Agora a "dotação" é **renda ao longo do tempo**: $(m_1, m_2)$ — renda no período 1 e no período 2.

O consumidor pode **poupar** ou **tomar emprestado** à taxa de juros $r$.

**Restrição orçamentária intertemporal:**

$$c_1 + \frac{c_2}{1+r} = m_1 + \frac{m_2}{1+r} \equiv W$$

Onde $W$ é a **riqueza** (valor presente da renda).

Equivalentemente, em valor futuro:

$$c_1(1+r) + c_2 = m_1(1+r) + m_2$$

---

## 6. Poupador vs. devedor

- **Poupador**: $c_1 < m_1$ (consome menos do que ganha no período 1, transfere renda para o futuro)
- **Devedor**: $c_1 > m_1$ (consome mais do que ganha no período 1, antecipa renda futura)

Um **aumento na taxa de juros** $r$:

- Para o **poupador**: efeito substituição (mais poupança) + efeito renda (renda efetiva sobe, pode consumir mais). Pode ir para qualquer lado, mas permanece poupador.
- Para o **devedor**: efeito substituição (menos empréstimo) + efeito renda (fica mais pobre). Ambos reduzem $c_1$ — pode até virar poupador.

!!! note "Intuição Econômica"
    **Dotações e a equação de Slutsky revisitada**

    Com dotações, a equação de Slutsky ganha um termo extra — o **efeito dotação**:

    $$\frac{\partial x_i}{\partial p_i} = \underbrace{\frac{\partial x_i^s}{\partial p_i}}_{\text{substituição}} + \underbrace{(\omega_i - x_i)\frac{\partial x_i}{\partial I}}_{\text{renda + dotação}}$$

    Quando o consumidor é **vendedor líquido** do bem ($\omega_i > x_i$), um aumento de preço o torna mais rico. Quando é **comprador líquido** ($\omega_i < x_i$), o aumento de preço o empobrece. Isso explica por que trabalhadores podem ofertar **menos** trabalho quando o salário sobe — o efeito renda da dotação de tempo domina.

---

## Exercícios de preparação

**Exercício 1.** Um consumidor tem dotação $\omega = (6, 8)$ e preferências $U = x_1 x_2$. Os preços são $p_1 = 3$ e $p_2 = 2$. Encontre a demanda bruta e a demanda líquida de cada bem.

??? success "Solução"
    Renda: $I = 3(6) + 2(8) = 34$

    Para Cobb-Douglas $U = x_1 x_2$ (expoentes iguais), a demanda marshalliana é:

    $x_1^* = \frac{I}{2p_1} = \frac{34}{6} \approx 5{,}67$; $x_2^* = \frac{I}{2p_2} = \frac{34}{4} = 8{,}5$

    Demanda líquida: $\Delta x_1 = 5{,}67 - 6 = -0{,}33$ (vende bem 1); $\Delta x_2 = 8{,}5 - 8 = +0{,}5$ (compra bem 2)

**Exercício 2.** Um trabalhador tem $\bar{T} = 16$ horas disponíveis, utilidade $U(C, R) = C^{0{,}5} R^{0{,}5}$, salário $w = 20$ e renda não-salarial $m = 40$. Quantas horas ele trabalha?

??? success "Solução"
    Renda plena: $w\bar{T} + m = 20(16) + 40 = 360$

    Para Cobb-Douglas com expoentes iguais: $R^* = \frac{360}{2 \times 20} = 9$ horas de lazer.

    Horas trabalhadas: $L^* = 16 - 9 = 7$ horas.

    Consumo: $C^* = \frac{360}{2} = 180$.

**Exercício 3.** Um agente tem renda $(m_1, m_2) = (100, 110)$ e taxa de juros $r = 10\%$. Ele é poupador ou devedor se suas preferências geram $c_1^* = 105$?

??? success "Solução"
    Riqueza: $W = 100 + \frac{110}{1{,}1} = 100 + 100 = 200$

    Como $c_1^* = 105 > m_1 = 100$, ele consome mais do que ganha no período 1.

    Portanto, é **devedor**. Toma emprestado $105 - 100 = 5$ no período 1.

    Consumo no período 2: $c_2 = (W - c_1)(1+r) = (200 - 105)(1{,}1) = 104{,}5$

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Em uma economia com dotações, a reta orçamentária sempre passa por:

- [ ] (a) A origem
- [x] (b) O ponto de dotação
- [ ] (c) O ponto de demanda ótima
- [ ] (d) O ponto $(I/p_1, 0)$

**Q2.** Se um consumidor é vendedor líquido do bem 1 e o preço de 1 sobe, o que acontece com sua renda real?

- [x] (a) Aumenta — ele está vendendo algo que ficou mais caro
- [ ] (b) Diminui — ele está pagando mais caro
- [ ] (c) Não muda — a dotação é fixa
- [ ] (d) Depende do preço do bem 2

**Q3.** A curva de oferta de trabalho é backward-bending porque:

- [ ] (a) O efeito substituição sempre domina
- [ ] (b) O efeito renda sempre domina
- [x] (c) Para salários altos, o efeito renda domina o efeito substituição
- [ ] (d) O lazer é um bem inferior

**Q4.** Na escolha intertemporal, a "riqueza" $W$ é:

- [ ] (a) A renda do período 1
- [ ] (b) A soma $m_1 + m_2$
- [x] (c) O valor presente de toda a renda futura
- [ ] (d) A poupança acumulada

**Q5.** Se a taxa de juros sobe e o agente era poupador, ele:

- [ ] (a) Necessariamente se torna devedor
- [ ] (b) Necessariamente poupa menos
- [x] (c) Continua poupador, mas o efeito sobre o consumo presente é ambíguo
- [ ] (d) Sempre aumenta a poupança

</div>

---

!!! abstract "Próxima aula"
    **Aula 09**: Mini-lecture sobre dotações e escolha intertemporal + exercícios guiados de Slutsky com dotações e modelo de Fisher.
