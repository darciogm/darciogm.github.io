# Pré-Aula 15 — Escolha sob Incerteza III: Aplicações e Paradoxos

!!! info "Leitura obrigatória"
    **Cap. 8, Seções 8.1–8.3** do livro-texto | Tempo estimado: **~45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Explicar os paradoxos de Allais e Ellsberg e identificar quais axiomas VNM eles violam.
2. Descrever os três componentes da Teoria dos Prospectos: função valor, ponderação de probabilidades e ponto de referência.
3. Aplicar a Teoria dos Prospectos a decisões do cotidiano, incluindo loterias e seguros.

---

## 1. Paradoxo de Allais

Maurice Allais (1953) propôs dois pares de escolha que sistematicamente violam o axioma da independência:

**Par 1:** A = R$ 1 milhão com certeza vs. B = (0,89; 1M | 0,10; 5M | 0,01; 0)

**Par 2:** C = (0,11; 1M | 0,89; 0) vs. D = (0,10; 5M | 0,90; 0)

A maioria escolhe $A \succ B$ e $D \succ C$. Porém, pela utilidade esperada:

$$A \succ B \implies u(1M) > 0{,}89\,u(1M) + 0{,}10\,u(5M) + 0{,}01\,u(0)$$

Reescrevendo: $0{,}11\,u(1M) > 0{,}10\,u(5M) + 0{,}01\,u(0)$, o que implica $C \succ D$ — contradição!

!!! note "Intuição Econômica"
    O paradoxo de Allais revela o **efeito certeza**: as pessoas sobrevalorizam resultados certos em relação a resultados apenas prováveis. Trocar "certeza de 1M" por "89% de 1M" parece uma perda enorme, mesmo que a probabilidade mude apenas 11 pontos percentuais.

---

## 2. Paradoxo de Ellsberg

Daniel Ellsberg (1961) mostrou que as pessoas distinguem entre **risco** (probabilidades conhecidas) e **ambiguidade** (probabilidades desconhecidas).

Uma urna contém 30 bolas vermelhas e 60 bolas pretas ou amarelas (proporção desconhecida):

- **Aposta A**: ganha R$ 100 se vermelha → $P = 1/3$ (conhecida)
- **Aposta B**: ganha R$ 100 se preta → $P = ?$ (ambígua)

A maioria prefere $A \succ B$, revelando **aversão à ambiguidade**. Este comportamento viola não apenas a utilidade esperada, mas qualquer modelo baseado em probabilidades subjetivas únicas.

!!! note "Intuição Econômica"
    As pessoas preferem "o diabo que conhecem". A ambiguidade gera desconforto adicional além do risco puro. Isso explica por que investidores preferem ações domésticas (home bias) mesmo quando a diversificação internacional seria ótima.

---

## 3. Teoria dos Prospectos

Kahneman e Tversky (1979) propuseram a **Teoria dos Prospectos** (Prospect Theory) como alternativa descritiva à utilidade esperada. Seus três pilares são:

**Função valor** $v(x)$ definida sobre **ganhos e perdas** relativas a um ponto de referência:

$$v(x) = \begin{cases} x^\alpha & \text{se } x \geq 0 \\ -\lambda(-x)^\beta & \text{se } x < 0 \end{cases}$$

com parâmetros típicos $\alpha = \beta \approx 0{,}88$ e $\lambda \approx 2{,}25$.

Propriedades da função valor:

- **Côncava para ganhos** (aversão ao risco em ganhos)
- **Convexa para perdas** (propensão ao risco em perdas)
- **Mais íngreme para perdas** → **aversão à perda** ($\lambda > 1$)

<iframe src="graficos/cap08/funcao-valor-pt.html"></iframe>

!!! tip "Explore o gráfico"
    Observe o formato em "S" da função valor. Note a assimetria: a dor de perder R$ 100 é sentida com intensidade $\lambda \approx 2{,}25$ vezes maior do que o prazer de ganhar R$ 100.

---

## 4. Ponderação de Probabilidades e CPT

Na Teoria dos Prospectos, as probabilidades objetivas $p$ são transformadas por uma **função de ponderação** $w(p)$:

$$w(p) = \frac{p^\delta}{(p^\delta + (1-p)^\delta)^{1/\delta}}$$

com $\delta \approx 0{,}65$. Propriedades:

- **Sobreponderação de probabilidades pequenas**: $w(p) > p$ para $p$ pequeno
- **Subponderação de probabilidades grandes**: $w(p) < p$ para $p$ grande
- $w(0) = 0$, $w(1) = 1$

A avaliação de um prospecto $(x_1, p; x_2, 1-p)$ com $x_1 > 0 > x_2$ é:

$$V = w(p) \cdot v(x_1) + w(1-p) \cdot v(x_2)$$

A **Teoria dos Prospectos Cumulativa** (CPT, Tversky & Kahneman, 1992) estende o modelo para loterias com múltiplos resultados, aplicando a ponderação às probabilidades cumulativas.

<iframe src="graficos/cap08/ponderacao-prob.html"></iframe>

!!! tip "Explore o gráfico"
    Compare a curva de ponderação $w(p)$ com a diagonal (probabilidades objetivas). Note o cruzamento: probabilidades pequenas são infladas e probabilidades grandes são deflacionadas.

!!! note "Intuição Econômica"
    A Teoria dos Prospectos explica um padrão fascinante: a mesma pessoa compra bilhete de loteria (sobrepondera a pequena chance de ganho) e faz seguro (sobrepondera a pequena chance de perda catastrófica). Na utilidade esperada padrão, isso seria impossível com uma única curvatura de $u$.

---

## 5. Aplicação: Mega-Sena

O bilhete da Mega-Sena custa R$ 5,00 e a chance de acertar 6 números é $\approx 1/50\,\text{milhões}$. O valor esperado é amplamente negativo. Pela Teoria dos Prospectos:

- A pequena probabilidade de ganho é **sobreponderada** ($w(p) \gg p$).
- O ganho é avaliado pela função valor côncava, mas o efeito da sobreponderação domina.
- A perda de R$ 5,00 é pequena em relação ao ponto de referência.

Resultado: a compra do bilhete pode ser "racional" sob Prospect Theory.

---

## Exercícios Preparatórios

**Exercício 1.** No paradoxo de Allais, mostre formalmente que as escolhas $A \succ B$ e $D \succ C$ violam o axioma da independência.

??? success "Solução"
    Defina $L_0 = (1,\;1M)$, $L_1 = (10/11,\;5M;\;1/11,\;0)$, $L_2 = (1,\;0)$.  
    $A = 0{,}11 L_0 + 0{,}89 L_0$ e $B = 0{,}11 L_1 + 0{,}89 L_0$.  
    Pelo axioma da independência, $A \succ B \iff L_0 \succ L_1$.  
    $C = 0{,}11 L_0 + 0{,}89 L_2$ e $D = 0{,}11 L_1 + 0{,}89 L_2$.  
    Pelo mesmo axioma, $L_0 \succ L_1 \implies C \succ D$.  
    Mas as pessoas escolhem $D \succ C$, violando a independência.

**Exercício 2.** Calcule o valor de um prospecto $P = (+500, 0{,}10;\; -200, 0{,}90)$ usando $\alpha = \beta = 0{,}88$, $\lambda = 2{,}25$ e $\delta = 0{,}65$.

??? success "Solução"
    $v(+500) = 500^{0,88} \approx 274{,}7$.  
    $v(-200) = -2{,}25 \times 200^{0,88} \approx -2{,}25 \times 122{,}5 \approx -275{,}6$.  
    $w(0{,}10) \approx \frac{0{,}10^{0,65}}{(0{,}10^{0,65} + 0{,}90^{0,65})^{1/0,65}} \approx 0{,}18$.  
    $w(0{,}90) \approx 0{,}71$.  
    $V = 0{,}18 \times 274{,}7 + 0{,}71 \times (-275{,}6) \approx 49{,}4 - 195{,}7 = -146{,}3 < 0$.  
    O prospecto é rejeitado.

**Exercício 3.** Explique por que a Teoria dos Prospectos prevê que motoristas de táxi trabalham menos em dias de alta demanda.

??? success "Solução"
    Camerer et al. (1997) documentaram que taxistas estabelecem uma **meta diária de renda** (ponto de referência). Em dias bons (alta demanda), atingem a meta rapidamente e param — estão no domínio dos ganhos (aversos ao risco, logo param). Em dias ruins, continuam trabalhando para evitar ficar abaixo da meta — estão no domínio das perdas (propensos ao risco). Isso contradiz a teoria padrão: deveriam trabalhar mais quando o "salário" por hora é maior.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** O paradoxo de Allais viola qual axioma de VNM?

- [ ] (a) Completude
- [ ] (b) Transitividade
- [x] (c) Independência
- [ ] (d) Continuidade

**Q2.** A aversão à perda na Teoria dos Prospectos significa que:

- [ ] (a) Perdas são ignoradas
- [x] (b) Perdas pesam mais do que ganhos de mesma magnitude ($\lambda > 1$)
- [ ] (c) Ganhos e perdas são simétricos
- [ ] (d) Todas as pessoas são aversas ao risco

**Q3.** A função de ponderação $w(p)$ para $p$ pequeno tipicamente satisfaz:

- [x] (a) $w(p) > p$ (sobreponderação)
- [ ] (b) $w(p) < p$ (subponderação)
- [ ] (c) $w(p) = p$
- [ ] (d) $w(p) = 0$

**Q4.** No domínio das perdas, a função valor da PT prevê:

- [ ] (a) Aversão ao risco
- [x] (b) Propensão ao risco
- [ ] (c) Neutralidade ao risco
- [ ] (d) Aversão à ambiguidade

**Q5.** O paradoxo de Ellsberg demonstra:

- [ ] (a) Violação da transitividade
- [ ] (b) Que as pessoas são neutras ao risco
- [x] (c) Aversão à ambiguidade (incerteza sobre probabilidades)
- [ ] (d) Que $w(p) = p$ para todo $p$

</div>

---

!!! abstract "Próxima aula"
    Na **Aula 16**, estudaremos mercados de risco e informação assimétrica: seleção adversa (mercado de limões), risco moral, sinalização e screening, com aplicações ao sistema de saúde e seguros no Brasil.
