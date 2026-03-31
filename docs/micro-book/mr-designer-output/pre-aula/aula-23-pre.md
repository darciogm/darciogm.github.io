# Pré-Aula 23 — Intervenção Estatal: Tributação, Subsídios e Controles

!!! info "Leitura obrigatória"
    **Cap. 13, Seções 13.5–13.8** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Analisar a incidência tributária e sua relação com elasticidades, incluindo a propriedade de que o peso morto cresce com $t^2$
2. Calcular os efeitos de preços-teto, preços-piso e subsídios sobre excedentes e peso morto
3. Aplicar o arcabouço de bem-estar a políticas brasileiras (ICMS combustível, salário mínimo, PGPM)

---

## 1. Incidência tributária e elasticidades

Um imposto específico de $t$ por unidade cria uma cunha entre o preço pago pelo consumidor ($P_C$) e o recebido pelo produtor ($P_P$):

$$P_C = P_P + t$$

**Quem paga o imposto?** Não importa sobre quem é legalmente cobrado — a **incidência econômica** depende das elasticidades:

$$\frac{\Delta P_C}{t} = \frac{\varepsilon_S}{\varepsilon_S - \varepsilon_D}, \qquad \frac{-\Delta P_P}{t} = \frac{-\varepsilon_D}{\varepsilon_S - \varepsilon_D}$$

**Regra geral:** o lado mais **inelástico** absorve a maior parcela do imposto.

!!! note "Intuição Econômica"
    **A incidência recai sobre quem não pode escapar.** Se a demanda é muito inelástica (consumidores precisam do bem — pense em insulina), o produtor consegue repassar quase todo o imposto ao consumidor via preço. Se a oferta é muito inelástica (fazendeiro com terra fixa), o produtor absorve quase todo o imposto. A elasticidade mede a capacidade de "fugir" do imposto.

---

## 2. Imposto específico vs. *ad valorem*

### Imposto específico

Valor fixo por unidade: $t$ reais/unidade. Desloca a curva de oferta **paralelamente** para cima.

### Imposto *ad valorem*

Alíquota sobre o preço: $P_C = (1+\tau)P_P$. A cunha é proporcional ao preço — desloca a oferta de forma **não paralela** (mais em preços altos).

### Peso morto cresce com $t^2$

Para demanda e oferta lineares:

$$DWL = \frac{1}{2}\,t\,(Q^* - Q_t) = \frac{t^2}{2}\cdot\frac{|\varepsilon_D|\varepsilon_S}{(\varepsilon_S - \varepsilon_D)}\cdot\frac{Q^*}{P^*}$$

A implicação é crucial: **dobrar o imposto quadruplica o peso morto**. Isso justifica a regra de Ramsey — é mais eficiente cobrar impostos pequenos sobre muitas bases do que impostos grandes sobre poucas.

---

## 3. Preços-teto e preços-piso

### Preço-teto ($\bar{P} < P^*$)

Gera **excesso de demanda** (escassez):

$$Q^D(\bar{P}) > Q^S(\bar{P}) \implies \text{escassez} = Q^D - Q^S$$

Consequências: filas, mercado negro, deterioração da qualidade, racionamento.

$$DWL = \frac{1}{2}\big[P^D(Q_S) - P^S(Q_S)\big](Q^* - Q_S)$$

### Preço-piso ($\underline{P} > P^*$)

Gera **excesso de oferta** (excedente):

$$Q^S(\underline{P}) > Q^D(\underline{P}) \implies \text{excedente} = Q^S - Q^D$$

Consequências: estoques não vendidos, desperdício, custo de armazenamento.

---

## 4. Subsídios

Um subsídio de $s$ por unidade é um "imposto negativo":

$$P_P = P_C + s$$

O preço ao consumidor cai, o preço ao produtor sobe, e a quantidade transacionada **aumenta** além do equilíbrio. Há peso morto porque unidades com custo marginal superior ao benefício marginal são produzidas:

$$DWL_{\text{subsídio}} = \frac{1}{2}\,s\,(Q_s - Q^*)$$

!!! note "Intuição Econômica"
    **Subsídio nem sempre é ineficiente.** Se há externalidade positiva (vacinação, educação, transporte público que reduz congestionamento), o benefício social marginal excede o privado. Um subsídio que iguale $s$ à externalidade marginal move o mercado para o ótimo social, eliminando em vez de criar peso morto.

---

## 5. Aplicações ao Brasil

### ICMS sobre combustíveis

A demanda por gasolina é relativamente **inelástica** no curto prazo. Logo, a maior parcela do ICMS recai sobre o consumidor. A redução da CIDE em 2022 beneficiou predominantemente os consumidores — mas o custo fiscal reduziu investimentos públicos.

### Salário mínimo como preço-piso

O salário mínimo é um $\underline{P}$ no mercado de trabalho. Se $\underline{w} > w^*$ (salário de equilíbrio), gera excesso de oferta de trabalho (desemprego). A magnitude depende das elasticidades de oferta e demanda por trabalho. No Brasil, evidências sugerem efeito significativo sobre o setor informal.

### PGPM — Preço mínimo agrícola

A Política de Garantia de Preços Mínimos garante $\underline{P} > P^*$ para milho, arroz, feijão. O governo compra o excedente (estoques reguladores) ou paga a diferença (subvenção). Custo fiscal: manutenção de estoques e perdas por deterioração. Objetivo: estabilizar renda rural e garantir abastecimento.

---

## Gráfico interativo: incidência tributária

<div id="graph-imposto" style="min-height: 450px;">
<iframe src="graficos/cap13/incidencia-tributaria.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Altere o valor do imposto e observe a cunha entre $P_C$ e $P_P$
    - Mude as elasticidades e veja quem absorve mais do imposto
    - Note como o triângulo de peso morto cresce quadraticamente com $t$

---

## Gráfico interativo: controles de preços

<div id="graph-controles" style="min-height: 450px;">
<iframe src="graficos/cap13/controles-precos.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Aplique um preço-teto abaixo do equilíbrio e visualize a escassez
    - Aplique um preço-piso acima do equilíbrio e visualize o excedente
    - Compare o peso morto do controle de preços com o do imposto

---

## Exercícios de preparação

**Exercício 1.** Um mercado tem demanda $Q^D = 100 - 2P$ e oferta $Q^S = 3P - 25$. O governo impõe imposto de $t = 5$. Encontre $P_C$, $P_P$, $Q_t$, receita fiscal e DWL.

??? success "Solução"
    Sem imposto: $100 - 2P = 3P - 25 \implies P^* = 25$, $Q^* = 50$.

    Com imposto: $100 - 2(P_P + 5) = 3P_P - 25 \implies 90 - 2P_P = 3P_P - 25 \implies P_P = 23$, $P_C = 28$.

    $Q_t = 100 - 56 = 44$.

    Receita: $R = 5 \times 44 = 220$.

    $DWL = \frac{1}{2}(5)(50 - 44) = 15$.

    Incidência: consumidor paga $+3$; produtor absorve $-2$. Isso reflete $\varepsilon_S/|\varepsilon_D| = 1{,}5/1 = 1{,}5$.

**Exercício 2.** No mesmo mercado, o governo fixa um preço-teto $\bar{P} = 20$. Calcule a escassez e o DWL.

??? success "Solução"
    $Q^D(20) = 60$, $Q^S(20) = 35$. Escassez: $25$ unidades.

    Quantidade transacionada: $Q = 35$.

    $P^D(35) = (100 - 35)/2 = 32{,}5$ (disposição a pagar marginal).

    $DWL = \frac{1}{2}(32{,}5 - 20)(50 - 35) = \frac{1}{2}(12{,}5)(15) = 93{,}75$.

    O DWL do teto de preço ($93{,}75$) é muito maior que o do imposto ($15$), pois a distorção é mais severa.

**Exercício 3.** Explique por que dobrar um imposto mais do que dobra o peso morto. Qual a implicação para política tributária?

??? success "Solução"
    $DWL \propto t^2$. Se $t$ dobra, $DWL$ quadruplica. Isso ocorre porque o imposto maior não apenas reduz mais a quantidade (efeito linear), mas a "cunha" entre benefício e custo marginal também cresce (efeito proporcional a $t$). O produto dos dois efeitos dá $t^2$.

    Implicação (Regra de Ramsey): é mais eficiente arrecadar a mesma receita com **muitos impostos pequenos** sobre bases amplas do que com **poucos impostos altos** sobre bases estreitas. Isso minimiza o peso morto total.

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
- [x] (b) O quadrado do imposto
- [ ] (c) A receita fiscal, proporcionalmente
- [ ] (d) O número de firmas no mercado

**Q3.** Um preço-teto abaixo do equilíbrio gera:

- [ ] (a) Excesso de oferta
- [x] (b) Excesso de demanda (escassez)
- [ ] (c) Nenhum efeito
- [ ] (d) Aumento do excedente total

**Q4.** No caso do PGPM brasileiro, o preço-piso agrícola gera:

- [x] (a) Excesso de oferta que o governo precisa absorver
- [ ] (b) Escassez de produtos agrícolas
- [ ] (c) Redução no excedente do produtor
- [ ] (d) Eliminação do peso morto

**Q5.** Um subsídio pode aumentar o bem-estar total quando:

- [ ] (a) Sempre — subsídios nunca geram peso morto
- [ ] (b) Quando a demanda é perfeitamente elástica
- [x] (c) Quando corrige uma externalidade positiva
- [ ] (d) Quando o governo tem superávit fiscal

</div>

---

!!! abstract "Próxima aula"
    **Aula 24**: Monopólio I — maximização de lucro com poder de mercado, regra de markup e custo social. Revise a relação entre RMg e elasticidade!
