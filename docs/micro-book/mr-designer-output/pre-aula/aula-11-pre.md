# Pré-Aula 11 — Decomposição de Hicks: Exercícios

!!! info "Leitura obrigatória"
    **Cap. 5, Seções 5.4–5.6** do livro-texto | Tempo estimado: **~45 min** — revise especialmente as fórmulas de VC e VE.

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Aplicar as fórmulas de VC e VE para utilidades Cobb-Douglas e quase-lineares.
2. Calcular e comparar as três medidas de bem-estar em problemas numéricos.
3. Preparar-se para o exercício em sala sobre tributação de eletricidade (ICMS).

---

## 1. Formulário de Medidas de Bem-Estar

Antes dos exercícios, consolide as fórmulas essenciais.

**Excedente do consumidor (variação):**

$$\Delta EC = \int_{p_0}^{p_1} x^M(p, m)\,dp$$

**Variação compensatória:**

$$VC = e(p_1, u_0) - m$$

**Variação equivalente:**

$$VE = m - e(p_0, u_1)$$

!!! note "Intuição Econômica"
    A VC "compensa" a mudança mantendo utilidade em $u_0$; a VE encontra o "equivalente" monetário da mudança avaliado a preços antigos. Para aumentos de preço de bens normais: $|VE| < |\Delta EC| < |VC|$.

---

## 2. VC e VE para Cobb-Douglas

Para $u = x_1^\alpha x_2^{1-\alpha}$ com preços $(p_1, p_2)$ e renda $m$:

- **Demanda marshalliana:** $x_1^M = \frac{\alpha m}{p_1}$, $x_2^M = \frac{(1-\alpha) m}{p_2}$
- **Utilidade indireta:** $v(p_1, p_2, m) = \alpha^\alpha (1-\alpha)^{1-\alpha} \frac{m}{p_1^\alpha p_2^{1-\alpha}}$
- **Função dispêndio:** $e(p_1, p_2, u) = \frac{u \, p_1^\alpha p_2^{1-\alpha}}{\alpha^\alpha (1-\alpha)^{1-\alpha}}$

Quando $p_1$ muda de $p_1^0$ para $p_1^1$:

$$VC = m\left[\left(\frac{p_1^1}{p_1^0}\right)^\alpha - 1\right], \qquad VE = m\left[1 - \left(\frac{p_1^0}{p_1^1}\right)^\alpha\right]$$

<iframe src="graficos/cap05/excedente-consumidor.html"></iframe>

!!! tip "Explore o gráfico"
    Altere o preço e observe como as áreas de EC, VC e VE diferem para demandas com efeito renda não nulo. Compare com o caso quase-linear.

---

## 3. VC e VE para Quase-Linear

Para $u = v(x_1) + x_2$ com $v'(x_1) > 0$, $v''(x_1) < 0$:

- **Demanda marshalliana:** $v'(x_1) = p_1$, independe de $m$.
- **Não há efeito renda** sobre $x_1$.

Resultado fundamental:

$$VC = VE = \Delta EC = \int_{p_0}^{p_1} x^M(p)\,dp$$

!!! note "Intuição Econômica"
    Em preferências quase-lineares, toda a variação de renda é absorvida pelo bem numerário $x_2$. A demanda por $x_1$ depende apenas do preço — as curvas hicksiana e marshalliana coincidem.

---

## 4. Exercício Preparatório: ICMS sobre Eletricidade

O ICMS sobre eletricidade no Brasil pode chegar a 25–30% em alguns estados. Modelamos o consumo de eletricidade ($x_1$) e outros bens ($x_2$) com:

$$u = x_1^{0{,}4} x_2^{0{,}6}, \quad m = 3000, \quad p_2 = 1$$

O preço da eletricidade sobe de $p_1 = 1$ para $p_1 = 1{,}30$ (alíquota de 30%).

**Receita do governo:** $R = (p_1^1 - p_1^0) \cdot x_1^*(p_1^1)$

**Perda de peso morto:** $DWL = |VC| - R$

!!! note "Intuição Econômica"
    A perda de peso morto cresce com o **quadrado** da alíquota — a chamada regra de Harberger. Dobrar a alíquota quadruplica a ineficiência. Isso é central no debate sobre reforma tributária no Brasil.

<iframe src="graficos/cap06/substitutos-complementos.html"></iframe>

!!! tip "Explore o gráfico"
    Observe como a relação de substituição ou complementaridade entre bens afeta a magnitude da perda de peso morto. Bens com substitutos próximos sofrem maior distorção.

---

## Exercícios Preparatórios

**Exercício 1.** Com $u = x_1^{0{,}5} x_2^{0{,}5}$, $m = 400$, $p_2 = 1$ e aumento de $p_1$ de 2 para 8, calcule VC, VE e $\Delta EC$.

??? success "Solução"
    $\alpha = 0{,}5$. Usando as fórmulas:  
    $VC = 400\left[\left(\frac{8}{2}\right)^{0,5} - 1\right] = 400(2 - 1) = 400$.  
    $VE = 400\left[1 - \left(\frac{2}{8}\right)^{0,5}\right] = 400(1 - 0{,}5) = 200$.  
    $\Delta EC = \int_2^8 \frac{200}{p}\,dp = 200\ln 4 \approx 277{,}26$.  
    Confirmamos: $VE = 200 < \Delta EC \approx 277 < VC = 400$.

**Exercício 2.** Para $u = 10\sqrt{x_1} + x_2$, $m = 100$, $p_2 = 1$ e $p_1$ subindo de 1 para 4, calcule as três medidas.

??? success "Solução"
    Demanda: $v'(x_1) = \frac{5}{\sqrt{x_1}} = p_1 \Rightarrow x_1 = 25/p_1^2$.  
    $\Delta EC = \int_1^4 \frac{25}{p^2}\,dp = 25\left[-\frac{1}{p}\right]_1^4 = 25\left(1 - \frac{1}{4}\right) = 18{,}75$.  
    Como é quase-linear: $VC = VE = \Delta EC = 18{,}75$.

**Exercício 3.** No exercício do ICMS ($\alpha = 0{,}4$, $m = 3000$, $p_1$: 1 para 1,30), calcule a receita $R$ e a perda de peso morto.

??? success "Solução"
    $x_1^*(1{,}30) = \frac{0{,}4 \times 3000}{1{,}30} \approx 923{,}08$.  
    $R = 0{,}30 \times 923{,}08 \approx 276{,}92$.  
    $VC = 3000[(1{,}30)^{0,4} - 1] = 3000[1{,}1096 - 1] = 3000 \times 0{,}1096 \approx 328{,}77$.  
    $DWL = 328{,}77 - 276{,}92 \approx 51{,}85$.  
    A perda de peso morto é de aproximadamente R\$ 51,85.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Para preferências Cobb-Douglas com $\alpha = 0{,}5$, a função dispêndio é proporcional a:

- [ ] (a) $p_1 / p_2$
- [x] (b) $\sqrt{p_1 p_2}$
- [ ] (c) $p_1 + p_2$
- [ ] (d) $p_1^2 p_2^2$

**Q2.** Em preferências quase-lineares, o efeito renda sobre $x_1$ é:

- [ ] (a) Positivo
- [ ] (b) Negativo
- [x] (c) Zero
- [ ] (d) Depende dos parâmetros

**Q3.** Se o preço de um bem normal aumenta, a maior medida de perda (em valor absoluto) é:

- [x] (a) Variação compensatória
- [ ] (b) Variação equivalente
- [ ] (c) Excedente do consumidor
- [ ] (d) São todas iguais

**Q4.** A perda de peso morto de um imposto cresce aproximadamente com:

- [ ] (a) A alíquota
- [x] (b) O quadrado da alíquota
- [ ] (c) A raiz da alíquota
- [ ] (d) O logaritmo da alíquota

**Q5.** A receita do governo com um imposto unitário $t$ sobre o bem $x_1$ é:

- [ ] (a) $t \cdot x_1(p_1^0)$
- [x] (b) $t \cdot x_1(p_1^0 + t)$
- [ ] (c) $t^2 \cdot x_1(p_1^0)$
- [ ] (d) $t \cdot m$

</div>

---

!!! abstract "Próxima aula"
    Na **Aula 12**, estudaremos economias com dotações, incluindo o modelo de oferta de trabalho (lazer-consumo) e a escolha intertemporal com taxa de juros.
