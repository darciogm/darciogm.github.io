# Pré-Aula 16 — Escolha sob Incerteza IV: Mercados de Risco e Informação

!!! info "Leitura obrigatória"
    **Cap. 7, Seção 7.7** e **Cap. 19, Seções 19.1–19.2** do livro-texto | Tempo estimado: **~45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Explicar como a seleção adversa pode levar ao colapso de mercados (modelo de Akerlof).
2. Distinguir entre risco moral e seleção adversa e identificar exemplos em mercados brasileiros.
3. Descrever os mecanismos de sinalização (Spence) e screening (Rothschild-Stiglitz) como soluções para informação assimétrica.

---

## 1. Mercado de Seguros e Informação Assimétrica

No modelo básico de seguros (Aula 14), assumimos que a seguradora conhece a probabilidade de sinistro $p$. Na prática, **o segurado conhece seu risco melhor que a seguradora** — temos **informação assimétrica**.

Dois problemas fundamentais surgem:

- **Seleção adversa** (antes do contrato): indivíduos de alto risco são os mais propensos a comprar seguro.
- **Risco moral** (após o contrato): o segurado toma menos cuidado após obter cobertura.

!!! note "Intuição Econômica"
    A informação assimétrica cria um círculo vicioso: a seguradora aumenta o prêmio para cobrir os altos riscos, o que expulsa os baixos riscos do mercado, o que piora ainda mais o pool de segurados. No limite, o mercado pode desaparecer.

---

## 2. Seleção Adversa: O Mercado de Limões

Akerlof (1970) analisou o mercado de carros usados. Vendedores conhecem a qualidade do carro; compradores não. Se há carros bons (valor $V_H$) e ruins/"limões" (valor $V_L$), o comprador oferece o preço esperado:

$$P^* = \theta V_H + (1-\theta) V_L$$

onde $\theta$ é a fração esperada de carros bons. Se $P^* < V_H$, donos de carros bons **saem do mercado**. Isso reduz $\theta$, reduz $P^*$, e mais vendedores bons saem — **espiral adversa**.

No caso extremo, apenas limões são vendidos: o mercado colapsa para bens de qualidade.

<iframe src="graficos/cap19/mercado-limoes.html"></iframe>

!!! tip "Explore o gráfico"
    Varie a proporção de carros bons e observe como o preço de equilíbrio se ajusta. Note o ponto crítico em que vendedores de carros bons abandonam o mercado.

---

## 3. Risco Moral

O **risco moral** (moral hazard) ocorre quando o comportamento do agente muda **após** a contratação, de forma não observável pelo principal:

- Segurado de automóvel dirige com menos cuidado após contratar seguro total.
- Trabalhador com estabilidade reduz esforço.
- Banco "grande demais para falir" assume riscos excessivos.

**Soluções típicas:**

- **Franquias e copagamentos**: o segurado retém parte do risco → incentivo a tomar cuidado.
- **Monitoramento**: câmeras, auditorias, avaliações de desempenho.
- **Contratos contingentes**: bônus por resultado, pagamento por desempenho.

!!! note "Intuição Econômica"
    A franquia resolve parcialmente o risco moral: como o segurado paga os primeiros R$ $d$ de qualquer sinistro, ele ainda tem incentivo para ser cauteloso. É um trade-off entre proteção contra risco e incentivos ao cuidado.

---

## 4. Sinalização (Spence)

Michael Spence (1973) mostrou como a parte informada pode **sinalizar** sua qualidade por meio de ações custosas:

- Trabalhadores de alta produtividade obtêm educação como **sinal**, mesmo que a educação não aumente diretamente a produtividade.
- O sinal funciona se for **mais custoso** para o tipo ruim imitar.

**Condição de separação**: custo do sinal para tipo alto < benefício; custo para tipo baixo > benefício.

$$w_H - c_H(e^*) > w_L \quad \text{e} \quad w_H - c_L(e^*) < w_L$$

onde $c_H < c_L$ (tipo alto tem custo menor para adquirir educação $e^*$).

<iframe src="graficos/cap07/seguro.html"></iframe>

!!! tip "Explore o gráfico"
    Os conceitos de autosseleção no mercado de seguros são análogos à sinalização: diferentes tipos escolhem contratos diferentes, revelando informação privada.

---

## 5. Screening (Rothschild-Stiglitz) e Aplicações no Brasil

Quando a parte **desinformada** age primeiro, ela pode oferecer um **menu de contratos** que induz autosseleção:

- Seguradora oferece: contrato A (cobertura alta, prêmio alto) e contrato B (cobertura baixa, prêmio baixo).
- Desenhados para que altos riscos prefiram A e baixos riscos prefiram B.

**Condição de compatibilidade de incentivos (IC):** cada tipo deve preferir o contrato desenhado para ele.

**Aplicações no Brasil:**

- **SUS**: sistema universal enfrenta seleção adversa reversa — quem pode pagar sai para planos privados, deixando o SUS com população de maior custo médio.
- **Proagro**: seguro agrícola subsidiado enfrenta tanto seleção adversa (regiões mais arriscadas demandam mais) quanto risco moral (menor cuidado com manejo).

<iframe src="graficos/cap08/ellsberg-urnas.html"></iframe>

!!! tip "Explore o gráfico"
    Este gráfico ilustra a incerteza sobre probabilidades. Em mercados com informação assimétrica, a seguradora enfrenta ambiguidade similar: não sabe a verdadeira distribuição de riscos dos segurados.

!!! note "Intuição Econômica"
    Sinalização e screening são espelhos: na sinalização, quem tem informação age primeiro; no screening, quem não tem informação desenha o menu. Ambos exploram o fato de que imitar é mais custoso para tipos ruins.

---

## Exercícios Preparatórios

**Exercício 1.** Em um mercado de carros usados, carros bons valem R$ 20.000 para compradores e R$ 15.000 para vendedores; limões valem R$ 10.000 para compradores e R$ 5.000 para vendedores. Se 50% são bons, qual o preço de equilíbrio? O mercado colapsa?

??? success "Solução"
    Preço esperado pelo comprador: $P = 0{,}5 \times 20000 + 0{,}5 \times 10000 = 15000$.  
    Vendedores de carros bons exigem pelo menos R$ 15.000 → aceitam vender a R$ 15.000 (marginalmente).  
    Vendedores de limões exigem R$ 5.000 → aceitam.  
    O mercado não colapsa totalmente neste caso. Porém, se o custo de oportunidade dos bons fosse R$ 16.000, eles sairiam e só limões seriam vendidos ($P = 10000$).

**Exercício 2.** Explique por que planos de saúde no Brasil cobram prêmios maiores para faixas etárias mais altas. Isso é seleção adversa ou precificação por risco?

??? success "Solução"
    É uma combinação. A **precificação por risco** reflete o fato observável de que idosos têm maior frequência de uso. Porém, há **seleção adversa residual**: dentro de cada faixa etária, pessoas mais doentes (informação privada) têm maior propensão a contratar planos mais completos. A ANS regula o fator de variação entre faixas (máximo de 1:6), justamente para evitar a exclusão de idosos — uma intervenção que reconhece a falha de mercado.

**Exercício 3.** Uma empresa oferece dois contratos de seguro: A (cobertura total, prêmio R$ 500) e B (cobertura 50%, prêmio R$ 150). Se o alto risco ($p = 0{,}3$, perda $L = 2000$) prefere A e o baixo risco ($p = 0{,}1$) prefere B, verifique se o contrato A é lucrativo.

??? success "Solução"
    Lucro esperado de A para alto risco: $500 - 0{,}3 \times 2000 = 500 - 600 = -100$.  
    O contrato A isolado dá **prejuízo** com alto risco! Para o menu ser viável, a seguradora precisa que o lucro de B com baixo risco compense:  
    Lucro de B: $150 - 0{,}1 \times 1000 = 150 - 100 = 50$.  
    Com proporções adequadas, o pool pode ser sustentável, mas o contrato A deve ser ajustado (prêmio mínimo de R$ 600 para break-even com alto risco).

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A seleção adversa ocorre:

- [x] (a) Antes da contratação, quando uma parte tem informação privada sobre seu tipo
- [ ] (b) Depois da contratação, quando o comportamento muda
- [ ] (c) Quando ambas as partes têm informação completa
- [ ] (d) Apenas em mercados de seguros

**Q2.** No modelo de Akerlof, o mercado de limões pode colapsar porque:

- [ ] (a) Compradores são irracionais
- [ ] (b) Vendedores são desonestos
- [x] (c) O preço médio expulsa vendedores de bens de alta qualidade
- [ ] (d) O governo impõe preços máximos

**Q3.** O risco moral é mitigado por:

- [ ] (a) Cobertura total sem franquia
- [x] (b) Franquias, copagamentos e monitoramento
- [ ] (c) Prêmio atuarialmente justo
- [ ] (d) Seleção adversa

**Q4.** Na sinalização de Spence, a educação funciona como sinal porque:

- [ ] (a) Aumenta a produtividade de todos igualmente
- [x] (b) É relativamente menos custosa para trabalhadores de alta produtividade
- [ ] (c) É obrigatória por lei
- [ ] (d) Todos os tipos investem igualmente

**Q5.** No screening de Rothschild-Stiglitz, a seguradora:

- [ ] (a) Oferece um único contrato para todos
- [ ] (b) Exige exame médico perfeito
- [x] (c) Oferece um menu de contratos que induz autosseleção
- [ ] (d) Recusa segurar altos riscos

</div>

---

!!! abstract "Próxima aula"
    Na **Aula 17**, iniciaremos a teoria da firma com a função de produção, isoquantas, TMST e rendimentos de escala.
