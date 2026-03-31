# Pré-Aula 25 — Monopólio II: Discriminação de Preços e Regulação

!!! info "Leitura obrigatória"
    **Cap. 15, Seções 15.4–15.7** do livro interativo | Tempo estimado: **45 min**

## Objetivos de aprendizagem

Após estudar este material e antes de vir à aula, você deve ser capaz de:

1. Classificar os três graus de discriminação de preços de Pigou e analisar seus efeitos sobre eficiência e excedentes
2. Explicar tarifa em duas partes e bundling como estratégias de extração de excedente
3. Comparar regimes de regulação de monopólio natural e o papel dos mercados contestáveis

---

## 1. Discriminação de preços: os três graus de Pigou

A **discriminação de preços** ocorre quando uma firma cobra preços diferentes a consumidores diferentes (ou por unidades diferentes) sem que a diferença reflita custos.

### Primeiro grau (discriminação perfeita)

O monopolista cobra de cada consumidor exatamente sua **disposição a pagar**. Resultado:

$$P_i = v_i \quad \text{para cada consumidor } i$$

- Todo o excedente do consumidor é capturado pelo monopolista: $EC = 0$
- A quantidade é **eficiente**: $Q = Q_c$ (mesma da competição)
- **Não há peso morto** — mas toda a renda vai para o monopolista

Na prática, exige informação perfeita sobre cada consumidor — raramente viável.

### Segundo grau (autosseleção / menu de contratos)

O monopolista não observa o tipo de cada consumidor, mas oferece um **menu de opções** (pacotes, tamanhos, versões) para que os consumidores se autosselecionem:

- Versão premium (alto preço, alta qualidade) para consumidores de alta disposição a pagar
- Versão básica (baixo preço, qualidade reduzida) para consumidores de baixa disposição a pagar

A eficiência é intermediária: o tipo "alto" consome a quantidade eficiente, mas o tipo "baixo" consome **menos** que o eficiente (distorção para baixo para manter a compatibilidade de incentivos).

### Terceiro grau (segmentação de mercado)

O monopolista identifica **grupos** de consumidores (por localização, idade, renda) e cobra preços diferentes por grupo:

$$RMg_1(Q_1) = RMg_2(Q_2) = CMg$$

A regra ótima aloca mais produção ao mercado mais **elástico** (preço menor):

$$\frac{P_1}{P_2} = \frac{1 - 1/|\varepsilon_2|}{1 - 1/|\varepsilon_1|}$$

!!! note "Intuição Econômica"
    **A discriminação de 3o grau é a mais comum no dia a dia.** Meia-entrada para estudantes, tarifas de ônibus diferenciadas, preços regionais de software — todos exploram o fato de que diferentes grupos têm elasticidades diferentes. A firma cobra mais de quem é mais inelástico (menos sensível ao preço) e menos de quem é mais elástico.

---

## 2. Tarifa em duas partes e bundling

### Tarifa em duas partes

$$T(q) = A + pq$$

Onde $A$ é a **taxa fixa** (entrada, mensalidade) e $p$ é o preço por unidade. Com consumidores idênticos, a estratégia ótima é:

- $p = CMg$ (preço marginal eficiente)
- $A = EC$ (taxa fixa captura todo o excedente)

Com consumidores heterogêneos, o desenho ótimo envolve trade-offs entre eficiência e extração.

### Bundling (venda casada)

Vender dois bens juntos por um preço único pode ser lucrativo quando as disposições a pagar são **negativamente correlacionadas** entre os bens:

Se dois consumidores têm valorações inversamente correlacionadas (tipo 1 valoriza mais o bem A; tipo 2 valoriza mais o B), suas valorações do pacote podem ser iguais. Cobrar um preço único pelo bundle extrai mais excedente do que vender separadamente.

---

## 3. Regulação de monopólio natural

Quando o monopólio é natural (CMe decrescente), a regulação busca conciliar eficiência com viabilidade financeira:

### First-best: preço = CMg

$$P^{FB} = CMg$$

Eficiente, mas se $CMg < CMe$ (como no monopólio natural), a firma tem **prejuízo**. Requer subsídio governamental.

### Second-best: preço = CMe

$$P^{SB} = CMe$$

A firma cobre seus custos (lucro zero), mas há **peso morto** — preço acima do CMg.

### Price cap

O regulador fixa um teto $P_t = RPI - X$ que cresce com a inflação menos um fator de produtividade. Incentiva eficiência: a firma que reduzir custos retém a diferença.

### Taxa de retorno

Lucro "justo" sobre o capital investido. Problema: **efeito Averch-Johnson** — a firma sobre-investe em capital para inflar a base de remuneração.

!!! note "Intuição Econômica"
    **Não existe regulação perfeita.** O first-best é eficiente mas requer subsídio (e quem paga o subsídio?). O second-best é viável mas ineficiente. O price cap incentiva eficiência mas requer informação sobre $X$. A taxa de retorno distorce o mix de insumos. Todo regime regulatório envolve trade-offs entre eficiência alocativa, eficiência produtiva e viabilidade financeira.

---

## 4. Mercados contestáveis

A teoria dos **mercados contestáveis** (Baumol, Panzar, Willig) argumenta que mesmo um monopolista pode se comportar competitivamente se a **ameaça de entrada** for crível — isto é, se não houver custos afundados (*sunk costs*). Um entrante potencial pode praticar *hit-and-run*: entrar, lucrar e sair. Antecipando isso, o monopolista cobra $P = CMe$ (lucro zero).

Na prática, custos afundados são ubíquos, limitando a contestabilidade. Mas a teoria mostra que **barreiras à entrada**, não o número de firmas, determinam o poder de mercado.

---

## Gráfico interativo: discriminação de preços

<div id="graph-discriminacao" style="min-height: 450px;">
<iframe src="graficos/cap15/discriminacao-precos.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Compare o monopólio simples com a discriminação de 1o, 2o e 3o grau
    - Na discriminação perfeita, observe que $Q = Q_c$ e $EC = 0$
    - Na discriminação de 3o grau, note como os preços diferem entre mercados

---

## Gráfico interativo: regulação de monopólio

<div id="graph-regulacao" style="min-height: 450px;">
<iframe src="graficos/cap15/regulacao-monopolio.html"></iframe>
</div>

!!! tip "Explore o gráfico"
    - Compare os resultados de $P = CMg$ (first-best) e $P = CMe$ (second-best)
    - Observe o prejuízo da firma sob regulação first-best quando $CMg < CMe$
    - Note que o DWL do second-best é menor que o do monopólio não regulado

---

## Exercícios de preparação

**Exercício 1.** Um monopolista enfrenta dois mercados: $P_1 = 100 - Q_1$ e $P_2 = 60 - Q_2$, com $CMg = 20$. Encontre os preços e quantidades ótimas sob discriminação de 3o grau.

??? success "Solução"
    Mercado 1: $RMg_1 = 100 - 2Q_1 = 20 \implies Q_1 = 40$, $P_1 = 60$.

    Mercado 2: $RMg_2 = 60 - 2Q_2 = 20 \implies Q_2 = 20$, $P_2 = 40$.

    $\pi = (60-20)(40) + (40-20)(20) = 1.600 + 400 = 2.000$.

    Verificação: $|\varepsilon_1| = 60/(1 \times 40) = 1{,}5$; $|\varepsilon_2| = 40/(1 \times 20) = 2$.

    $L_1 = 1/1{,}5 = 0{,}67$; $L_2 = 1/2 = 0{,}5$. Mercado mais inelástico paga mais.

**Exercício 2.** Um monopolista natural tem $C(Q) = 100 + 10Q$ (CMe decrescente). A demanda é $P = 50 - Q$. Compare: (a) monopólio não regulado, (b) $P = CMg$, (c) $P = CMe$.

??? success "Solução"
    (a) Monopólio: $RMg = 50 - 2Q = 10 \implies Q_m = 20$, $P_m = 30$. $\pi = (30-10)(20) - 100 = 300$.

    (b) First-best: $P = CMg = 10$. $Q = 40$. $\pi = 10(40) - 100 - 10(40) = -100$. Prejuízo: requer subsídio de R\$ 100.

    (c) Second-best: $P = CMe = 10 + 100/Q$. Substituindo em $P = 50 - Q$: $50 - Q = 10 + 100/Q$. $40Q - Q^2 = 100$. $Q^2 - 40Q + 100 = 0$. $Q = (40 - \sqrt{1.200})/2 \approx 2{,}68$ ou $Q \approx 37{,}3$. Tomando $Q \approx 37{,}3$, $P \approx 12{,}7$. $\pi = 0$.

    DWL: monopólio > second-best > first-best (= 0).

**Exercício 3.** Por que o bundling pode ser mais lucrativo que a venda separada? Dê a condição sobre as disposições a pagar.

??? success "Solução"
    O bundling é mais lucrativo quando as disposições a pagar dos consumidores pelos dois bens são **negativamente correlacionadas** — quem valoriza mais o bem A tende a valorizar menos o bem B, e vice-versa. Nesse caso, a disposição a pagar pelo pacote é mais **homogênea** entre os consumidores do que a disposição por cada bem isoladamente. O monopolista pode então cobrar um preço único alto pelo pacote que todos (ou quase todos) aceitem, extraindo mais excedente do que com preços separados.

    Formalmente: correlação negativa implica $\text{Var}(v_A + v_B) < \text{Var}(v_A) + \text{Var}(v_B)$, reduzindo a dispersão e permitindo precificação mais agressiva.

---

## Quiz Pré-Aula

!!! warning "Complete antes da aula"
    Responda no LMS até **2 horas antes** do início da aula.

<div class="quiz-container" style="background: #f8f9fa; padding: 1.5rem; border-radius: 8px; margin: 1rem 0;">

**Q1.** Na discriminação de preços de 1o grau (perfeita):

- [ ] (a) Há peso morto igual ao do monopólio simples
- [x] (b) $Q = Q_c$ e $EC = 0$ — eficiente mas monopolista captura todo o excedente
- [ ] (c) O monopolista cobra o mesmo preço de todos
- [ ] (d) A quantidade é menor que no monopólio simples

**Q2.** Na discriminação de 3o grau, o mercado com demanda mais inelástica:

- [x] (a) Paga preço mais alto
- [ ] (b) Paga preço mais baixo
- [ ] (c) Recebe quantidade maior
- [ ] (d) Não é atendido

**Q3.** Na tarifa em duas partes com consumidores idênticos, a estratégia ótima é:

- [ ] (a) $A = 0$ e $p = P_m$
- [x] (b) $p = CMg$ e $A = EC$
- [ ] (c) $A = \pi$ e $p = 0$
- [ ] (d) $p = CMe$ e $A = CF$

**Q4.** A regulação $P = CMg$ de um monopólio natural:

- [ ] (a) Sempre gera lucro positivo
- [x] (b) Pode gerar prejuízo quando $CMg < CMe$, exigindo subsídio
- [ ] (c) É idêntica à regulação $P = CMe$
- [ ] (d) Elimina o monopólio

**Q5.** Segundo a teoria dos mercados contestáveis, o poder de mercado depende de:

- [ ] (a) Apenas do número de firmas
- [ ] (b) Da regulação governamental
- [x] (c) Da existência de barreiras à entrada (especialmente custos afundados)
- [ ] (d) Do tamanho do mercado

</div>

---

!!! abstract "Próxima aula"
    Parabéns por completar o módulo de Teoria da Firma e Estruturas de Mercado! Na próxima etapa do curso, avançaremos para **Teoria dos Jogos e Oligopólio**. Revise os conceitos de equilíbrio de Nash!
