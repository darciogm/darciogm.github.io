# Pré-Aula 12 — Economia de Dotações: Trabalho e Escolha Intertemporal

!!! info "Leitura obrigatória"
    **Cap. 17, Seções 17.1–17.3** e **Cap. 18, Seções 18.1–18.2** do livro-texto | Tempo estimado: **~45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Formular a restrição orçamentária com dotações e resolver problemas de oferta de trabalho.
2. Explicar a curva de oferta de trabalho backward-bending a partir dos efeitos renda e substituição.
3. Modelar a escolha intertemporal entre consumo presente e futuro com taxa de juros.

---

## 1. Restrição Orçamentária com Dotações

Diferente do modelo padrão com renda fixa $m$, muitos problemas envolvem **dotações** — quantidades iniciais dos bens que o consumidor pode trocar no mercado. A restrição orçamentária torna-se:

$$p_1 x_1 + p_2 x_2 = p_1 \omega_1 + p_2 \omega_2$$

onde $(\omega_1, \omega_2)$ é a dotação inicial. O lado direito é a **renda total** ou **riqueza**: o valor de mercado da dotação.

Mudanças de preço agora têm dois efeitos:

- Alteram o custo relativo dos bens (efeito substituição + efeito renda ordinário).
- Alteram o **valor da dotação** (efeito dotação).

!!! note "Intuição Econômica"
    Quando o preço de um bem que você possui sobe, você fica mais rico (sua dotação vale mais) e ao mesmo tempo o bem fica mais caro. Os dois efeitos trabalham em direções opostas — é por isso que a oferta de trabalho pode "dobrar para trás".

---

## 2. Oferta de Trabalho: Lazer vs. Consumo

O trabalhador possui dotação de tempo $T$ (ex.: 24h), que divide entre **lazer** $\ell$ e **trabalho** $h = T - \ell$. Com salário $w$ e preço do consumo normalizado ($p = 1$):

$$c = w(T - \ell) + m_0 = wT + m_0 - w\ell$$

onde $m_0$ é a renda não-trabalho. O problema é:

$$\max_{c, \ell} \; u(c, \ell) \quad \text{s.a.} \quad c + w\ell = wT + m_0$$

O "preço" do lazer é o salário $w$ (custo de oportunidade).

<iframe src="graficos/cap17/trabalho-lazer.html"></iframe>

!!! tip "Explore o gráfico"
    Altere o salário $w$ e observe como a escolha ótima de lazer e consumo se move. Note que a dotação (ponto $T$ no eixo do lazer) é o pivô da restrição orçamentária.

---

## 3. A Curva Backward-Bending

A resposta da oferta de trabalho ao salário depende da magnitude relativa dos efeitos:

- **Efeito substituição**: salário maior torna lazer mais caro → trabalha mais.
- **Efeito renda**: salário maior aumenta riqueza → consome mais lazer (se lazer é normal) → trabalha menos.

Para salários baixos, o efeito substituição domina e a oferta de trabalho é **crescente**. Para salários altos, o efeito renda pode dominar e a oferta **decresce** — a curva "dobra para trás" (backward-bending).

$$\frac{\partial h^*}{\partial w} = \underbrace{ES}_{>0} + \underbrace{ER}_{<0} \quad \gtrless \quad 0$$

<iframe src="graficos/cap17/oferta-trabalho.html"></iframe>

!!! tip "Explore o gráfico"
    Observe a curva de oferta de trabalho. Identifique o ponto onde ela muda de inclinação positiva para negativa. Esse é o salário a partir do qual o efeito renda passa a dominar.

---

## 4. Escolha Intertemporal

O consumidor vive dois períodos com rendas $(m_1, m_2)$ e pode poupar ou tomar emprestado à taxa de juros $r$. A restrição intertemporal é:

$$c_1 + \frac{c_2}{1+r} = m_1 + \frac{m_2}{1+r} \equiv W$$

onde $W$ é a **riqueza presente**. Equivalentemente, em valor futuro:

$$(1+r)c_1 + c_2 = (1+r)m_1 + m_2$$

A dotação é $(m_1, m_2)$ e o "preço" do consumo presente em termos de consumo futuro é $(1+r)$.

!!! note "Intuição Econômica"
    Poupar é "comprar" consumo futuro ao preço $1/(1+r)$. Quando a taxa de juros sobe, consumo presente fica mais caro — mas quem já é poupador fica mais rico pela maior remuneração. Novamente, efeitos renda e substituição podem se opor.

<iframe src="graficos/cap18/consumo-intertemporal.html"></iframe>

!!! tip "Explore o gráfico"
    Varie a taxa de juros e observe como a restrição gira em torno do ponto de dotação $(m_1, m_2)$. Note que um poupador pode se tornar tomador de empréstimos se $r$ cair suficientemente.

---

## Exercícios Preparatórios

**Exercício 1.** Um trabalhador com $u = c^{0{,}5}\ell^{0{,}5}$, $T = 16$, $m_0 = 0$ e $w = 10$. Encontre a oferta de trabalho $h^*$.

??? success "Solução"
    Pela Cobb-Douglas com $\alpha = 0{,}5$: $\ell^* = \frac{0{,}5(wT + m_0)}{w} = \frac{0{,}5 \times 160}{10} = 8$.  
    Logo $h^* = T - \ell^* = 16 - 8 = 8$ horas.

**Exercício 2.** Se o salário sobe para $w = 20$, qual a nova oferta de trabalho? Houve backward-bending?

??? success "Solução"
    $\ell^* = \frac{0{,}5 \times 320}{20} = 8$. Logo $h^* = 8$ horas novamente.  
    Com Cobb-Douglas, os efeitos renda e substituição se cancelam exatamente: a oferta de trabalho é constante. Não há backward-bending neste caso.

**Exercício 3.** Um consumidor com $m_1 = 1000$, $m_2 = 550$ e $r = 10\%$ tem $u = c_1 c_2$. Determine $c_1^*$, $c_2^*$ e se é poupador ou tomador.

??? success "Solução"
    $W = 1000 + \frac{550}{1{,}10} = 1000 + 500 = 1500$.  
    Com Cobb-Douglas ($\alpha = 0{,}5$): $c_1^* = \frac{W}{2} = 750$, $c_2^* = \frac{(1+r)W}{2} = \frac{1{,}10 \times 1500}{2} = 825$.  
    Como $c_1^* = 750 < m_1 = 1000$, o consumidor é **poupador** (poupa 250 no período 1).

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Na restrição com dotações, um aumento no preço de $x_1$ beneficia o consumidor se:

- [x] (a) Ele é vendedor líquido de $x_1$ ($x_1^* < \omega_1$)
- [ ] (b) Ele é comprador líquido de $x_1$ ($x_1^* > \omega_1$)
- [ ] (c) Sempre beneficia
- [ ] (d) Nunca beneficia

**Q2.** O custo de oportunidade do lazer é:

- [ ] (a) O preço dos bens de consumo
- [x] (b) O salário
- [ ] (c) A renda não-trabalho
- [ ] (d) O tempo total disponível

**Q3.** A curva de oferta de trabalho backward-bending ocorre quando:

- [ ] (a) O efeito substituição domina em todos os salários
- [ ] (b) O trabalhador tem renda não-trabalho nula
- [x] (c) O efeito renda domina o efeito substituição para salários altos
- [ ] (d) As preferências são quase-lineares

**Q4.** Na escolha intertemporal, o preço relativo do consumo presente em termos de futuro é:

- [ ] (a) $r$
- [x] (b) $(1 + r)$
- [ ] (c) $1/(1 + r)$
- [ ] (d) $m_1/m_2$

**Q5.** Um aumento da taxa de juros necessariamente aumenta a poupança se:

- [ ] (a) O consumidor é tomador de empréstimos
- [ ] (b) As preferências são Cobb-Douglas
- [x] (c) O efeito substituição domina o efeito renda e o consumidor já é poupador
- [ ] (d) Sempre aumenta

</div>

---

!!! abstract "Próxima aula"
    Na **Aula 13**, iniciaremos o bloco de escolha sob incerteza, com loterias, o paradoxo de São Petersburgo e o teorema da utilidade esperada de Von Neumann-Morgenstern.
