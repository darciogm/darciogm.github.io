# Exercícios e ANPEC

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. Um agente com função de utilidade côncava sobre riqueza é classificado como:"
    - (a) Amante do risco — prefere a loteria ao valor esperado com certeza
    - (b) Neutro ao risco — é indiferente entre a loteria e seu valor esperado
    - (c) Avesso ao risco — prefere o valor esperado com certeza à loteria
    - (d) Avesso ao risco apenas se a variância da loteria for alta

    ??? success "Resposta"
        **(c)** Concavidade de $u(W)$ implica, pela desigualdade de Jensen, que $E[u(W)] < u(E[W])$: a utilidade esperada da loteria é menor que a utilidade do valor esperado recebido com certeza. Portanto, o agente prefere a certeza — é avesso ao risco. A alternativa (a) requer convexidade; (b) requer linearidade; (d) é incorreta pois a aversão vale para qualquer loteria arriscada.

??? question "2. O equivalente certeza de uma loteria é o valor $W_{CE}$ tal que:"
    - (a) $u(W_{CE}) = E[W]$
    - (b) $u(W_{CE}) = E[u(W)]$
    - (c) $W_{CE} = E[W]$ sempre
    - (d) $W_{CE} = E[W] + \text{prêmio de risco}$

    ??? success "Resposta"
        **(b)** O equivalente certeza é o montante certo que dá a mesma utilidade esperada que a loteria: $u(W_{CE}) = E[u(W)]$. Para um avesso ao risco, $W_{CE} < E[W]$, e a diferença $E[W] - W_{CE}$ é o prêmio de risco. A alternativa (a) confunde utilidade do equivalente certeza com o valor esperado monetário; (c) só vale para neutralidade ao risco; (d) inverte a relação.

??? question "3. A medida de Arrow-Pratt de aversão absoluta ao risco é definida como:"
    - (a) $A(W) = -u'(W)/u''(W)$
    - (b) $A(W) = -u''(W)/u'(W)$
    - (c) $A(W) = u''(W)/u'(W)$
    - (d) $A(W) = -u'(W) \cdot u''(W)$

    ??? success "Resposta"
        **(b)** O coeficiente de Arrow-Pratt $A(W) = -u''(W)/u'(W)$ mede a curvatura relativa da função de utilidade. É positivo para avessos ao risco ($u'' < 0$). A alternativa (a) inverte a fração; (c) dá valor negativo para avessos ao risco; (d) não tem interpretação econômica padrão.

??? question "4. No mercado de seguros com informação simétrica, um agente avesso ao risco e uma seguradora neutra ao risco alcançam eficiência quando:"
    - (a) O prêmio do seguro é igual ao dobro da perda esperada
    - (b) O agente compra seguro parcial para manter incentivo a ter cuidado
    - (c) O agente compra seguro completo ao prêmio atuarialmente justo (igual à perda esperada)
    - (d) A seguradora cobra prêmio igual ao equivalente certeza do agente

    ??? success "Resposta"
        **(c)** Com informação simétrica, a alocação eficiente transfere todo o risco do avesso ao risco para o neutro (seguradora). O prêmio atuarialmente justo $\pi = p \cdot L$ (probabilidade vezes perda) é suficiente para a seguradora cobrir as perdas esperadas, e o agente, sendo avesso ao risco, prefere pagar esse prêmio a enfrentar a incerteza. As demais alternativas descrevem situações subótimas ou incorretas.

??? question "5. O axioma de independência na teoria da utilidade esperada afirma que:"
    - (a) As preferências por loterias dependem apenas dos payoffs, não das probabilidades
    - (b) Se $A \succ B$, então misturar $A$ e $B$ com uma terceira loteria $C$ preserva a preferência: $\alpha A + (1-\alpha)C \succ \alpha B + (1-\alpha)C$
    - (c) Loterias com o mesmo valor esperado são sempre indiferentes
    - (d) O agente é indiferente entre receber um prêmio agora ou no futuro

    ??? success "Resposta"
        **(b)** O axioma de independência estabelece que a preferência entre duas loterias não é afetada pela mistura com uma terceira loteria comum. É o axioma mais distintivo (e controverso) da teoria de VNM, violado sistematicamente no Paradoxo de Allais. A alternativa (a) é absurda; (c) descreve neutralidade ao risco; (d) refere-se a preferências intertemporais.

??? question "6. Na abordagem estado-preferência, se os preços dos ativos contingentes são atuarialmente justos ($\psi_s = \pi_s$) e o agente é avesso ao risco, a alocação ótima é:"
    - (a) Consumir tudo no estado mais provável e nada nos demais
    - (b) Igualar o consumo em todos os estados — suavização perfeita
    - (c) Comprar apenas o ativo contingente ao estado de maior retorno
    - (d) Distribuir a riqueza proporcionalmente às probabilidades, sem equalizar consumo

    ??? success "Resposta"
        **(b)** Quando $\psi_s = \pi_s$ (preços justos), a condição de primeira ordem $\pi_s u'(c_s) / \psi_s = \lambda$ implica $u'(c_s) = \lambda$ para todo $s$. Como $u$ é estritamente côncava ($u'' < 0$), $u'$ é estritamente decrescente, e a igualdade $u'(c_s) = \lambda$ exige $c_s = c_{s'}$ para todo par de estados. O agente equaliza o consumo, eliminando todo o risco — resultado análogo ao seguro total sob prêmio justo (Seção 7.6.1).

---

## 📋 Resumo do Capítulo

- Uma loteria é uma distribuição de probabilidade sobre resultados monetários; o valor esperado é a média ponderada dos payoffs, mas não captura a atitude do agente em relação ao risco.
- A Hipótese da Utilidade Esperada (Von Neumann-Morgenstern) axiomatiza a escolha sob incerteza: agentes racionais maximizam a esperança de uma função de utilidade, com os axiomas de completude, transitividade, continuidade e independência fundamentando o teorema.
- A aversão ao risco corresponde à concavidade da função de utilidade (desigualdade de Jensen): o agente prefere o valor esperado com certeza à própria loteria; neutralidade e propensão ao risco correspondem a linearidade e convexidade, respectivamente.
- As medidas de Arrow-Pratt quantificam a aversão ao risco: a medida absoluta (ARA) determina o comportamento frente a riscos de magnitude fixa, enquanto a medida relativa (RRA) se aplica a riscos proporcionais à riqueza; funções CARA, CRRA e DARA capturam diferentes padrões.
- O prêmio de risco e o equivalente de certeza conectam a teoria à prática: o prêmio de risco é o valor que o agente pagaria para eliminar a incerteza, e a aproximação de Arrow-Pratt o relaciona à variância da loteria e à curvatura da utilidade.
- Diversificação, seguros e mercados de ativos contingentes (abordagem estado-preferência) são mecanismos para reduzir ou redistribuir riscos; problemas de informação assimétrica (seleção adversa e risco moral) limitam a eficiência desses mercados.

## 🔑 Conceitos-Chave

<a id="tabela-7-2"></a>

| Conceito | Definição |
|----------|-----------|
| Loteria | Distribuição de probabilidade sobre um conjunto finito de resultados monetários. |
| Utilidade esperada (VNM) | Representação de preferências sob incerteza em que o agente maximiza a esperança matemática de uma função de utilidade. |
| Aversão ao risco | Preferência pelo valor esperado de uma loteria (com certeza) em relação à própria loteria; implica função de utilidade côncava. |
| Medida de Arrow-Pratt (ARA) | Coeficiente de aversão ao risco absoluta, definido como \(-u''(W)/u'(W)\); mede a curvatura local da utilidade. |
| Medida de Arrow-Pratt (RRA) | Coeficiente de aversão ao risco relativa, definido como \(-W \cdot u''(W)/u'(W)\); mede a aversão a riscos proporcionais à riqueza. |
| Equivalente de certeza | Valor certo que proporciona a mesma utilidade esperada de uma loteria; é menor que o valor esperado para agentes avessos ao risco. |
| Prêmio de risco | Diferença entre o valor esperado da loteria e o equivalente de certeza; mede quanto o agente pagaria para eliminar o risco. |
| Diversificação | Estratégia de alocação de riqueza entre ativos imperfeitamente correlacionados para reduzir o risco total do portfólio. |
| Seleção adversa | Problema de informação assimétrica pré-contratual em que a parte menos informada atrai desproporcionalmente agentes de alto risco. |
| Risco moral | Problema de informação assimétrica pós-contratual em que o agente segurado altera seu comportamento de forma não observável. |

<div class="caption-obj" markdown>
**Tabela 7.2 — Conceitos-chave.**
</div>

## ✏️ Exercícios

<a id="ex-7-1"></a>**Exercício 7.1.** Um investidor com função de utilidade \(u(W) = \ln(W)\) e riqueza inicial \(W_0 = 10.000\) pode participar de uma loteria que paga \(+5.000\) com probabilidade \(0{,}5\) e \(-5.000\) com probabilidade \(0{,}5\).

(a) Calcule a utilidade esperada da loteria.

(b) Calcule o equivalente de certeza.

(c) Calcule o prêmio de risco exato e compare com a aproximação de Arrow-Pratt.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-1)

---

<a id="ex-7-2"></a>**Exercício 7.2.** Mostre que a função de utilidade \(u(W) = -e^{-aW}\), com \(a > 0\), apresenta aversão absoluta ao risco constante (CARA). Calcule \(A(W)\) e \(R(W)\) e discuta as implicações econômicas de cada medida.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-2)

---

<a id="ex-7-3"></a>**Exercício 7.3.** Um agricultor no Cerrado brasileiro enfrenta a seguinte situação: com probabilidade \(0{,}7\) a safra é boa e ele obtém receita de R\$ 200.000; com probabilidade \(0{,}3\) há seca e a receita cai para R\$ 50.000. Sua função de utilidade é \(u(W) = \sqrt{W}\).

(a) Qual o valor esperado da receita?

(b) Qual o equivalente de certeza?

(c) Qual o prêmio máximo que ele pagaria por um seguro de cobertura total?

(d) Se uma seguradora oferece seguro a um prêmio de R\$ 60.000, o agricultor contrata? Justifique.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-3)

---

<a id="ex-7-4"></a>**Exercício 7.4.** Considere dois estados da natureza, \(s_1\) (expansão) e \(s_2\) (recessão), com probabilidades \(\pi_1 = 0{,}6\) e \(\pi_2 = 0{,}4\). Um agente com riqueza \(W = 100\) e utilidade \(u(c) = \ln(c)\) pode comprar ativos contingentes ao preço \(\psi_1 = 0{,}6\) e \(\psi_2 = 0{,}4\).

(a) Formule o problema de maximização.

(b) Encontre a alocação ótima \((c_1^*, c_2^*)\).

(c) Interprete o resultado à luz da suavização de consumo entre estados.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-4)

---

<a id="ex-7-5"></a>**Exercício 7.5.** Considere dois agentes, A com \(u_A(W) = \ln(W)\) e B com \(u_B(W) = -e^{-0{,}001W}\), ambos com riqueza \(W = 10.000\).

(a) Calcule \(A(W)\) e \(R(W)\) para cada agente.

(b) Compare o prêmio de risco (aproximado) que cada um exigiria para aceitar uma loteria com valor esperado zero e desvio padrão de R\$ 1.000.

(c) Como o prêmio de risco de cada agente se altera se a riqueza aumenta para \(W = 50.000\)? Discuta a relação com DARA e CARA.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-5)

---

<a id="ex-7-6"></a>**Exercício 7.6.** *(Fácil)* Um agente possui função de utilidade \(u(W) = \sqrt{W}\) e riqueza inicial \(W_0 = 100\). Ele é convidado a participar de uma loteria que paga \(+60\) com probabilidade \(0{,}5\) e \(-60\) com probabilidade \(0{,}5\).

(a) Calcule a utilidade esperada da loteria, \(E[u]\).

(b) Calcule a utilidade do valor esperado da riqueza, \(u(E[W])\).

(c) Com base na comparação entre \(E[u]\) e \(u(E[W])\), determine se o agente é avesso, neutro ou propenso ao risco. Justifique usando a desigualdade de Jensen.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-6)

---

<a id="ex-7-7"></a>**Exercício 7.7.** *(Fácil — Verdadeiro ou Falso)* Julgue as afirmativas abaixo como verdadeiras ou falsas, com justificativa.

(a) Um agente neutro ao risco possui função de utilidade linear.

(b) A utilidade CARA implica que o prêmio de risco é independente da riqueza.

(c) Se \(u''(W) < 0\), o agente sempre rejeita qualquer loteria justa.

(d) A diversificação elimina todo o risco de uma carteira de ativos.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-7)

---

<a id="ex-7-8"></a>**Exercício 7.8.** *(Médio)* Um agente tem função de utilidade \(u(W) = \ln(W)\) e riqueza inicial \(W_0 = 10.000\). Ele enfrenta o seguinte risco: com probabilidade \(0{,}1\) perde R\$ 5.000; com probabilidade \(0{,}9\) não perde nada.

(a) Calcule o equivalente de certeza e o prêmio de risco exato.

(b) Qual é o prêmio máximo que o agente pagaria por um seguro de cobertura total?

(c) Uma seguradora oferece cobertura total por R\$ 600. O agente contrata? Justifique calculando a utilidade com e sem seguro.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-8)

---

<a id="ex-7-9"></a>**Exercício 7.9.** *(Médio — Contexto Brasileiro)* Um cafeicultor de Minas Gerais possui utilidade CRRA com coeficiente de aversão relativa ao risco \(\gamma = 2\), ou seja, \(u(W) = -W^{-1}\), e riqueza inicial \(W_0 = \text{R\$ }200.000\). Ele enfrenta o seguinte risco climático: com probabilidade \(0{,}3\), uma seca severa reduz sua produção em 40%, de modo que sua riqueza cai para R\$ 120.000; com probabilidade \(0{,}7\), não há seca e ele mantém R\$ 200.000.

O Proagro oferece um seguro que cobre integralmente a perda de R\$ 80.000 em caso de seca, com prêmio de R\$ 30.000 (que inclui o prêmio atuarialmente justo de R\$ 24.000 mais um carregamento de 25%).

(a) Calcule o prêmio de risco exato do agricultor (o máximo que ele pagaria pelo seguro).

(b) Compare o prêmio de risco com o prêmio cobrado pelo Proagro. O agricultor contrata o seguro? Justifique calculando a utilidade esperada com e sem seguro.

(c) Qual seria o carregamento máximo \(\lambda^*\) que tornaria o agricultor indiferente entre contratar e não contratar o seguro?

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-9)

---

<a id="ex-7-10"></a>**Exercício 7.10.** *(Difícil — Demonstração)* Prove que, para um agente avesso ao risco (\(u'' < 0\)), o prêmio de risco \(\pi\) associado a um risco justo \(\tilde{\varepsilon}\) com variância \(\sigma^2\) satisfaz, aproximadamente:

\[
\pi \approx \frac{1}{2}\sigma^2 \cdot A(W_0)
\]

onde \(A(W_0) = -u''(W_0)/u'(W_0)\) é o coeficiente de Arrow-Pratt de aversão absoluta ao risco avaliado na riqueza inicial \(W_0\).

*Instruções:* Use expansões em série de Taylor de segunda ordem para \(E[u(W_0 + \tilde{\varepsilon})]\) e de primeira ordem para \(u(W_0 - \pi)\). Identifique a aproximação e interprete cada termo do resultado.

[:material-arrow-right: Ver solução](../solucoes/cap07.md#ex-7-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2018 — Questão 06"
    A função utilidade \(U\) em termos da renda \(w\) de um consumidor é dada por \(U(w) = w^3\). Tal consumidor se encontra diante de uma loteria na qual possui \(w = \$0\) com probabilidade \(p = 0{,}5\) e \(w = \$4\) com probabilidade \(p = 0{,}5\). Avalie as seguintes proposições a respeito da escolha sob incerteza:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Como a função utilidade é convexa em relação à origem, o consumidor é avesso ao risco. |
    | 1    | A utilidade esperada da loteria é igual a trinta e dois. |
    | 2    | A utilidade do valor esperado dessa loteria é superior à utilidade esperada da loteria. |
    | 3    | O equivalente certeza é igual a 2,5. |
    | 4    | O coeficiente absoluto de aversão ao risco é constante. |

    ??? success "Gabarito"
        **Respostas: 01000**

        **Justificativa por item:**

        - **Item 0 — F:** Função utilidade convexa (\(u''(w) = 6w > 0\)) implica **propensão** ao risco, não aversão. A aversão ao risco requer concavidade (\(u'' < 0\)).

        - **Item 1 — V:** \(E[U] = 0{,}5 \times U(0) + 0{,}5 \times U(4) = 0{,}5 \times 0 + 0{,}5 \times 64 = 32\). Correto.

        - **Item 2 — F:** O valor esperado da loteria é \(E[w] = 0{,}5 \times 0 + 0{,}5 \times 4 = 2\). A utilidade do valor esperado é \(U(2) = 2^3 = 8\). Como \(U(E[w]) = 8 < 32 = E[U]\), a utilidade do valor esperado é *inferior* à utilidade esperada. Isso é precisamente a propriedade de um agente propenso ao risco (desigualdade de Jensen invertida para funções convexas).

        - **Item 3 — F:** O equivalente de certeza satisfaz \(U(EC) = E[U]\), ou seja, \(EC^3 = 32\). Portanto, \(EC = \sqrt[3]{32} = 2\sqrt[3]{4} \approx 3{,}17\), não 2,5.

        - **Item 4 — F:** \(A(w) = -u''(w)/u'(w) = -6w/(3w^2) = -2/w\). O coeficiente é negativo (confirmando propensão ao risco) e depende de \(w\) — portanto, não é constante.

??? question "ANPEC 2020 — Questão 11"
    Com relação à teoria de decisão sob incerteza, julgue os itens abaixo:

    | Item | Afirmação |
    |------|-----------|
    | 0    | Suponha que um indivíduo tem utilidade Von Neumann-Morgenstern \(U(W) = \ln(W+1)\). Então sua medida relativa de aversão ao risco de Pratt \(R(W)\) satisfaz \(\lim_{W \to \infty} R(W) = 1\). |
    | 1    | Considere um indivíduo avesso ao risco, com utilidade Von Neumann-Morgenstern e que investe em um ativo arriscado. Se o rendimento do ativo arriscado é taxado, então o consumidor tem um incentivo para investir menos nesse ativo. |
    | 2    | Suponha que o \(\beta\) de um ativo é igual a 1,25, que o retorno de mercado é de 10,5% e que o retorno do ativo sem risco é de 4,5%. O valor esperado do ativo é de \$56. Então, de acordo com o Modelo CAPM, o preço que esse ativo deveria ser vendido hoje é de \$50. |
    | 3    | Considere o Modelo Média-Variância e um indivíduo avesso ao risco. Suponha que o retorno de mercado é de 11%, que o retorno do ativo sem risco é de 5% e que a variância do ativo arriscado é de 25%. Então o preço do risco é \(p = 0{,}24\). |
    | 4    | Suponha que um indivíduo tem utilidade Von Neumann-Morgenstern e é neutro ao risco. Se sua riqueza é aleatória, então a utilidade esperada da riqueza é maior que a utilidade da riqueza esperada. |

    ??? success "Gabarito"
        **Respostas: 10110**

        **Justificativa por item:**

        - **Item 0 — V:** Para \(U(W) = \ln(W+1)\): \(U'(W) = 1/(W+1)\), \(U''(W) = -1/(W+1)^2\). A medida relativa de aversão ao risco é \(R(W) = -W \cdot U''(W)/U'(W) = W/(W+1)\). Calculando o limite: \(\lim_{W \to \infty} W/(W+1) = 1\). Correto.

        - **Item 1 — F:** Pelo resultado clássico de Domar-Musgrave, um imposto proporcional sobre o retorno do ativo arriscado (com compensação simétrica de perdas) faz o governo "compartilhar" o risco com o investidor. O investidor pode restaurar sua exposição original ao risco aumentando a posição no ativo arriscado. O efeito líquido depende das propriedades da função de utilidade (DARA/IARA), mas a afirmação de que *sempre* há incentivo para investir menos é incorreta.

        - **Item 2 — V:** Pelo CAPM, o retorno esperado do ativo é \(E[r] = r_f + \beta(E[r_m] - r_f) = 4{,}5\% + 1{,}25 \times (10{,}5\% - 4{,}5\%) = 4{,}5\% + 7{,}5\% = 12\%\). Se o valor esperado do ativo é \$56, o preço hoje deve ser \(P_0 = 56/1{,}12 = \$50\). Correto.

        - **Item 3 — V:** No modelo média-variância, o preço do risco é definido como \(p = (E[r_m] - r_f)/\sigma^2 = (11\% - 5\%)/25\% = 0{,}06/0{,}25 = 0{,}24\). Correto.

        - **Item 4 — F:** Um indivíduo neutro ao risco possui função de utilidade linear. Pela linearidade, \(E[U(W)] = U(E[W])\) — a utilidade esperada é *igual* à utilidade da riqueza esperada, não maior.

??? question "ANPEC 2025 — Questão 02"
    Considere uma aposta na qual, pagando \$15, você pode ganhar \$5 se sair um número ímpar ou \$20 se sair um número par, no lançamento de um dado não viciado. Julgue as afirmativas abaixo como verdadeiras ou falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0    | O valor esperado do retorno da aposta é \$15. |
    | 1    | Trata-se de uma aposta justa. |
    | 2    | Uma aposta justa não possui risco. |
    | 3    | Se o custo da aposta fosse de \$12,50, um indivíduo com aversão ao risco aceitaria jogar. |
    | 4    | Uma função de utilidade estritamente côncava é associada a um comportamento de aversão ao risco. |

    ??? success "Gabarito"
        **Respostas: 00001**

        **Justificativa por item:**

        - **Item 0 — F:** Os resultados da aposta são \$5 (se ímpar, \(p = 1/2\)) e \$20 (se par, \(p = 1/2\)). O valor esperado do retorno bruto é \(E[R] = 0{,}5 \times 5 + 0{,}5 \times 20 = 12{,}50\), não \$15.

        - **Item 1 — F:** Uma aposta justa tem retorno esperado líquido igual a zero. Aqui, o retorno líquido esperado é \(12{,}50 - 15 = -2{,}50\). Como \(E[\text{líquido}] < 0\), a aposta é desfavorável ao apostador.

        - **Item 2 — F:** Uma aposta justa tem valor esperado zero, mas ainda apresenta variância positiva — logo, possui risco. "Justo" refere-se ao valor esperado, não à ausência de incerteza.

        - **Item 3 — F:** Se o custo fosse \$12,50, teríamos \(E[\text{líquido}] = 12{,}50 - 12{,}50 = 0\): aposta justa. Um indivíduo avesso ao risco **rejeita** apostas justas (ou, no máximo, é indiferente), pois \(u(E[W]) > E[u(W)]\).

        - **Item 4 — V:** Concavidade estrita de \(u\) (\(u'' < 0\)) implica, pela desigualdade de Jensen, que \(u(E[X]) > E[u(X)]\) para toda variável aleatória não degenerada — definição de aversão ao risco.
