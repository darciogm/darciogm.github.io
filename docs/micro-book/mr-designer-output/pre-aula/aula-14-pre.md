# Pré-Aula 14 — Escolha sob Incerteza II: Seguros e Informação

!!! info "Leitura obrigatória"
    **Cap. 7, Seções 7.4–7.6** do livro-texto | Tempo estimado: **~45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Calcular e interpretar as medidas de aversão ao risco de Arrow-Pratt (ARA e RRA).
2. Determinar a cobertura ótima de seguro sob prêmio justo e com carregamento.
3. Aplicar o conceito de diversificação para redução de risco.

---

## 1. Medidas de Aversão ao Risco de Arrow-Pratt

Para comparar a intensidade da aversão ao risco entre agentes ou ao longo da riqueza, usamos:

**Aversão absoluta ao risco (ARA):**

$$A(W) = -\frac{u''(W)}{u'(W)}$$

**Aversão relativa ao risco (RRA):**

$$R(W) = -\frac{W \cdot u''(W)}{u'(W)} = W \cdot A(W)$$

!!! note "Intuição Econômica"
    A ARA mede quanto aversão ao risco você tem para uma aposta de **valor absoluto fixo** (ex.: apostar R\$ 100). A RRA mede a aversão para uma aposta proporcional à sua riqueza (ex.: apostar 10% da riqueza). Um bilionário e um assalariado podem ter a mesma RRA mas ARA muito diferentes.

---

## 2. CARA vs. CRRA

Duas famílias de funções utilidade são especialmente importantes:

**CARA** (Constant Absolute Risk Aversion): $u(W) = -e^{-aW}$, com $A(W) = a$ constante.

- O prêmio de risco **não depende** da riqueza inicial.
- Pouco realista: um bilionário pagaria o mesmo que um estudante para evitar a mesma aposta.

**CRRA** (Constant Relative Risk Aversion): $u(W) = \frac{W^{1-\gamma}}{1-\gamma}$ para $\gamma \neq 1$, ou $u(W) = \ln W$ para $\gamma = 1$.

- $R(W) = \gamma$ constante; $A(W) = \gamma/W$ decrescente.
- Mais realista: à medida que enriquece, o agente aceita apostas maiores em termos absolutos, mas mantém a proporção.

$$\text{CRRA:} \quad A(W) = \frac{\gamma}{W} \downarrow, \quad R(W) = \gamma = \text{const.}$$

!!! note "Intuição Econômica"
    Evidências empíricas sugerem que a aversão absoluta é decrescente na riqueza (DARA) e a aversão relativa é aproximadamente constante (CRRA com $\gamma$ entre 1 e 4). Isso justifica o uso frequente de $u(W) = \ln W$ em modelos aplicados.

---

## 3. Prêmio de Risco e Equivalente Certo

Para uma aposta pequena $\tilde{\varepsilon}$ com $E[\tilde{\varepsilon}] = 0$ e $\text{Var}(\tilde{\varepsilon}) = \sigma^2$, a **aproximação de Arrow-Pratt** fornece:

$$\pi \approx \frac{1}{2} A(W) \sigma^2$$

O **equivalente certo** é:

$$CE = E[W] - \pi \approx E[W] - \frac{1}{2}A(W)\sigma^2$$

<iframe src="graficos/cap07/premio-risco.html"></iframe>

!!! tip "Explore o gráfico"
    Aumente a variância da loteria e observe como o prêmio de risco cresce. Depois altere a concavidade da função utilidade e veja o impacto direto no tamanho de $\pi$.

---

## 4. Cobertura Ótima de Seguros

Um agente com riqueza $W_0$ enfrenta perda $L$ com probabilidade $p$. Ele pode comprar cobertura $q$ pagando prêmio $\gamma q$, onde $\gamma$ é o preço por unidade de cobertura.

**Riquezas nos dois estados:**

$$W_{\text{sem sinistro}} = W_0 - \gamma q, \qquad W_{\text{sinistro}} = W_0 - L - \gamma q + q$$

**Prêmio atuarialmente justo**: $\gamma = p$. Neste caso, a CPO implica igualdade de utilidades marginais nos dois estados:

$$q^* = L \quad \text{(cobertura total)}$$

**Com carregamento** ($\gamma > p$): $q^* < L$ (cobertura parcial). O agente retém parte do risco porque o seguro é caro demais.

<iframe src="graficos/cap07/seguro.html"></iframe>

!!! tip "Explore o gráfico"
    Ajuste o carregamento do prêmio (diferença entre $\gamma$ e $p$) e observe como a cobertura ótima se reduz. Com prêmio justo, o ponto ótimo está sobre a linha de certeza (45°).

---

## 5. Diversificação

Se o agente pode dividir a riqueza entre $n$ ativos independentes, cada um com risco $\sigma^2$, o risco total cai:

$$\text{Var}\left(\frac{1}{n}\sum_{i=1}^n \tilde{R}_i\right) = \frac{\sigma^2}{n}$$

!!! note "Intuição Econômica"
    "Não coloque todos os ovos na mesma cesta." A diversificação elimina o risco idiossincrático sem custo. No entanto, o risco sistemático (que afeta todos os ativos simultaneamente) não pode ser diversificado.

---

## Exercícios Preparatórios

**Exercício 1.** Calcule ARA e RRA para $u(W) = \ln W$ e para $u(W) = -e^{-2W}$.

??? success "Solução"
    Para $u(W) = \ln W$: $u' = 1/W$, $u'' = -1/W^2$.  
    $A(W) = -(-1/W^2)/(1/W) = 1/W$ (DARA). $R(W) = W/W = 1$ (CRRA com $\gamma = 1$).  
    Para $u(W) = -e^{-2W}$: $u' = 2e^{-2W}$, $u'' = -4e^{-2W}$.  
    $A(W) = 4e^{-2W}/(2e^{-2W}) = 2$ (CARA). $R(W) = 2W$ (RRA crescente).

**Exercício 2.** Um agente com $u(W) = \sqrt{W}$, $W_0 = 10000$, perda $L = 6000$ com $p = 0{,}2$, prêmio justo $\gamma = p = 0{,}2$. Qual a cobertura ótima?

??? success "Solução"
    Com prêmio justo, sabemos que $q^* = L = 6000$ (cobertura total).  
    Verificação: prêmio pago = $0{,}2 \times 6000 = 1200$. Riqueza certa = $10000 - 1200 = 8800$ em ambos os estados.

**Exercício 3.** Se o carregamento faz $\gamma = 0{,}30$ (50% acima do justo), o agente do Exercício 2 comprará mais ou menos cobertura? Justifique qualitativamente.

??? success "Solução"
    Comprará **menos** cobertura ($q^* < 6000$). Com $\gamma > p$, a CPO exige $u'(W_{\text{sem}}) < u'(W_{\text{sin}})$, ou seja, $W_{\text{sem}} > W_{\text{sin}}$. O agente retém parte do risco porque o custo marginal do seguro excede o benefício marginal atuarial. Quanto maior o carregamento, menor a cobertura ótima.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A medida de Arrow-Pratt que é constante para $u(W) = \ln W$ é:

- [ ] (a) ARA
- [x] (b) RRA
- [ ] (c) Ambas
- [ ] (d) Nenhuma

**Q2.** Com prêmio atuarialmente justo, um averso ao risco escolhe:

- [x] (a) Cobertura total ($q^* = L$)
- [ ] (b) Cobertura parcial ($q^* < L$)
- [ ] (c) Nenhuma cobertura
- [ ] (d) Mais que cobertura total

**Q3.** A aproximação de Arrow-Pratt para o prêmio de risco é:

- [ ] (a) $\pi \approx A(W) \sigma$
- [x] (b) $\pi \approx \frac{1}{2} A(W) \sigma^2$
- [ ] (c) $\pi \approx R(W) \sigma^2$
- [ ] (d) $\pi \approx A(W)^2 \sigma$

**Q4.** DARA (Decreasing Absolute Risk Aversion) significa que:

- [x] (a) O agente aceita apostas absolutas maiores à medida que enriquece
- [ ] (b) O agente fica mais averso ao risco quando enriquece
- [ ] (c) A aversão relativa é constante
- [ ] (d) O prêmio de risco é constante

**Q5.** A diversificação elimina:

- [ ] (a) Todo o risco
- [x] (b) O risco idiossincrático (não sistemático)
- [ ] (c) O risco sistemático
- [ ] (d) O risco apenas se os ativos forem correlacionados

</div>

---

!!! abstract "Próxima aula"
    Na **Aula 15**, estudaremos os paradoxos de Allais e Ellsberg, que violam a teoria da utilidade esperada, e a Teoria dos Prospectos de Kahneman e Tversky como alternativa comportamental.
