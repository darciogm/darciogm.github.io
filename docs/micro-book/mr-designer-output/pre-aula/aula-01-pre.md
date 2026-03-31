# Pré-Aula 01 — Introdução à Microeconomia II

!!! info "Leitura obrigatória"
    **Cap. 1, Seções 1.1–1.4** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Distinguir análise econômica positiva de normativa e aplicar a cláusula *ceteris paribus*
2. Descrever o modelo de oferta e demanda e identificar o equilíbrio de mercado
3. Realizar exercícios de estática comparativa simples (deslocamentos de curvas)

---

## 1. O que é um modelo econômico?

A Microeconomia estuda como agentes individuais — consumidores, firmas, governos — tomam decisões quando os recursos são escassos. Para isso, utilizamos **modelos**: representações simplificadas da realidade que isolam os mecanismos essenciais.

Um bom modelo não precisa ser realista em todos os detalhes. Precisa ser **útil**: gerar previsões testáveis e ajudar a organizar o raciocínio.

!!! note "Intuição Econômica"
    Pense no mapa de uma cidade: ele omite prédios, árvores e pessoas, mas é extremamente útil para encontrar caminhos. Modelos econômicos funcionam da mesma forma — simplificam para iluminar.

### 1.1 Ceteris paribus

A expressão latina *ceteris paribus* ("tudo o mais constante") é a principal ferramenta lógica do economista. Quando dizemos "se o preço sobe, a quantidade demandada cai", estamos supondo que renda, preferências e preços de outros bens permanecem fixos.

Formalmente, se a quantidade demandada é $Q^d = D(p, I, \mathbf{p}_{-})$, a análise *ceteris paribus* examina:

$$\frac{\partial Q^d}{\partial p} \bigg|_{I, \mathbf{p}_{-} \text{\ fixos}} < 0$$

### 1.2 Positivo vs. normativo

- **Análise positiva**: descreve *o que é*. "Um imposto de R\$2 sobre cigarros reduz o consumo em 15%."
- **Análise normativa**: prescreve *o que deveria ser*. "O governo deveria tributar cigarros para melhorar a saúde pública."

A Microeconomia II foca primariamente na análise positiva, mas fornece ferramentas (como excedente e bem-estar) que informam juízos normativos.

---

## 2. Oferta, demanda e equilíbrio

O modelo de oferta e demanda é o ponto de partida de toda a análise microeconômica.

### 2.1 A curva de demanda

A demanda de mercado relaciona preço e quantidade que os consumidores desejam comprar:

$$Q^d = D(p) \quad \text{com} \quad D'(p) < 0$$

A inclinação negativa reflete a **Lei da Demanda**: quanto maior o preço, menor a quantidade demandada (*ceteris paribus*).

### 2.2 A curva de oferta

A oferta de mercado relaciona preço e quantidade que os produtores desejam vender:

$$Q^s = S(p) \quad \text{com} \quad S'(p) > 0$$

Preços mais altos tornam a produção mais lucrativa, incentivando maior oferta.

### 2.3 Equilíbrio de mercado

O equilíbrio ocorre quando oferta iguala demanda:

$$D(p^*) = S(p^*) \implies Q^* = D(p^*) = S(p^*)$$

No preço de equilíbrio $p^*$, não há excesso de oferta nem de demanda. O mercado se "limpa".

## Gráfico interativo: Oferta e Demanda

<iframe src="graficos/cap01/oferta-demanda.html"></iframe>

!!! tip "Explore o gráfico"
    Desloque as curvas de oferta e demanda usando os controles deslizantes. Observe como o ponto de equilíbrio ($p^*$, $Q^*$) se move quando os determinantes mudam.

---

## 3. Estática comparativa

Estática comparativa compara dois equilíbrios: o inicial e o novo, após a mudança de um parâmetro exógeno. Não descreve a transição — apenas o "antes" e o "depois".

### Exemplo: aumento de renda

Se a renda dos consumidores aumenta e o bem é **normal**, a curva de demanda se desloca para a direita:

$$D(p; I_1) \to D(p; I_2) \quad \text{com\ } I_2 > I_1$$

Resultado: $p^*$ sobe e $Q^*$ sobe.

### Exemplo: avanço tecnológico

Se uma inovação reduz custos de produção, a curva de oferta se desloca para a direita:

$$S(p; c_1) \to S(p; c_2) \quad \text{com\ } c_2 < c_1$$

Resultado: $p^*$ cai e $Q^*$ sobe.

!!! note "Intuição Econômica"
    A estática comparativa é a principal forma de gerar previsões em economia. A pergunta sempre é: "o que acontece com preço e quantidade quando X muda?"

---

## 4. O fluxo circular da economia

O modelo de fluxo circular ilustra como famílias e firmas interagem em dois mercados: o de bens e serviços e o de fatores de produção. Famílias ofertam trabalho e capital; firmas ofertam bens. O dinheiro circula em sentido oposto aos bens.

## Gráfico interativo: Fluxo Circular

<iframe src="graficos/cap01/fluxo-circular.html"></iframe>

!!! tip "Explore o gráfico"
    Identifique os dois mercados (bens e fatores) e observe como renda e despesa se conectam. Clique nos fluxos para ver as descrições detalhadas.

---

## Exercícios de preparação

**Exercício 1.** O preço do café sobe de R\$10 para R\$12 por quilo. A quantidade demandada cai de 100 para 80 kg/semana. Calcule a variação percentual do preço e da quantidade. Esse comportamento é consistente com a Lei da Demanda?

??? success "Solução"
    Variação percentual do preço: $\Delta p/p = (12-10)/10 = 20\%$. Variação percentual da quantidade: $\Delta Q/Q = (80-100)/100 = -20\%$. Sim, é consistente com a Lei da Demanda: preço subiu e quantidade caiu.

**Exercício 2.** Em um mercado, $Q^d = 200 - 4p$ e $Q^s = -40 + 2p$. Encontre o equilíbrio $(p^*, Q^*)$. Se o governo fixa um preço máximo $\bar{p} = 30$, há excesso de oferta ou de demanda? De quanto?

??? success "Solução"
    Equilíbrio: $200 - 4p = -40 + 2p \implies 6p = 240 \implies p^* = 40$ e $Q^* = 200 - 4(40) = 40$. Com $\bar{p} = 30$: $Q^d = 200 - 4(30) = 80$ e $Q^s = -40 + 2(30) = 20$. Há **excesso de demanda** de $80 - 20 = 60$ unidades.

**Exercício 3.** Classifique como análise positiva (P) ou normativa (N): (a) "Um salário mínimo acima do equilíbrio gera desemprego." (b) "O governo deveria aumentar o salário mínimo para reduzir a desigualdade." (c) "A elasticidade-preço da demanda por gasolina é -0,3 no curto prazo."

??? success "Solução"
    (a) **P** — é uma previsão do modelo de oferta e demanda. (b) **N** — envolve juízo de valor sobre o que o governo *deveria* fazer. (c) **P** — é uma estimativa empírica, sem juízo de valor.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A cláusula *ceteris paribus* significa:

- [ ] (a) Que todos os agentes são racionais
- [ ] (b) Que o mercado está em equilíbrio
- [x] (c) Que todas as demais variáveis são mantidas constantes
- [ ] (d) Que a análise é normativa

**Q2.** Se o preço de equilíbrio de um bem sobe após um aumento de renda dos consumidores, o bem é provavelmente:

- [x] (a) Normal
- [ ] (b) Inferior
- [ ] (c) De Giffen
- [ ] (d) Complementar

**Q3.** No equilíbrio de mercado:

- [ ] (a) A quantidade ofertada é maior que a demandada
- [ ] (b) O preço está no nível mais baixo possível
- [x] (c) A quantidade ofertada iguala a quantidade demandada
- [ ] (d) Não há transações

**Q4.** Um avanço tecnológico que reduz custos de produção desloca:

- [ ] (a) A curva de demanda para a direita
- [x] (b) A curva de oferta para a direita
- [ ] (c) A curva de oferta para a esquerda
- [ ] (d) Ambas as curvas para a direita

**Q5.** A afirmação "o governo deveria subsidiar energia solar" é um exemplo de análise:

- [ ] (a) Positiva
- [x] (b) Normativa
- [ ] (c) Ceteris paribus
- [ ] (d) De equilíbrio parcial

</div>

---

!!! abstract "Próxima aula"
    **Aula 02**: Restrição Orçamentária — como a renda e os preços limitam as escolhas do consumidor.
