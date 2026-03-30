# Pré-Aula 20 — Políticas Públicas e Peso Morto no Brasil (Prática)

!!! info "Leitura obrigatória"
    **Cap. 12, Seções 12.6–12.8** + material complementar sobre políticas brasileiras | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Analisar os efeitos de impostos (específicos e *ad valorem*), subsídios, preços-teto e preços-piso sobre equilíbrio, excedentes e peso morto
2. Aplicar o princípio da incidência tributária e sua relação com elasticidades
3. Avaliar criticamente quatro políticas públicas brasileiras usando o arcabouço de bem-estar

---

## 1. Impostos: específico vs. *ad valorem*

### Imposto específico

Um imposto de $t$ reais por unidade cria uma cunha entre o preço pago pelo consumidor ($P_C$) e o recebido pelo produtor ($P_P$):

$$P_C = P_P + t$$

No equilíbrio: $Q^D(P_C) = Q^S(P_P) = Q^S(P_C - t)$

### Imposto *ad valorem*

Um imposto de alíquota $\tau$ sobre o preço:

$$P_C = (1 + \tau) P_P$$

!!! example "Exemplo: imposto específico"
    Demanda: $Q^D = 100 - 2P_C$. Oferta: $Q^S = 3P_P - 25$. Imposto: $t = 5$.

    $P_C = P_P + 5$. Substituindo: $100 - 2(P_P + 5) = 3P_P - 25$

    $90 - 2P_P = 3P_P - 25 \implies P_P = 23$, $P_C = 28$

    $Q_t = 100 - 56 = 44$

    Sem imposto: $P^* = 25$, $Q^* = 50$ (da Aula 19).

    O consumidor paga $3$ a mais; o produtor recebe $2$ a menos.

---

## 2. Incidência tributária e elasticidade

Quem "paga" o imposto não depende de sobre quem ele é legalmente cobrado, mas das **elasticidades**:

$$\frac{\Delta P_C}{\Delta P_P} = \frac{|\varepsilon_S|}{|\varepsilon_D|}$$

**Regra geral:** o lado mais **inelástico** do mercado absorve a maior parcela do imposto.

- Se $|\varepsilon_D| < |\varepsilon_S|$: consumidores pagam mais
- Se $|\varepsilon_D| > |\varepsilon_S|$: produtores pagam mais

### Peso morto do imposto

$$DWL = \frac{1}{2} t (Q^* - Q_t)$$

O peso morto cresce com o quadrado da alíquota — dobrar o imposto quadruplica o peso morto.

---

## 3. Preços-teto e preços-piso

### Preço-teto ($\bar{P} < P^*$)

Gera **escassez**: $Q^D(\bar{P}) > Q^S(\bar{P})$. Consequências: filas, mercado negro, deterioração da qualidade.

$$DWL = \frac{1}{2}\big[P^D(Q_S) - \bar{P}\big](Q^* - Q_S)$$

### Preço-piso ($\underline{P} > P^*$)

Gera **excedente**: $Q^S(\underline{P}) > Q^D(\underline{P})$. Consequências: estoques não vendidos, desperdício.

---

## 4. Subsídios

Um subsídio de $s$ por unidade é um "imposto negativo":

$$P_C = P_P - s$$

Efeito: preço ao consumidor cai, preço ao produtor sobe, quantidade aumenta para além do equilíbrio. Há peso morto porque unidades com custo marginal superior ao benefício marginal são produzidas.

$$DWL_{\text{subsídio}} = \frac{1}{2} s (Q_s - Q^*)$$

---

## 5. Quatro casos brasileiros

### Caso 1: Tributação de combustíveis (CIDE + ICMS)

O preço da gasolina no Brasil embute CIDE (imposto federal específico) e ICMS (imposto estadual *ad valorem*). A demanda por combustível é relativamente **inelástica** no curto prazo (as pessoas precisam se deslocar).

- **Incidência**: maior parcela recai sobre o consumidor
- **Peso morto**: relativamente pequeno (demanda inelástica) mas significativo em escala
- **Debate**: redução da CIDE em 2022 — quem se beneficiou?

### Caso 2: Controle de aluguéis

Historicamente, o Brasil adotou políticas de congelamento de aluguéis (Lei do Inquilinato de 1991 flexibilizou). Um preço-teto no mercado de aluguel:

- **Efeito**: escassez habitacional, deterioração dos imóveis, mercado informal
- **Quem é prejudicado?** Inquilinos que não conseguem encontrar imóvel; proprietários que reduzem manutenção
- **Peso morto**: transações habitacionais que deixam de ocorrer

### Caso 3: Preço mínimo agrícola (PGPM)

A Política de Garantia de Preços Mínimos garante aos agricultores um preço-piso para produtos como milho, arroz e feijão:

$$\underline{P}_{\text{PGPM}} > P^*_{\text{mercado}} \implies \text{excedente de produção}$$

- **Efeito**: governo compra o excedente (estoques reguladores) ou paga a diferença de preços
- **Custo fiscal**: manutenção de estoques, perdas por deterioração
- **Peso morto**: superproduçao além do socialmente eficiente

### Caso 4: Subsídio ao transporte público

Cidades brasileiras subsidiam tarifas de ônibus e metrô para manter preços acessíveis:

- **Objetivo**: garantir mobilidade urbana, reduzir desigualdade
- **Efeito**: $P_C < CMg$ para o usuário $\to$ quantidade demandada acima do ótimo privado
- **Justificativa econômica**: se há **externalidade positiva** (menos carros, menos poluição), o subsídio pode ser eficiente — corrige uma falha de mercado
- **Peso morto**: depende se o subsídio corrige ou excede a externalidade

!!! tip "Lições dos casos"
    Nenhuma política é universalmente boa ou ruim. A análise de bem-estar (excedentes + peso morto) nos dá uma linguagem precisa para avaliar *trade-offs*. O subsídio ao transporte pode ser eficiente se corrige externalidades; o controle de aluguéis gera ineficiência se o preço-teto está muito abaixo do equilíbrio.

---

## Gráfico interativo: incidência tributária

<div id="graph-imposto" style="min-height: 450px;">
<iframe src="../../graficos/cap12/imposto-incidencia.html" width="100%" height="450" frameborder="0" style="border: 1px solid #ddd; border-radius: 6px;"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Altere o valor do imposto e observe a cunha entre $P_C$ e $P_P$
    - Mude as elasticidades de oferta e demanda para ver quem absorve mais o imposto
    - Note como o triângulo de peso morto cresce com o imposto

---

## Box: A armadilha do pensamento parcial

!!! note "Intuição Econômica"
    **Por que a análise de equilíbrio geral importa para políticas públicas?**

    Quando o governo reduz o ICMS da gasolina, o efeito direto é claro: preço menor na bomba. Mas a análise parcial esconde efeitos indiretos — menor arrecadação estadual significa menos investimento em saúde e educação, e o preço menor incentiva mais consumo de combustível fóssil. A microeconomia nos ensina que toda intervenção tem custos (peso morto) e benefícios (correção de falhas), e a boa política pública é aquela em que os benefícios superam os custos. O triângulo de Harberger é uma ferramenta simples mas poderosa para essa contabilidade.

---

## Preparação para a atividade prática

!!! warning "Atividade na Aula 20"
    Na aula, cada grupo receberá um dos 4 casos brasileiros e deverá:

    1. Modelar o mercado com curvas de oferta e demanda (valores simulados)
    2. Calcular o equilíbrio sem intervenção
    3. Aplicar a política pública e calcular o novo equilíbrio
    4. Mensurar mudanças em EC, EP, receita fiscal e peso morto
    5. Apresentar recomendação: manter, reformar ou eliminar a política?

    **Prepare-se:** revise o cálculo de áreas de excedentes e peso morto. Pense em argumentos a favor e contra cada política.

---

## Exercícios de preparação

**Exercício 1.** Um mercado tem demanda $Q^D = 80 - P$ e oferta $Q^S = 2P - 10$. O governo impõe um imposto de $t = 6$ por unidade. Encontre: (a) equilíbrio sem imposto, (b) equilíbrio com imposto ($P_C$, $P_P$, $Q_t$), (c) receita fiscal, (d) peso morto.

??? success "Solução"
    (a) Sem imposto: $80 - P = 2P - 10 \implies 3P = 90 \implies P^* = 30$, $Q^* = 50$.

    (b) Com imposto: $P_C = P_P + 6$.

    $80 - (P_P + 6) = 2P_P - 10 \implies 84 = 3P_P \implies P_P = 28$, $P_C = 34$.

    $Q_t = 80 - 34 = 46$.

    (c) Receita fiscal: $R = t \cdot Q_t = 6 \times 46 = 276$.

    (d) $DWL = \frac{1}{2} \times 6 \times (50 - 46) = \frac{1}{2} \times 6 \times 4 = 12$.

    Parcela paga pelo consumidor: $34 - 30 = 4$ (2/3 do imposto).

    Parcela paga pelo produtor: $30 - 28 = 2$ (1/3 do imposto).

    Isso é consistente: demanda tem elasticidade $|\varepsilon_D| = 30/50 = 0{,}6$; oferta tem $\varepsilon_S = 60/50 = 1{,}2$. Demanda mais inelástica absorve mais.

**Exercício 2.** No mesmo mercado, suponha que o governo imponha um preço-teto de $\bar{P} = 24$. Calcule a escassez e o peso morto.

??? success "Solução"
    $Q^D(24) = 80 - 24 = 56$

    $Q^S(24) = 2(24) - 10 = 38$

    Escassez: $56 - 38 = 18$ unidades.

    Quantidade transacionada: $Q = 38$ (lado curto).

    $P^D(38) = 80 - 38 = 42$ (disposição a pagar pela última unidade transacionada).

    $DWL = \frac{1}{2}(42 - 24)(50 - 38) = \frac{1}{2}(18)(12) = 108$

    Note que o peso morto do preço-teto ($108$) é muito maior que o do imposto ($12$), porque a distorção é mais severa.

**Exercício 3.** Um subsídio pode ser eficiente? Dê um exemplo e explique a condição para que o subsídio aumente o bem-estar total.

??? success "Solução"
    Um subsídio pode ser eficiente quando corrige uma **externalidade positiva** — quando o benefício social marginal excede o benefício privado marginal.

    Exemplo: vacinação. O benefício privado de se vacinar inclui apenas a proteção individual. O benefício social inclui também a proteção dos outros (imunidade de rebanho). Sem subsídio, o mercado gera quantidade abaixo do ótimo social.

    Condição: o subsídio deve ser igual à externalidade marginal no ótimo social: $s = BMg_{\text{social}} - BMg_{\text{privado}}$. Se o subsídio exceder a externalidade, há peso morto por superprodução. O subsídio eficiente internaliza a externalidade, movendo a quantidade de mercado para o ótimo social.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A incidência econômica de um imposto depende de:

- [ ] (a) Sobre quem o imposto é legalmente cobrado
- [x] (b) Das elasticidades relativas de oferta e demanda
- [ ] (c) Do tamanho do mercado
- [ ] (d) Da receita fiscal arrecadada

**Q2.** O peso morto de um imposto cresce com:

- [ ] (a) O valor absoluto do imposto, linearmente
- [x] (b) O quadrado do imposto (dobrar $t$ quadruplica DWL)
- [ ] (c) A receita fiscal, proporcionalmente
- [ ] (d) O número de firmas no mercado

**Q3.** Um preço-teto abaixo do equilíbrio gera:

- [ ] (a) Excesso de oferta
- [x] (b) Excesso de demanda (escassez)
- [ ] (c) Nenhum efeito se bem administrado
- [ ] (d) Aumento do excedente total

**Q4.** No caso do PGPM brasileiro, o preço-piso agrícola gera:

- [x] (a) Excesso de oferta que o governo precisa absorver
- [ ] (b) Escassez de produtos agrícolas
- [ ] (c) Redução no excedente do produtor
- [ ] (d) Eliminação do peso morto

**Q5.** V ou F: "Um subsídio ao transporte público sempre gera peso morto e é, portanto, sempre ineficiente."

- [ ] (a) Verdadeiro
- [x] (b) Falso — se há externalidade positiva (menos poluição, menos congestionamento), o subsídio pode corrigir uma falha de mercado e aumentar a eficiência

</div>

---

!!! abstract "Próxima aula"
    **Aula 20**: Atividade prática — análise de políticas públicas brasileiras com cálculo de excedentes e peso morto. Traga calculadora e prepare seus argumentos!
