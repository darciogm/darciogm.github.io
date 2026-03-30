# Pré-Aula 22 — Discriminação de Preços + Regulação (Prática)

!!! info "Leitura obrigatória"
    **Cap. 14, Seções 14.6–14.8** (regulação de monopólio) + resumo de casos CADE disponível no LMS | Tempo estimado: **40 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Comparar os esquemas de regulação de monopólio natural (precificação pelo CMg, CMe e tarifa em duas partes)
2. Explicar a lógica do *price cap* (RPI – X) e da regulação por taxa de retorno
3. Descrever o papel do CADE na defesa da concorrência e identificar práticas anticompetitivas

---

## 1. O problema do monopólio natural

Um **monopólio natural** surge quando a curva de custo médio é decrescente em toda a faixa relevante de demanda — uma única firma atende o mercado a custo menor do que duas ou mais. Exemplos: distribuição de energia elétrica, saneamento, ferrovias.

A condição formal é **subaditividade de custos**:

$$C(q) < C(q_1) + C(q_2) \quad \text{para todo } q_1 + q_2 = q$$

Nesse caso, a entrada de concorrentes **aumentaria** o custo total. Mas deixar o monopolista sem regulação gera peso morto.

---

## 2. Esquemas de regulação

### 2.1 Precificação pelo custo marginal

A regra $P = \text{CMg}$ é eficiente (elimina peso morto), mas gera **prejuízo** quando o CMe é decrescente:

$$\text{Se } \text{CMe}(q) > \text{CMg}(q), \text{ então } P = \text{CMg} < \text{CMe} \implies \pi < 0$$

O governo precisaria subsidiar a firma — o que levanta problemas de financiamento e incentivos.

### 2.2 Precificação pelo custo médio

A regra $P = \text{CMe}$ garante **lucro zero** (a firma sobrevive), mas não elimina todo o peso morto:

$$\text{DWL}_{\text{CMe}} < \text{DWL}_{\text{monopólio}} \quad \text{mas} \quad \text{DWL}_{\text{CMe}} > 0$$

É uma solução de **segundo melhor** (*second best*).

### 2.3 Tarifa em duas partes regulada

Combina as vantagens: preço por unidade $p = \text{CMg}$ (eficiência) + taxa fixa $T$ que cobre o déficit:

$$T = \frac{C(q^*) - \text{CMg} \cdot q^*}{N}$$

onde $N$ é o número de consumidores. A taxa fixa não distorce a decisão marginal, mas pode excluir consumidores com baixa disposição a pagar.

---

## 3. Regulação na prática

### Taxa de retorno

O regulador fixa um **retorno justo** $s$ sobre o capital $K$:

$$\pi \leq s \cdot K$$

!!! warning "Efeito Averch-Johnson"
    A firma tem incentivo a **sobreinvestir** em capital para inflar a base $K$ e, assim, aumentar o lucro permitido $s \cdot K$. Isso gera ineficiência alocativa.

### Price cap (RPI – X)

O preço pode subir no máximo pela inflação ($\text{RPI}$) menos um fator de eficiência ($X$):

$$P_{t+1} \leq P_t \times (1 + \text{RPI} - X)$$

!!! tip "Incentivos"
    O *price cap* incentiva a firma a **cortar custos**: qualquer redução de custo abaixo do teto vira lucro para a firma (pelo menos até a próxima revisão tarifária). É o modelo usado pela ANEEL e ANATEL no Brasil.

---

## 4. CADE e defesa da concorrência

O **Conselho Administrativo de Defesa Econômica (CADE)** atua em três frentes:

| Frente | Exemplo |
|--------|---------|
| **Controle de estruturas** | Aprovação/rejeição de fusões (ex.: Nestlé-Garoto) |
| **Condutas anticompetitivas** | Cartéis, preços predatórios, venda casada |
| **Advocacia da concorrência** | Pareceres sobre regulação setorial |

!!! example "Caso emblemático"
    O **cartel dos postos de combustíveis** é um dos casos mais recorrentes no CADE. A evidência típica inclui: paralelismo de preços, comunicação entre concorrentes e margens uniformes acima do esperado.

---

## Gráfico interativo: regulação de monopólio natural

<div id="graph-regulacao" style="min-height: 450px;">
<iframe src="../../graficos/cap14/regulacao-monopolio.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Compare os resultados de $P = \text{CMg}$, $P = \text{CMe}$ e monopólio não regulado
    - Observe o prejuízo gerado pela precificação marginal (área hachurada)
    - Identifique o DWL residual na precificação pelo custo médio

---

## Box: Regulação e incentivos

!!! note "Intuição Econômica"
    **O dilema fundamental da regulação**

    O regulador enfrenta um problema de **informação assimétrica**: a firma conhece seus custos melhor do que o regulador. Se o regulador fixa $P = \text{CMe}$, a firma não tem incentivo para reduzir custos — qualquer economia será "devolvida" via preço menor.

    O *price cap* resolve parcialmente: ao fixar um teto que independe dos custos realizados, a firma captura os ganhos de eficiência. Porém, se o $X$ for muito alto, a firma pode cortar custos em **qualidade** (racionamento, manutenção precária). Por isso, reguladores modernos combinam *price cap* com **indicadores de qualidade**.

---

## Preparação para a aula prática

!!! abstract "Atividades em sala"
    A Aula 22 terá duas atividades práticas:

    1. **Simulação de discriminação de preços**: você será um monopolista escolhendo menus de preços para diferentes segmentos
    2. **Tribunal do CADE**: análise de um caso real de fusão — prepare argumentos pró e contra a aprovação

    Leia o caso disponível no LMS e anote: (a) qual o mercado relevante, (b) qual a participação de mercado pós-fusão, (c) quais as eficiências alegadas.

---

## Exercícios de preparação

**Exercício 1.** Um monopólio natural tem $C(q) = 500 + 5q$ e enfrenta demanda $P = 50 - q$. Calcule: (a) o resultado de monopólio; (b) o resultado com $P = \text{CMg}$; (c) o resultado com $P = \text{CMe}$.

??? success "Solução"
    **(a) Monopólio:** $\text{RMg} = 50 - 2q = 5 \implies q_m = 22{,}5$, $P_m = 27{,}5$

    $\pi_m = 27{,}5 \times 22{,}5 - (500 + 112{,}5) = 618{,}75 - 612{,}5 = 6{,}25$

    **(b) $P = \text{CMg} = 5$:** $5 = 50 - q \implies q_c = 45$

    $\pi = 5 \times 45 - (500 + 225) = 225 - 725 = -500$ (prejuízo)

    **(c) $P = \text{CMe}$:** $\text{CMe} = 500/q + 5$

    $50 - q = 500/q + 5 \implies 45q - q^2 = 500 \implies q^2 - 45q + 500 = 0$

    $q = \frac{45 \pm \sqrt{2025 - 2000}}{2} = \frac{45 \pm 5}{2}$

    $q = 25$ (solução relevante), $P = 25$, $\pi = 0$ ✓

**Exercício 2.** Explique a diferença entre regulação por taxa de retorno e *price cap* em termos de incentivos à eficiência.

??? success "Solução"
    **Taxa de retorno:** a firma recebe $\pi = s \cdot K$. O incentivo é **aumentar o capital** (efeito Averch-Johnson), não reduzir custos operacionais. Qualquer ganho de eficiência reduz os custos, mas o regulador ajusta o preço para manter $\pi = s \cdot K$, eliminando o incentivo.

    **Price cap:** o teto de preço é fixo (ajustado apenas pela inflação menos $X$). Se a firma reduz custos, a diferença entre o teto e o custo vira **lucro retido**. O incentivo para cortar custos é forte — pelo menos até a próxima revisão tarifária.

    Em resumo: taxa de retorno incentiva sobreinvestimento; *price cap* incentiva eficiência operacional (mas pode comprometer qualidade).

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Um monopólio natural é caracterizado por:

- [ ] (a) Lucros extraordinários permanentes
- [ ] (b) Barreiras legais à entrada
- [x] (c) Custos médios decrescentes na faixa relevante de demanda
- [ ] (d) Demanda perfeitamente inelástica

**Q2.** A precificação pelo custo marginal em monopólio natural gera:

- [x] (a) Eficiência alocativa, mas prejuízo para a firma
- [ ] (b) Lucro zero e eficiência alocativa
- [ ] (c) Peso morto menor que a precificação pelo CMe
- [ ] (d) Incentivo ao sobreinvestimento

**Q3.** O efeito Averch-Johnson está associado a qual tipo de regulação?

- [ ] (a) Price cap
- [x] (b) Taxa de retorno
- [ ] (c) Precificação pelo custo marginal
- [ ] (d) Tarifa em duas partes

**Q4.** Na fórmula do *price cap* (RPI – X), o fator X representa:

- [ ] (a) A taxa de lucro permitida
- [ ] (b) A inflação esperada
- [x] (c) O ganho de eficiência esperado do setor
- [ ] (d) O imposto sobre a receita

**Q5.** Qual das seguintes NÃO é uma atribuição do CADE?

- [ ] (a) Analisar fusões e aquisições
- [ ] (b) Investigar cartéis
- [x] (c) Fixar tarifas de energia elétrica
- [ ] (d) Emitir pareceres sobre regulação setorial

</div>

---

!!! abstract "Próxima aula"
    **Aula 22**: Simulação de discriminação de preços + Tribunal do CADE. Venha preparado com o caso lido!
