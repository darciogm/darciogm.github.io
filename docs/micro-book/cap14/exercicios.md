# Exercícios e ANPEC — Capítulo 14

## Revisão do Capítulo

??? question "Questões de Revisão"

    1. Explique por que a análise de equilíbrio parcial pode ser insuficiente para avaliar o impacto de um choque no preço do petróleo. Quais canais de transmissão são ignorados pelo *ceteris paribus*?

    2. O que a Caixa de Edgeworth nos mostra que um diagrama de oferta e demanda não consegue mostrar? Qual é a vantagem conceitual de representar dois agentes em um único diagrama?

    3. Enuncie as três condições de eficiência de Pareto (troca, produção e mix de produtos) e explique intuitivamente por que cada uma é necessária.

    4. "O Primeiro Teorema do Bem-Estar prova que o capitalismo é o melhor sistema econômico." Critique essa afirmação, identificando pelo menos três falácias.

    5. Por que os modelos CGE são calibrados em vez de estimados econometricamente? Quais são as vantagens e desvantagens dessa abordagem?

---

## Resumo dos Conceitos-Chave

| Conceito | Definição | Referência |
|:---------|:----------|:-----------|
| Equilíbrio geral competitivo | Vetor de preços que equilibra simultaneamente todos os mercados | [Seção 14.1](sistema-precos.md#141) |
| Caixa de Edgeworth | Representação gráfica de todas as alocações factíveis com 2 agentes e 2 bens | [Seção 14.2](sistema-precos.md#142) |
| Curva de contrato | Conjunto de alocações Pareto-eficientes (tangência das curvas de indiferença) | [Seção 14.3](eficiencia-pareto.md#143) |
| Núcleo da economia | Alocações que nenhuma coalizão pode bloquear | [Seção 14.3](eficiencia-pareto.md#143) |
| FPP | Combinações máximas de bens que uma economia pode produzir | [Seção 14.4](eficiencia-pareto.md#144) |
| Primeiro Teorema do Bem-Estar | Todo equilíbrio competitivo é Pareto-eficiente | [Seção 14.6](teoremas-bem-estar.md#146) |
| Segundo Teorema do Bem-Estar | Toda alocação Pareto-eficiente pode ser descentralizada via transferências lump-sum | [Seção 14.7](teoremas-bem-estar.md#147) |
| Lei de Walras | Valor total dos excessos de demanda é identicamente zero | [Seção 14.8](modelo-matematico.md#148) |
| Modelo CGE | Implementação numérica do equilíbrio geral calibrada com dados reais | [Seção 14.11](cge.md#1411) |

---

## Exercícios

!!! exercicio-proposto "Exercício 14.1 — Curva de contrato e equilíbrio walrasiano" {#ex-14-1}

    Considere uma economia de troca pura com dois consumidores (A e B) e dois bens (\(x_1, x_2\)). Ambos têm preferências Cobb-Douglas simétricas: \(U_A = x_1^A x_2^A\) e \(U_B = x_1^B x_2^B\). As dotações são \(\boldsymbol{\omega}_A = (10, 2)\) e \(\boldsymbol{\omega}_B = (2, 8)\). Dotações totais: \(\bar{x}_1 = 12\), \(\bar{x}_2 = 10\).

    **(a)** Derive a curva de contrato (conjunto de alocações Pareto-eficientes).

    **(b)** Normalize \(p_2 = 1\). Encontre o preço de equilíbrio walrasiano \(p_1^*\) e as alocações de equilíbrio.

    **(c)** Verifique a Lei de Walras para esta economia.

    **(d)** Verifique que o equilíbrio está no núcleo da economia (cada consumidor prefere o equilíbrio à sua dotação inicial).

    [Ver solução](../solucoes/cap14.md#ex-14-1)

!!! exercicio-proposto "Exercício 14.2 — Condições de eficiência de Pareto" {#ex-14-2}

    Demonstre as seguintes afirmações:

    **(a)** **Eficiência na troca:** Se \(TMS_A^{12} \neq TMS_B^{12}\), a alocação não é Pareto-eficiente (mostre que existe uma troca mutuamente benéfica).

    **(b)** **Eficiência na produção:** Se \(TMST_1^{LK} \neq TMST_2^{LK}\), a alocação de insumos não é eficiente (mostre que é possível produzir mais de um bem sem produzir menos do outro).

    **(c)** **Eficiência no mix:** Se \(TMT_{12} \neq TMS^{12}\), a composição do produto não é eficiente (mostre que é possível melhorar o bem-estar dos consumidores alterando o que é produzido).

    [Ver solução](../solucoes/cap14.md#ex-14-2)

!!! exercicio-proposto "Exercício 14.3 — Excesso de demanda e Lei de Walras com 3 bens" {#ex-14-3}

    Considere uma economia com 3 bens cujas funções de excesso de demanda são:

    \[
    Z^1(\mathbf{p}) = \frac{3p_2}{p_1} + \frac{2p_3}{p_1} - 5, \qquad Z^2(\mathbf{p}) = -p_2 + p_3 + 1
    \]

    **(a)** Verifique que \(Z^1\) e \(Z^2\) são homogêneas de grau zero.

    **(b)** Usando a Lei de Walras, derive \(Z^3(\mathbf{p})\).

    **(c)** Normalize \(p_1 = 1\) e encontre o equilíbrio walrasiano \(\mathbf{p}^*\).

    [Ver solução](../solucoes/cap14.md#ex-14-3)

!!! exercicio-proposto "Exercício 14.4 — Primeiro Teorema: da otimização individual à eficiência" {#ex-14-4}

    Mostre que, em uma economia com 2 bens, 2 consumidores e 2 firmas, a concorrência perfeita implica as três condições de eficiência de Pareto:

    **(a)** Eficiência na troca: \(TMS_A = TMS_B\).

    **(b)** Eficiência na produção: \(TMST_1 = TMST_2\).

    **(c)** Eficiência no mix de produtos: \(TMT = TMS\).

    *Dica:* use as condições de otimização de consumidores e firmas diante de preços competitivos.

    [Ver solução](../solucoes/cap14.md#ex-14-4)

## Exercícios — Material Avançado (Seções 14.11–14.12)

*Estes exercícios cobrem as seções complementares. Podem ser omitidos em cursos que não incluem CGE e Escolha Social.*

!!! exercicio-proposto "Exercício 14.5 — CGE e o acordo Mercosul-UE" {#ex-14-5}

    O acordo comercial Mercosul-UE prevê redução de tarifas sobre bens industrializados europeus exportados ao Brasil, em troca de maior acesso europeu a commodities agrícolas brasileiras.

    **(a)** Explique por que uma análise de equilíbrio parcial (oferta e demanda de um setor) é insuficiente para avaliar esse acordo.

    **(b)** Identifique três mercados que seriam afetados indiretamente (efeitos de equilíbrio geral) pela redução tarifária.

    **(c)** Descreva os dados e parâmetros que um modelo CGE precisaria para simular o acordo.

    **(d)** Quais hipóteses do modelo walrasiano padrão podem ser especialmente problemáticas no contexto da economia brasileira?

    [Ver solução](../solucoes/cap14.md#ex-14-5)

!!! exercicio-proposto "Exercício 14.6 — Leontief e Cobb-Douglas na Caixa de Edgeworth" {#ex-14-6}

    Considere uma economia com 2 consumidores e 2 bens (\(x, y\)). As preferências são: \(U_A = \min(x_A, 2y_A)\) (Leontief) e \(U_B = x_B^{1/3} y_B^{2/3}\) (Cobb-Douglas). Dotações: \(\boldsymbol{\omega}_A = (8, 2)\), \(\boldsymbol{\omega}_B = (2, 6)\). Totais: \(\bar{x} = 10\), \(\bar{y} = 8\).

    **(a)** Desenhe a Caixa de Edgeworth e identifique o ponto de dotação. Represente as curvas de indiferença de A e B que passam pela dotação.

    **(b)** Derive a curva de contrato.

    **(c)** Normalize \(p_y = 1\) e encontre o preço de equilíbrio walrasiano \(p_x^*\).

    **(d)** Verifique que o equilíbrio está sobre a curva de contrato.

    [Ver solução](../solucoes/cap14.md#ex-14-6)

!!! exercicio-proposto "Exercício 14.7 — Preferências lineares e multiplicidade de equilíbrios" {#ex-14-7}

    Considere uma economia com 2 consumidores e 2 bens. Preferências: \(U_A = x_A + y_A\) (lineares) e \(U_B = x_B y_B\) (Cobb-Douglas simétrica). Dotações: \(\boldsymbol{\omega}_A = (4, 4)\), \(\boldsymbol{\omega}_B = (4, 4)\).

    **(a)** Derive o conjunto de alocações Pareto-eficientes. Por que é diferente do caso Cobb-Douglas simétrico?

    **(b)** Explique intuitivamente por que as preferências lineares de A expandem o conjunto eficiente.

    **(c)** Encontre todos os equilíbrios walrasianos. Há unicidade?

    [Ver solução](../solucoes/cap14.md#ex-14-7)

!!! exercicio-proposto "Exercício 14.8 — FPP e curva de contrato de produção" {#ex-14-8}

    Dois setores produzem bens 1 e 2 com trabalho (\(L\)) e capital (\(K\)). Dotações totais: \(\bar{L} = \bar{K} = 100\). Funções de produção: \(q_1 = L_1^{1/2}K_1^{1/2}\) e \(q_2 = L_2^{1/3}K_2^{2/3}\).

    **(a)** Derive a curva de contrato de produção (condição de eficiência na produção) e expresse \(K_1\) como função de \(L_1\).

    **(b)** Calcule a produção eficiente para \(L_1 = 60\).

    **(c)** A FPP resultante é linear, côncava ou convexa? Justifique economicamente.

    [Ver solução](../solucoes/cap14.md#ex-14-8)

!!! exercicio-proposto "Exercício 14.9 — Segundo Teorema e transferências" {#ex-14-9}

    **(a)** Enuncie o Segundo Teorema do Bem-Estar e liste suas hipóteses.

    **(b)** Explique por que transferências lump-sum são essenciais para o Segundo Teorema — e por que impostos sobre bens não servem.

    **(c)** Na economia do Exercício 14.1, suponha que o planejador social deseja a alocação \(\hat{\mathbf{x}}_A = (3, 3)\) e \(\hat{\mathbf{x}}_B = (9, 7)\). Verifique que é Pareto-eficiente e determine a transferência lump-sum necessária para descentralizá-la como equilíbrio competitivo.

    [Ver solução](../solucoes/cap14.md#ex-14-9)

!!! exercicio-proposto "Exercício 14.10 — Equilíbrio geral e comércio internacional" {#ex-14-10}

    Dois países (H e F) produzem tecido (T) e vinho (V) com trabalho. Cada país tem 120 unidades de trabalho. Requerimentos unitários de trabalho:

    | | Tecido (T) | Vinho (V) |
    |:--|:--:|:--:|
    | País H | 2 | 6 |
    | País F | 4 | 3 |

    Preferências em ambos os países: \(U = T \cdot V\) (Cobb-Douglas simétrica).

    **(a)** Determine a vantagem comparativa de cada país e desenhe as FPPs.

    **(b)** Calcule o equilíbrio autárquico de cada país (produção, consumo, preços relativos, utilidade).

    **(c)** Com especialização completa, encontre o preço relativo de equilíbrio do comércio livre e verifique que ambos os países ganham.

    **(d)** Interprete os resultados à luz do Primeiro Teorema do Bem-Estar e da Caixa de Edgeworth: por que o livre comércio melhora a eficiência?

    [Ver solução](../solucoes/cap14.md#ex-14-10)

---

## Questões ANPEC

??? question "ANPEC 2019 — Questão 10"

    Considere uma economia de troca com dois agentes (1 e 2) e dois bens (\(x\) e \(y\)). As funções de utilidade são \(U_1 = xy\) e \(U_2 = x^2 y\). As dotações iniciais são \(\omega_1 = (4, 6)\) e \(\omega_2 = (8, 6)\).

    Julgue as afirmativas:

    **(0)** A curva de contrato é linear na Caixa de Edgeworth.

    **(1)** No equilíbrio competitivo, o preço relativo é \(p_x/p_y = 1\).

    **(2)** O equilíbrio competitivo é Pareto-eficiente.

    **(3)** Se as dotações fossem \(\omega_1 = (6, 6)\) e \(\omega_2 = (6, 6)\), o preço de equilíbrio não mudaria.

    **(4)** A Lei de Walras implica que, se o mercado de \(x\) está em equilíbrio, o mercado de \(y\) também está.

    ??? note "Gabarito"
        **(0) Falso.** Com \(U_1 = xy\) (Cobb-Douglas simétrica) e \(U_2 = x^2y\), as TMS são \(y_1/x_1\) e \(y_2/(2x_2)\). Igualando: \(y_1/x_1 = y_2/(2x_2)\), que não é linear.

        **(1) Falso.** Calculando as demandas e resolvendo, obtém-se \(p_x/p_y \neq 1\) em geral.

        **(2) Verdadeiro.** Pelo Primeiro Teorema do Bem-Estar.

        **(3) Falso.** As dotações afetam as rendas individuais e, com preferências assimétricas, alteram as demandas e o equilíbrio.

        **(4) Verdadeiro.** Consequência direta da Lei de Walras com 2 bens.

??? question "ANPEC 2018 — Questão 13"

    Julgue as afirmativas sobre a teoria do equilíbrio geral:

    **(0)** O Primeiro Teorema do Bem-Estar requer que as preferências sejam convexas.

    **(1)** O Segundo Teorema do Bem-Estar requer convexidade das preferências.

    **(2)** A Lei de Walras vale apenas no equilíbrio.

    **(3)** A existência do equilíbrio walrasiano pode ser provada usando o Teorema do Ponto Fixo de Brouwer.

    **(4)** O Teorema de Sonnenschein-Mantel-Debreu implica que funções de excesso de demanda agregadas podem ter qualquer formato (sujeitas a continuidade, homogeneidade e Lei de Walras), impossibilitando garantias gerais de unicidade.

    ??? note "Gabarito"
        **(0) Falso.** O Primeiro Teorema requer apenas não saciedade local — não precisa de convexidade.

        **(1) Verdadeiro.** O Segundo Teorema precisa de convexidade (para garantir a existência de hiperplano separador / preços de suporte).

        **(2) Falso.** A Lei de Walras é uma identidade — vale para *todo* vetor de preços, não apenas no equilíbrio.

        **(3) Verdadeiro.** É exatamente a estratégia de prova de Arrow-Debreu (1954).

        **(4) Verdadeiro.** É a implicação central do Teorema SMD.

??? question "ANPEC 2015 — Questão 11"

    Considere uma economia de troca com dois bens e dois agentes com preferências Cobb-Douglas: \(U_A = x_1^a x_2^{1-a}\) e \(U_B = x_1^b x_2^{1-b}\). Dotações: \(\boldsymbol{\omega}_A = (\omega_1^A, \omega_2^A)\) e \(\boldsymbol{\omega}_B = (\omega_1^B, \omega_2^B)\).

    Julgue:

    **(0)** No equilíbrio walrasiano, \(TMS_A = TMS_B = p_1/p_2\).

    **(1)** Se \(a = b\), a curva de contrato é uma reta.

    **(2)** Se \(a = b = 1/2\) e as dotações totais são iguais (\(\bar{x}_1 = \bar{x}_2\)), o preço relativo de equilíbrio é \(p_1/p_2 = 1\).

    **(3)** A alocação de equilíbrio é independente da distribuição das dotações (depende apenas dos totais).

    **(4)** O conjunto de alocações Pareto-eficientes forma uma curva (não um ponto) na Caixa de Edgeworth.

    ??? note "Gabarito"
        **(0) Verdadeiro.** Condição de equilíbrio competitivo — cada agente iguala sua TMS à razão de preços.

        **(1) Verdadeiro.** Se \(a = b\), \(TMS_A = TMS_B\) implica \(x_2^A/x_1^A = x_2^B/x_1^B\), que gera uma reta pela origem da caixa (a diagonal, no caso simétrico).

        **(2) Verdadeiro.** Com preferências idênticas e simétricas (\(a = 1/2\)) e totais iguais, a simetria do problema implica \(p_1/p_2 = 1\).

        **(3) Falso.** A distribuição das dotações afeta as rendas individuais e, portanto, as demandas e a alocação de equilíbrio. Apenas os preços relativos poderiam ser insensíveis à distribuição em casos muito especiais (preferências homotéticas idênticas).

        **(4) Verdadeiro.** A curva de contrato é, genericamente, uma curva (unidimensional) na caixa bidimensional.
