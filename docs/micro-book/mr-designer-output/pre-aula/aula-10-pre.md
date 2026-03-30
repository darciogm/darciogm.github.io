# Pré-Aula 10 — Simulação: Mercado de Trabalho (Prática)

!!! info "Leitura obrigatória"
    **Material sobre mercado de trabalho jovem brasileiro + dados IBGE** | Tempo estimado: **40 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Descrever os principais indicadores do mercado de trabalho jovem (18–24 anos) no Brasil
2. Conectar os conceitos de oferta de trabalho (lazer-consumo, efeito renda/substituição) a fenômenos reais como informalidade e desemprego juvenil
3. Formular argumentos econômicos estruturados para o debate sobre salário mínimo e política de emprego jovem

---

## 1. O mercado de trabalho jovem no Brasil: panorama

O Brasil apresenta um padrão recorrente: a taxa de desemprego entre jovens de 18 a 24 anos é **cerca de 2 a 3 vezes maior** do que a taxa geral.

Dados recentes (PNAD Contínua / IBGE):

| Indicador | Jovens (18–24) | Geral |
|:---|:---|:---|
| Taxa de desemprego | ~18–22% | ~7–9% |
| Informalidade | ~45–55% | ~38–40% |
| Renda média | ~R$ 1.200–1.500 | ~R$ 2.800–3.200 |
| Jovens "nem-nem" (NEET) | ~20–25% do grupo | — |

!!! warning "Dados aproximados"
    Os valores acima são ordens de grandeza para contextualização. Na aula, trabalharemos com a série histórica atualizada do IBGE. Consulte a [PNAD Contínua](https://www.ibge.gov.br/estatisticas/sociais/trabalho.html) para os dados mais recentes.

---

## 2. Conectando teoria e realidade

### O modelo lazer-consumo e o jovem brasileiro

No modelo teórico da Pré-Aula 09, o trabalhador escolhe entre lazer $R$ e consumo $C$:

$$\max_{C, R} U(C, R) \quad \text{s.a.} \quad C + wR = w\bar{T} + m$$

Na realidade do jovem brasileiro, vários elementos complicam este modelo:

- **Renda não-salarial $m$**: apoio familiar, programas sociais (Bolsa Família), moradia com os pais
- **Salário de reserva**: $w^*$ tal que o jovem é indiferente entre trabalhar e não trabalhar. Se $w_{\text{mercado}} < w^*$, o jovem fica fora do mercado
- **Custos fixos de trabalhar**: transporte, alimentação, vestuário — reduzem o salário efetivo

### Informalidade como "solução" de mercado

Para muitos jovens, o salário mínimo legal supera sua produtividade marginal. O mercado informal surge como um equilíbrio onde:

$$w_{\text{informal}} < w_{\text{mínimo}} \leq w_{\text{formal}}$$

O trabalhador aceita menos em troca de **flexibilidade** e **acesso imediato** ao mercado.

---

## 3. O debate sobre salário mínimo

O salário mínimo pode ser analisado como um **piso de preço** no mercado de trabalho:

$$w_{\text{mín}} > w^* \implies \text{excesso de oferta (desemprego)}$$

Mas a realidade é mais complexa do que o modelo competitivo simples:

**Argumentos a favor do aumento:**

- Poder de monopsônio de empregadores — o piso corrige distorção
- Efeito multiplicador sobre demanda agregada
- Redução de desigualdade salarial

**Argumentos contra o aumento:**

- Destruição de postos formais, especialmente para jovens e menos qualificados
- Migração para informalidade
- Compressão salarial (perda de diferenciação)

!!! note "Intuição Econômica"
    **O paradoxo do salário mínimo para o jovem**

    O jovem tem, em média, menor produtividade (menos experiência, menos treinamento). Se o salário mínimo for fixado acima de sua produtividade marginal, a firma racional não o contrata. Porém, sem o primeiro emprego, o jovem não acumula capital humano — criando uma armadilha.

    Este é um exemplo clássico de **falha de coordenação**: individualmente, nenhuma firma quer investir no treinamento (o jovem pode sair), mas coletivamente, todas se beneficiariam de uma força de trabalho mais qualificada.

---

## 4. FIES, educação e o mercado de trabalho

O FIES (Fundo de Financiamento Estudantil) é um caso de **escolha intertemporal aplicada**:

$$\text{Investir em educação} \iff c_1 \downarrow, \; c_2 \uparrow$$

O estudante sacrifica consumo presente (e trabalho) em troca de maior produtividade e renda futura.

Questões relevantes para o debate:

- Qual a taxa de retorno da educação superior no Brasil?
- O endividamento do FIES é compatível com os salários iniciais dos formandos?
- Como a inadimplência do FIES reflete uma falha na estimativa de $m_2$ (renda futura)?

---

## 5. Preparação para a simulação

Na próxima aula, faremos uma **simulação de negociação** sobre política de emprego jovem. Cada grupo representará um ator:

| Grupo | Papel | Interesse principal |
|:---|:---|:---|
| A | Sindicato dos trabalhadores | Proteção salarial, formalização |
| B | Federação da indústria | Flexibilização, redução de custos |
| C | Governo (Ministério do Trabalho) | Emprego + proteção social |
| D | Jovens trabalhadores informais | Acesso ao mercado, qualificação |
| E | Economistas acadêmicos | Eficiência, evidência empírica |

!!! tip "Como se preparar"
    1. Leia o material complementar sobre seu grupo (disponível no LMS)
    2. Prepare **3 argumentos econômicos** baseados nos conceitos de oferta de trabalho, salário mínimo e escolha intertemporal
    3. Identifique **1 concessão** que seu grupo poderia fazer na negociação
    4. Pense em **dados/evidências** que sustentam sua posição

---

## Exercícios de preparação

**Exercício 1.** Um jovem tem $\bar{T} = 14$ horas disponíveis por dia, utilidade $U(C, R) = C^{0{,}6} R^{0{,}4}$, renda não-salarial de R$ 30/dia (apoio familiar) e custo fixo de R$ 15/dia para trabalhar (transporte). Qual o salário mínimo por hora para que ele aceite trabalhar?

??? success "Solução"
    Sem trabalhar: $C = 30$, $R = 14$, $U_0 = 30^{0{,}6} \cdot 14^{0{,}4}$

    $U_0 = 30^{0{,}6} \cdot 14^{0{,}4} \approx 7{,}17 \times 2{,}69 \approx 19{,}3$

    Para aceitar trabalhar, precisa que a utilidade com $L > 0$ supere $U_0$, descontando o custo fixo de R$ 15.

    Com salário $w$, renda plena líquida: $w \cdot 14 + 30 - 15 = 14w + 15$.

    Escolha ótima: $R^* = \frac{0{,}4(14w + 15)}{w}$, $C^* = 0{,}6(14w + 15)$.

    O salário de reserva $w^*$ é tal que $U^*(w^*) = U_0$ e $R^* \leq 14$. Para valores baixos de $w$, o custo fixo torna o trabalho inviável. Resolvendo numericamente, $w^* \approx$ R$ 5–6/hora.

**Exercício 2.** Explique, usando o modelo de Slutsky com dotações, por que um aumento do salário mínimo pode reduzir as horas trabalhadas de alguém que já estava empregado.

??? success "Solução"
    O trabalhador tem dotação de tempo $\bar{T}$. Um aumento de $w$:

    - **Efeito substituição**: lazer ficou mais caro $\implies$ trabalha mais
    - **Efeito renda (dotação)**: como é "vendedor" de tempo, o aumento de $w$ eleva sua renda real $\implies$ demanda mais lazer $\implies$ trabalha menos

    Se o efeito renda domina (o que é plausível para salários já razoáveis), o trabalhador **reduz** as horas trabalhadas. Este é o mecanismo da curva backward-bending.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A taxa de desemprego entre jovens de 18–24 anos no Brasil é, tipicamente:

- [ ] (a) Igual à taxa geral
- [ ] (b) Ligeiramente acima da taxa geral
- [x] (c) Cerca de 2 a 3 vezes a taxa geral
- [ ] (d) Abaixo da taxa geral (jovens são mais flexíveis)

**Q2.** No modelo lazer-consumo, o "salário de reserva" é:

- [ ] (a) O salário mínimo legal
- [x] (b) O salário mínimo que torna o indivíduo indiferente entre trabalhar e não trabalhar
- [ ] (c) O salário médio da economia
- [ ] (d) O custo de oportunidade do lazer

**Q3.** Se o salário mínimo é fixado acima da produtividade marginal de um trabalhador jovem, o modelo competitivo prevê:

- [ ] (a) Aumento do emprego formal
- [x] (b) Desemprego ou migração para a informalidade
- [ ] (c) Aumento de salários acima do mínimo
- [ ] (d) Nenhum efeito

**Q4.** O FIES pode ser interpretado como um caso de:

- [ ] (a) Oferta de trabalho backward-bending
- [ ] (b) Demanda líquida negativa
- [x] (c) Escolha intertemporal — sacrificar consumo presente por renda futura maior
- [ ] (d) Efeito substituição puro

**Q5.** Qual das seguintes é uma razão econômica para que o mercado informal seja atraente para jovens?

- [ ] (a) Salários mais altos que no mercado formal
- [ ] (b) Maior estabilidade no emprego
- [x] (c) Flexibilidade e acesso imediato, sem barreiras do salário mínimo
- [ ] (d) Benefícios trabalhistas mais generosos

</div>

---

!!! abstract "Próxima aula"
    **Aula 10**: Simulação de negociação sobre política de emprego jovem. Venha com seus argumentos preparados e dados de apoio!
