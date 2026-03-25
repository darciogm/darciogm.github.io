# Exercícios com Inteligência Artificial

Estes exercícios usam modelos de linguagem (como Claude ou ChatGPT) como **ferramenta pedagógica**. O objetivo não é que a IA resolva o exercício por você, mas que você use a IA para explorar, simular e verificar resultados teóricos.

!!! warning "Uso responsável"
    A IA pode cometer erros matemáticos. Sempre verifique os resultados analiticamente. O objetivo é desenvolver intuição, não terceirizar o raciocínio.

---

## IA.1 — Utilidade CES e Casos Limite { #ia-1 }

**Capítulo:** [4 — Você Quer Tudo. Mas Não Pode.](cap04/index.md)

**Enunciado completo:**

Peça à IA para resolver o problema de maximização do consumidor com utilidade CES $u = (x_1^\rho + x_2^\rho)^{1/\rho}$ para diferentes valores de $\rho$. Compare as soluções quando $\rho \to 0$ (Cobb-Douglas), $\rho = 1$ (substitutos perfeitos) e $\rho \to -\infty$ (complementos perfeitos). A IA acertou todos os casos limite? Verifique.

**Instruções detalhadas:**

1. Forneça à IA a função utilidade CES, a restrição orçamentária $p_1 x_1 + p_2 x_2 = I$, e peça para resolver pelo método de Lagrange para $\rho$ genérico.
2. Peça para ela substituir $\rho = 0{,}5$, $\rho = -1$ e $\rho = -5$ e calcular as demandas marshallianas explicitamente.
3. Peça para ela tomar os limites $\rho \to 0$, $\rho = 1$ e $\rho \to -\infty$ e verificar se recupera as demandas Cobb-Douglas, de substitutos perfeitos e de complementos perfeitos (Leontief).
4. **Verificação:** Resolva manualmente pelo menos o caso $\rho \to 0$ usando a regra de L'Hôpital e compare com a resposta da IA.

**O que observar:** A IA costuma acertar o caso geral, mas pode errar nos limites — especialmente o caso $\rho \to 0$, que exige L'Hôpital, e o caso $\rho \to -\infty$, que exige argumento de dominância. Verifique se a IA justificou corretamente cada passagem ao limite.

---

## IA.2 — Equilíbrios de Nash: Puros e Mistos { #ia-2 }

**Capítulo:** [9a — Jogos Estáticos com Informação Completa](cap09a/index.md)

**Enunciado completo:**

Use a IA para encontrar todos os equilíbrios de Nash (puros e mistos) do jogo:

|  | L | R |
|--|---|---|
| **U** | 3, 1 | 0, 0 |
| **D** | 0, 0 | 1, 3 |

Depois, peça para a IA explicar por que o equilíbrio misto existe. Verifique se as probabilidades calculadas são corretas resolvendo o sistema de indiferença manualmente.

**Instruções detalhadas:**

1. Apresente a matriz de payoffs à IA e peça para encontrar **todos** os equilíbrios de Nash (puros e mistos).
2. Peça para ela escrever explicitamente o sistema de indiferença: as probabilidades que tornam cada jogador indiferente entre suas estratégias.
3. Peça para ela interpretar economicamente o equilíbrio misto: por que os jogadores randomizam? O que acontece se um jogador desviar da probabilidade de equilíbrio?
4. **Verificação manual:** O Jogador 2 deve ser indiferente entre L e R, o que exige $3p = 1 - p$, ou seja, $p = 1/4$ (probabilidade de U). Analogamente, $q = 3/4$ (probabilidade de L). Confira se a IA obteve esses valores.

**O que observar:** A IA geralmente encontra os equilíbrios puros sem dificuldade. No equilíbrio misto, verifique se ela montou o sistema de indiferença corretamente (é comum inverter qual jogador está sendo tornado indiferente).

---

## IA.3 — Deadweight Loss do Monopólio { #ia-3 }

**Capítulo:** [15 — Sem Concorrente, Sem Piedade](cap15/index.md)

**Enunciado completo:**

Peça à IA para calcular o deadweight loss de um monopólio com demanda $P = 100 - 2Q$ e $CMg = 20$. Depois peça para ela comparar com discriminação de preços de 1º grau. A IA distinguiu corretamente os excedentes? Desenhe os gráficos para confirmar.

**Instruções detalhadas:**

1. Peça à IA para encontrar a quantidade e o preço de monopólio ($Q_m$, $P_m$), a quantidade competitiva ($Q_c$, $P_c$) e calcular o deadweight loss (triângulo de Harberger).
2. Peça para ela calcular o excedente do consumidor, o excedente do produtor e o excedente total sob monopólio e sob concorrência perfeita.
3. Peça para ela analisar o caso de discriminação de preços de 1º grau: qual é a quantidade produzida? Quem captura o excedente? Há perda de peso morto?
4. **Verificação:** $Q_m = 20$, $P_m = 60$, $Q_c = 40$, $P_c = 20$. O DWL é $\frac{1}{2} \times (60 - 20) \times (40 - 20) = 400$. Com discriminação de 1º grau, $Q = 40$ e $DWL = 0$, mas $EC = 0$.
5. Peça à IA para gerar o gráfico (ou desenhe você mesmo) mostrando as áreas de excedente nos três cenários.

**O que observar:** Erros comuns da IA incluem confundir a receita marginal com a demanda, calcular o DWL com a base errada, ou afirmar que a discriminação de 1º grau beneficia os consumidores.

---

## IA.4 — Simulação de Leilões de Primeiro Preço { #ia-4 }

**Capítulo:** [9c — Informação Incompleta](cap09c/index.md)

**Enunciado completo:**

Peça à IA para simular 1000 leilões de primeiro preço com 5 licitantes e valores uniformes em $[0, 100]$. Instrua-a a usar a estratégia de equilíbrio $b(v) = v \cdot \frac{n-1}{n} = v \cdot \frac{4}{5}$. Calcule a receita média e compare com a previsão teórica $E[R] = 100 \times \frac{n-1}{n+1} = 100 \times \frac{4}{6} = 66{,}67$.

**Instruções detalhadas:**

1. Peça à IA para escrever um código (Python, R ou pseudocódigo) que:
    - Gere 1000 leilões, cada um com 5 valores $v_i \sim U[0, 100]$.
    - Calcule os lances $b_i = v_i \times 4/5$.
    - Determine o vencedor (maior lance) e registre a receita (lance vencedor).
2. Peça para ela calcular a receita média e compará-la com $66{,}67$.
3. Peça para ela repetir a simulação com $n = 2$ e $n = 20$ licitantes. A fórmula teórica prevê receitas de $33{,}33$ e $95{,}24$ respectivamente. Os resultados simulados convergem?
4. **Verificação:** A receita esperada é $E[\text{max lance}] = E[v_{(n)} \cdot (n-1)/n] = \frac{n-1}{n} \cdot \frac{n}{n+1} \cdot 100 = \frac{n-1}{n+1} \cdot 100$.

**O que observar:** A IA pode errar a estratégia de equilíbrio (confundindo leilão de primeiro e segundo preço) ou a derivação da receita esperada. O Teorema da Equivalência de Receitas prevê que primeiro e segundo preço geram a mesma receita esperada — peça para a IA verificar isso na simulação.

---

## IA.5 — Equação de Mincer com Dados Sintéticos { #ia-5 }

**Capítulo:** [17 — Economia do Trabalho](cap17/index.md)

**Enunciado completo:**

Peça à IA para gerar dados sintéticos de uma equação de Mincer com $\beta_1 = 0{,}10$ (retorno de 10% por ano de educação), $\beta_2 = 0{,}03$ e $\beta_3 = -0{,}0005$. Depois peça para ela estimar os parâmetros por OLS e verificar se recupera os valores originais. Discuta: por que a OLS funciona perfeitamente com dados sintéticos mas não com dados reais?

**Instruções detalhadas:**

1. Peça à IA para gerar $N = 5000$ observações com:
    - Educação $S_i \sim U[0, 16]$ anos.
    - Experiência $X_i \sim U[0, 40]$ anos.
    - Erro $\varepsilon_i \sim N(0, 0{,}25)$.
    - $\ln(w_i) = 1{,}5 + 0{,}10 \cdot S_i + 0{,}03 \cdot X_i - 0{,}0005 \cdot X_i^2 + \varepsilon_i$.
2. Peça para ela estimar a regressão $\ln(w) = \beta_0 + \beta_1 S + \beta_2 X + \beta_3 X^2 + \varepsilon$ por OLS.
3. Peça para ela comparar os coeficientes estimados com os verdadeiros e verificar se são estatisticamente indistinguíveis.
4. **Discussão:** Por que a OLS recupera os parâmetros perfeitamente? Porque nos dados sintéticos, $S$ e $X$ são independentes de $\varepsilon$ por construção. Nos dados reais, há viés de habilidade ($S$ é correlacionada com habilidade não observada, que está no erro), viés de seleção (quem trabalha é uma amostra não aleatória) e erro de medida.

**O que observar:** A IA deve produzir estimativas muito próximas dos valores verdadeiros. Se os valores diferirem significativamente, provavelmente há um erro no código de geração dos dados. Peça à IA para explicar cada fonte de viés em dados reais.

---

## IA.6 — Curva VPL e TIR { #ia-6 }

**Capítulo:** [18 — A Paciência Tem Preço](cap18/index.md)

**Enunciado completo:**

Peça à IA para calcular o VPL de um projeto com fluxos $[-100, 30, 35, 40, 45, 20]$ para 10 taxas de desconto diferentes (de 0% a 45%). Peça para ela plotar a curva $\text{VPL}(r)$ e encontrar a TIR. Compare com o gráfico interativo da Figura 18.2.

**Instruções detalhadas:**

1. Peça à IA para calcular $\text{VPL}(r) = -100 + \frac{30}{(1+r)} + \frac{35}{(1+r)^2} + \frac{40}{(1+r)^3} + \frac{45}{(1+r)^4} + \frac{20}{(1+r)^5}$ para $r \in \{0\%, 5\%, 10\%, 15\%, 20\%, 25\%, 30\%, 35\%, 40\%, 45\%\}$.
2. Peça para ela organizar os resultados em uma tabela e plotar a curva VPL(r).
3. Peça para encontrar a TIR resolvendo $\text{VPL}(r) = 0$ numericamente.
4. **Verificação:** Para $r = 0\%$, $\text{VPL} = -100 + 30 + 35 + 40 + 45 + 20 = 70$. Para $r = 45\%$, o VPL deve ser negativo. A TIR deve estar entre 20% e 30%.
5. Compare a curva obtida com a Figura 18.2 do livro.

**O que observar:** A IA geralmente acerta os cálculos de VPL, mas pode errar a indexação dos períodos (começando de $t=0$ ou $t=1$). Verifique se o fluxo de $-100$ é tratado como $t=0$ (sem desconto). Para a TIR, verifique se a IA usou um método numérico adequado (bisseção, Newton-Raphson, ou função pronta como `numpy.irr`).

---

## IA.7 — Tragédia dos Comuns { #ia-7 }

**Capítulo:** [20 — Fumaça, Caronas e Tragédias](cap20/index.md)

**Enunciado completo:**

Descreva à IA o problema da tragédia dos comuns com 10 pescadores e peça para ela encontrar o equilíbrio de Nash e o ótimo social. A IA identificou corretamente a externalidade? Peça para ela propor 3 soluções e avalie se são consistentes com a teoria (Pigou, Coase, regulação direta).

**Instruções detalhadas:**

1. Forneça à IA o seguinte modelo: há 10 pescadores que compartilham um lago. Cada pescador $i$ escolhe esforço $e_i \geq 0$. O esforço total é $E = \sum_{i=1}^{10} e_i$. A captura total é $H(E) = 100E - E^2$ (rendimentos decrescentes). A captura do pescador $i$ é proporcional ao esforço: $h_i = e_i \cdot H(E)/E = e_i(100 - E)$. O custo do esforço é $c \cdot e_i$ com $c = 10$.
2. Peça para ela encontrar o equilíbrio de Nash simétrico ($e_i^* = e^*$ para todo $i$) e o ótimo social ($e_i^{**}$).
3. Peça para ela calcular a sobre-exploração: $E^*/E^{**}$.
4. Peça para ela propor 3 soluções e classificá-las segundo a teoria:
    - **Pigou:** imposto por unidade de esforço.
    - **Coase:** atribuição de direitos de propriedade sobre o lago.
    - **Regulação direta:** cotas de pesca.
5. **Verificação:** No equilíbrio de Nash, cada pescador maximiza $e_i(100 - e_i - E_{-i}) - 10e_i$. A CPO é $100 - 2e_i - E_{-i} - 10 = 0$. Em equilíbrio simétrico: $90 - 2e^* - 9e^* = 0 \Rightarrow e^* = 90/11 \approx 8{,}18$, logo $E^* \approx 81{,}8$. No ótimo social, maximiza-se $E(100 - E) - 10E$, dando $E^{**} = 45$.

**O que observar:** A IA pode errar ao montar a função de payoff individual (confundindo captura total com captura individual) ou ao calcular a CPO do equilíbrio de Nash. Verifique cuidadosamente se ela distinguiu o efeito da externalidade (cada pescador ignora o impacto do seu esforço sobre os demais).

---

## IA.8 — Plataforma Bilateral com Efeitos de Rede { #ia-8 }

**Capítulo:** [21 — Plataformas, Redes e Dados](cap21/index.md)

**Enunciado completo:**

Peça à IA para modelar uma plataforma bilateral com efeitos de rede cruzados. Dê os parâmetros: $a_B = 100$, $a_S = 80$, $\gamma_B = 0{,}5$, $\gamma_S = 0{,}3$, $c = 10$. Peça para ela encontrar os preços ótimos e identificar qual lado é subsidiado. Verifique com o gráfico interativo da Figura 21.2.

**Instruções detalhadas:**

1. Forneça à IA o modelo de Rochet-Tirole simplificado:
    - Compradores: $n_B = a_B - p_B + \gamma_B n_S$ (demanda cresce com vendedores).
    - Vendedores: $n_S = a_S - p_S + \gamma_S n_B$ (demanda cresce com compradores).
    - Lucro da plataforma: $\pi = (p_B - c)n_B + (p_S - c)n_S$.
2. Peça para ela resolver o sistema de demanda simultânea e encontrar $n_B$ e $n_S$ em função dos preços.
3. Peça para ela maximizar o lucro e encontrar os preços ótimos $p_B^*$ e $p_S^*$.
4. Peça para identificar qual lado é subsidiado ($p < c$) e por quê.
5. **Verificação:** Substitua os parâmetros e resolva o sistema. Com efeitos de rede cruzados, o lado com maior externalidade sobre o outro tende a ser subsidiado. Verifique se os preços são consistentes com os gráficos da Figura 21.2.

**O que observar:** A IA pode ter dificuldade com o sistema simultâneo de demandas (feedback loop entre $n_B$ e $n_S$). Verifique se ela resolveu corretamente o sistema antes de otimizar. Erros comuns incluem tratar as demandas como independentes (ignorando os efeitos cruzados) ou errar os sinais na otimização.

---

## IA.9 — Simulando o Jogo de Bens Públicos { #ia-9 }

**Capítulo:** [22 — O Laboratório do Economista](cap22/index.md)

**Enunciado completo:**

Peça à IA para simular um jogo de bens públicos com \(N = 10\) jogadores, dotação \(w = 20\) e fator de multiplicação \(\alpha = 2\). Peça para ela: (1) calcular o equilíbrio de Nash e o ótimo social; (2) simular 10 rodadas com jogadores que começam contribuindo 50% e ajustam suas contribuições gradualmente em direção à melhor resposta; (3) plotar a evolução das contribuições ao longo das rodadas. Compare com os dados experimentais típicos.

**Instruções detalhadas:**

1. Defina o jogo para a IA:
    - Cada jogador \(i\) tem dotação \(w = 20\) e escolhe contribuição \(g_i \in [0, 20]\) ao bem público.
    - Payoff: \(\pi_i = (w - g_i) + \frac{\alpha}{N} \sum_{j=1}^N g_j = (20 - g_i) + 0{,}2 \sum g_j\).
    - Como \(\alpha/N = 0{,}2 < 1\), a melhor resposta individual é \(g_i = 0\) (free-riding).
2. Peça para ela calcular: (a) Equilíbrio de Nash: \(g_i^* = 0\) para todo \(i\), payoff = 20 cada; (b) Ótimo social: \(g_i = 20\) para todo \(i\), payoff = \(0 + 0{,}2 \times 200 = 40\) cada.
3. Peça para simular 10 rodadas: Na rodada 1, cada jogador contribui \(g_i = 10\) (50%). A cada rodada, cada jogador ajusta sua contribuição em 30% na direção da melhor resposta (\(g = 0\)): \(g_i^{t+1} = 0{,}7 \times g_i^t\).
4. Peça para plotar a média de contribuições por rodada.
5. **Verificação:** A média deve decair exponencialmente de 10 para perto de 0 (atingindo ~1,2 na rodada 10). Compare com evidência experimental: Fehr & Gächter (2000) mostram decaimento similar, com contribuições caindo de ~50% para ~15-20% na rodada final (sem punição). Com punição, contribuições se mantêm altas (~80%).

**O que observar:** A IA pode apresentar o equilíbrio de Nash corretamente mas ter dificuldade com a simulação dinâmica. Verifique se a trajetória de ajuste converge monotonicamente para zero. Discuta: por que a evidência experimental mostra contribuições iniciais positivas se o EN prevê zero? Conecte com altruísmo condicional, reciprocidade e aversão à desigualdade (Cap. 8).

---

## IA.10 — Simulando a Espiral da Morte em Seguros de Saúde { #ia-10 }

**Capítulo:** [23 — Microeconomia da Saúde](cap23/index.md)

**Enunciado completo:**

Peça à IA para simular a dinâmica de seleção adversa em um mercado de seguros de saúde com 1.000 indivíduos, riscos distribuídos uniformemente em \([0, 1]\), perda de R\$ 10.000 e disposição a pagar de 1,2× o valor atuarial. Peça para ela: (1) calcular o prêmio de equilíbrio e o número de segurados; (2) simular a dinâmica período a período da espiral da morte; (3) plotar prêmio e número de segurados ao longo das iterações; (4) comparar o resultado com e sem mandato individual.

**Instruções detalhadas:**

1. Cada indivíduo \(i\) tem risco \(r_i \sim U[0,1]\). A perda é R\$ 10.000. O valor atuarial do seguro para \(i\) é \(r_i \times 10.000\). A disposição a pagar é \(1{,}2 \times r_i \times 10.000\).
2. No período 1, o prêmio é o custo médio: \(P_1 = E[r_i] \times 10.000 = 5.000\). Mas apenas indivíduos com disposição a pagar ≥ P compram. Isso eleva o risco médio do pool, forçando prêmio mais alto no período 2.
3. A espiral continua até o equilíbrio (parcial ou colapso total). Com mandato, todos compram e \(P = 5.000\) é sustentável.

**O que observar:** A IA pode ter dificuldade com o loop iterativo. Verifique se a convergência é monotônica (prêmio sobe, pool encolhe). O exercício ilustra por que a seleção adversa pode destruir mercados de seguros voluntários — fundamento teórico do Obamacare e da regulação da ANS no Brasil.

---

## IA.11 — Simulando um Mercado de Carbono { #ia-11 }

**Capítulo:** [24 — Economia Ambiental](cap24/index.md)

**Enunciado completo:**

Peça à IA para simular um mercado de carbono com 10 firmas, cada uma com curva de custo marginal de abatimento linear \(\text{CMgA}_i = a_i + b_i \cdot e_i\), onde os parâmetros \(a_i\) e \(b_i\) variam entre firmas. Peça para ela: (1) encontrar a alocação eficiente para um cap de 500 toneladas; (2) calcular o preço de equilíbrio da permissão; (3) comparar o custo total com uma regulação uniforme; (4) plotar as curvas de custo marginal de cada firma e o preço de equilíbrio.

**Instruções detalhadas:**

1. Gere 10 firmas com parâmetros aleatórios: \(a_i \sim U[5, 15]\), \(b_i \sim U[0{,}5, 2{,}0]\), emissões baseline \(\bar{e}_i \sim U[80, 120]\).
2. O cap total é 500 toneladas (emissões baseline totais ~1.000). Cada firma deve abater \(\bar{e}_i - e_i\).
3. Na alocação eficiente, \(\text{CMgA}_i = P^*\) para todas as firmas (equalização de custos marginais). Resolva para \(P^*\) e as emissões alocadas.
4. Na regulação uniforme, cada firma reduz a mesma proporção (50%). Calcule o custo total e compare.

**O que observar:** O mercado de carbono deve gerar custo total menor que a regulação uniforme. A economia vem de concentrar o abatimento nas firmas com menor custo marginal. Peça à IA para calcular a "economia de eficiência" em percentual. Conecte com o EU ETS e o RenovaBio discutidos no Cap. 24.
