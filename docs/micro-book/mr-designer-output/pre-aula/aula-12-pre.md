# Pré-Aula 12 — Jogo de Loterias + Seguro (Prática)

!!! info "Leitura obrigatória"
    **Cap. 7, Seções 7.5–7.7** (diversificação, paradoxo de Allais) do livro interativo | Tempo estimado: **40 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Explicar como a diversificação reduz risco e aplicar o conceito a portfólios simples
2. Descrever o Paradoxo de Allais e identificar a violação do axioma de independência
3. Contrastar a abordagem de utilidade esperada com a Teoria dos Prospectos de Kahneman e Tversky

---

## 1. Diversificação: "não coloque todos os ovos na mesma cesta"

Suponha dois ativos com retornos aleatórios $X_1$ e $X_2$, cada um com valor esperado $\mu$ e variância $\sigma^2$, e correlação $\rho$.

Se investimos fração $\alpha$ no ativo 1 e $(1-\alpha)$ no ativo 2:

$$E[R] = \alpha \mu + (1-\alpha)\mu = \mu$$

$$\text{Var}(R) = \alpha^2 \sigma^2 + (1-\alpha)^2 \sigma^2 + 2\alpha(1-\alpha)\rho\sigma^2$$

Para $\alpha = 0{,}5$ e $\rho < 1$:

$$\text{Var}(R) = \frac{\sigma^2(1 + \rho)}{2} < \sigma^2$$

O retorno esperado é **o mesmo**, mas o risco é **menor**. Essa é a mágica da diversificação.

!!! example "Exemplo: dois investimentos"
    Dois ativos, cada um com retorno R$ 100 ou R$ 0 com probabilidades iguais, independentes ($\rho = 0$).

    - **Tudo no ativo 1**: R$ 100 ou R$ 0 (variância = $2500$)
    - **50% em cada**: R$ 100 (25%), R$ 50 (50%), R$ 0 (25%) (variância = $1250$)

    Mesmo $E[R] = 50$, mas variância caiu pela metade!

---

## 2. A abordagem por estados da natureza

Uma forma alternativa (e muitas vezes mais conveniente) de modelar incerteza é pensar em **estados da natureza**:

- Estado 1 ("bom"): ocorre com probabilidade $\pi_1$
- Estado 2 ("ruim"): ocorre com probabilidade $\pi_2 = 1 - \pi_1$

A riqueza contingente é $(W_1, W_2)$ — quanto o agente tem em cada estado.

O problema de maximização:

$$\max_{W_1, W_2} \pi_1 u(W_1) + \pi_2 u(W_2)$$

sujeito à restrição orçamentária entre estados.

As **curvas de indiferença no espaço de estados** têm TMS:

$$\text{TMS} = \frac{\pi_1 u'(W_1)}{\pi_2 u'(W_2)}$$

Na **linha de certeza** ($W_1 = W_2$): $\text{TMS} = \frac{\pi_1}{\pi_2}$

---

## 3. O Paradoxo de Allais (1953)

Maurice Allais propôs o seguinte experimento mental:

**Situação A** — escolha entre:

| Loteria | Descrição |
|:---|:---|
| $L_1$ | R$ 1 milhão com certeza |
| $L_2$ | R$ 5 milhões (10%), R$ 1 milhão (89%), R$ 0 (1%) |

**Situação B** — escolha entre:

| Loteria | Descrição |
|:---|:---|
| $L_3$ | R$ 1 milhão (11%), R$ 0 (89%) |
| $L_4$ | R$ 5 milhões (10%), R$ 0 (90%) |

A maioria das pessoas escolhe $L_1$ na Situação A e $L_4$ na Situação B.

**O problema**: essa combinação viola o axioma de independência!

Pela utilidade esperada, $L_1 \succ L_2$ implica:

$$u(1M) > 0{,}10 \, u(5M) + 0{,}89 \, u(1M) + 0{,}01 \, u(0)$$
$$0{,}11 \, u(1M) > 0{,}10 \, u(5M) + 0{,}01 \, u(0)$$

Mas isso é equivalente a $L_3 \succ L_4$, contradizendo a escolha $L_4 \succ L_3$.

!!! note "Intuição Econômica"
    **O que o Paradoxo de Allais revela?**

    As pessoas dão um peso desproporcional à **certeza**. Na Situação A, trocar R$ 1 milhão certo por uma loteria com 1% de chance de nada é insuportável. Na Situação B, ambas envolvem risco alto, então a diferença de 1% parece irrelevante.

    Este fenômeno — chamado **efeito certeza** — mostra que seres humanos não processam probabilidades linearmente. Pequenas probabilidades perto de 0 ou 1 são distorcidas. Isso motivou a Teoria dos Prospectos.

---

## 4. Teoria dos Prospectos: uma prévia

Kahneman e Tversky (1979) propuseram um modelo alternativo com três ingredientes:

### 4.1 Função de valor (não utilidade)

$$v(x) = \begin{cases} x^\alpha & \text{se } x \geq 0 \\ -\lambda(-x)^\beta & \text{se } x < 0 \end{cases}$$

Características:

- **Ponto de referência**: ganhos e perdas são relativos ao status quo
- **Côncava para ganhos, convexa para perdas**: avesso ao risco em ganhos, amante do risco em perdas
- **Aversão à perda**: $\lambda > 1$ (tipicamente $\lambda \approx 2{,}25$) — perder R$ 100 dói mais do que ganhar R$ 100 agrada

### 4.2 Função de ponderação de probabilidades

$$w(p) \neq p$$

As pessoas **sobrepesam** probabilidades pequenas e **subpesam** probabilidades grandes:

- $w(0{,}01) > 0{,}01$: superestimam chances de eventos raros (loterias, catástrofes)
- $w(0{,}99) < 0{,}99$: subestimam chances de eventos quase certos

---

## 5. Preparação para o jogo de loterias

Na próxima aula, faremos dois exercícios práticos:

### Jogo 1: Teste de Allais em sala

Você responderá (anonimamente) a sequências de escolhas entre loterias. Os resultados da turma serão compilados em tempo real para verificar se o paradoxo de Allais se manifesta.

### Jogo 2: Design de seguro (PBL)

Em grupos, vocês receberão um cenário com:

- Uma população com distribuição de riqueza e riscos
- Custos administrativos da seguradora
- Informação assimétrica (alguns grupos terão seleção adversa)

O desafio: **desenhar um contrato de seguro** que seja viável para a seguradora e atraente para os consumidores.

!!! tip "Como se preparar"
    1. Revise o cálculo de prêmio de risco e equivalente de certeza (Pré-Aula 11)
    2. Entenda a condição de seguro atuarialmente justo: $\gamma = p$
    3. Pense em por que a seguradora cobra $\gamma > p$ na prática (custos, lucro, seleção adversa)
    4. Reflita: você escolheria $L_1$ ou $L_2$ na Situação A de Allais?

---

## Exercícios de preparação

**Exercício 1.** Dois ativos independentes, cada um retornando R$ 200 ou R$ 0 com probabilidades iguais. Compare a variância de investir tudo no ativo 1 versus dividir igualmente entre os dois.

??? success "Solução"
    **Tudo no ativo 1**: $E[R] = 100$, $\text{Var}(R) = 0{,}5(200-100)^2 + 0{,}5(0-100)^2 = 10000$

    **50% em cada** (independentes):

    Resultados possíveis: $(200,200) \to 200$; $(200,0) \to 100$; $(0,200) \to 100$; $(0,0) \to 0$

    Com probabilidades: $200$ (25%), $100$ (50%), $0$ (25%). $E[R] = 100$.

    $\text{Var}(R) = 0{,}25(200-100)^2 + 0{,}5(100-100)^2 + 0{,}25(0-100)^2 = 2500 + 0 + 2500 = 5000$

    A variância caiu de $10000$ para $5000$ — redução de 50%.

**Exercício 2.** Verifique que as escolhas $L_1 \succ L_2$ e $L_4 \succ L_3$ no Paradoxo de Allais são inconsistentes com a utilidade esperada.

??? success "Solução"
    $L_1 \succ L_2$:

    $u(1M) > 0{,}10 \, u(5M) + 0{,}89 \, u(1M) + 0{,}01 \, u(0)$

    Subtraindo $0{,}89 \, u(1M)$:

    $0{,}11 \, u(1M) > 0{,}10 \, u(5M) + 0{,}01 \, u(0)$ ... (*)

    $L_4 \succ L_3$:

    $0{,}10 \, u(5M) + 0{,}90 \, u(0) > 0{,}11 \, u(1M) + 0{,}89 \, u(0)$

    Simplificando: $0{,}10 \, u(5M) + 0{,}01 \, u(0) > 0{,}11 \, u(1M)$ ... (**)

    (**) contradiz diretamente (*). Logo, as escolhas são inconsistentes com qualquer função $u$ na utilidade esperada.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** A diversificação reduz o risco porque:

- [ ] (a) Aumenta o retorno esperado
- [x] (b) Reduz a variância do portfólio sem alterar o retorno esperado
- [ ] (c) Elimina todo o risco
- [ ] (d) Aumenta a correlação entre ativos

**Q2.** O Paradoxo de Allais viola qual axioma da utilidade esperada?

- [ ] (a) Completude
- [ ] (b) Transitividade
- [ ] (c) Continuidade
- [x] (d) Independência

**Q3.** Na Teoria dos Prospectos, "aversão à perda" significa que:

- [ ] (a) O agente nunca aceita loterias
- [x] (b) Perdas pesam mais do que ganhos de mesmo valor absoluto
- [ ] (c) O agente é avesso ao risco em todos os domínios
- [ ] (d) A função utilidade é côncava

**Q4.** Na abordagem por estados, sobre a linha de certeza ($W_1 = W_2$), a TMS é igual a:

- [ ] (a) 1
- [x] (b) $\pi_1 / \pi_2$
- [ ] (c) $u'(W_1) / u'(W_2)$
- [ ] (d) 0

**Q5.** Se pessoas sobrepesam probabilidades pequenas, como prevê a Teoria dos Prospectos, elas tendem a:

- [ ] (a) Nunca comprar seguros
- [ ] (b) Ignorar riscos raros
- [x] (c) Comprar seguros caros contra eventos raros e bilhetes de loteria
- [ ] (d) Ser neutras ao risco para eventos raros

</div>

---

!!! abstract "Próxima aula"
    **Aula 12**: Jogo de loterias (Teste de Allais em sala) + Design de contrato de seguro em grupos (PBL). Traga calculadora!
