# Exercícios e ANPEC — Capítulo 20

!!! tip "Dados para exercicios empiricos"
    - **SEEG (emissoes de GEE):** [seeg.eco.br](https://seeg.eco.br/) — Sistema de Estimativas de Emissoes de Gases de Efeito Estufa do Observatorio do Clima. Dados por setor e estado para estimar custos sociais de externalidades.
    - **INPE (desmatamento):** [terrabrasilis.dpi.inpe.br](http://terrabrasilis.dpi.inpe.br/) — Dados PRODES e DETER para analisar a tragedia dos comuns na Amazonia.
    - **ANA (recursos hidricos):** [snirh.gov.br](https://www.snirh.gov.br/) — Dados sobre outorgas e cobranca pelo uso da agua — precificacao de externalidade em acao.
    - **Notebook:** [N17 — Modelo DICE simplificado](../notebooks/index.md) (trajetorias otimas de emissao).

## 🧠 Revisão Rápida

??? question "1. O que distingue uma externalidade tecnológica de uma externalidade pecuniária?"
    Uma externalidade **tecnológica** (real) afeta diretamente a função de produção ou utilidade de outro agente, sem passar pelo sistema de preços (ex.: poluição). Uma externalidade **pecuniária** opera *via preços* (ex.: uma firma grande que reduz o preço de mercado e prejudica concorrentes). Apenas externalidades tecnológicas geram ineficiência alocativa e constituem falhas de mercado.

??? question "2. Por que o imposto pigouviano restaura a eficiência?"
    O imposto pigouviano \(t^* = E'(q^{soc})\) faz a firma pagar exatamente o custo marginal externo que impõe à sociedade. Ao incluir esse custo no cálculo de maximização de lucro, a firma "internaliza" a externalidade e escolhe o nível de produção socialmente ótimo (onde CMg social = preço).

??? question "3. Qual é a diferença fundamental entre a condição de eficiência para bens privados e bens públicos?"
    Para bens privados: \(TMS_i = TMT\) para cada indivíduo (igualdade individual). Para bens públicos: \(\sum_i TMS_i = TMT\) (soma das TMS). A diferença reflete a não-rivalidade: todos consomem a mesma quantidade do bem público, então o benefício social é a *soma* dos benefícios individuais.

??? question "4. Por que o Teorema de Coase tem aplicação prática limitada?"
    Porque requer: (i) custos de transação nulos, (ii) direitos de propriedade bem definidos, (iii) poucas partes envolvidas e (iv) informação simétrica. Na prática, externalidades difusas (como poluição do ar) envolvem milhões de partes, custos de negociação proibitivos e assimetria de informação — tornando a solução coaseana inviável.

??? question "5. O que garante que o mecanismo VCG induz revelação verdadeira?"
    No VCG, cada agente paga um imposto igual ao custo externo que sua presença impõe sobre os demais. Se subreporta sua valoração, pode impedir a provisão de um bem que lhe seria benéfico. Se sobrereporta, pode tornar-se pivotal quando não deveria, pagando mais do que vale. Em ambos os casos, desviar da verdade não é lucrativo — a verdade é estratégia dominante.

---

## 📋 Resumo do Capítulo

1. **Externalidades** surgem quando as ações de um agente afetam diretamente o bem-estar de outros fora do sistema de preços, gerando divergência entre custos/benefícios privados e sociais.
2. Externalidades negativas levam a **sobreprodução**; positivas, a **subprodução** em relação ao ótimo social.
3. As principais soluções são: **imposto/subsídio pigouviano** (internaliza o custo externo via preço), **Teorema de Coase** (negociação privada sob custos de transação nulos), **regulação direta** (limites quantitativos) e **cap-and-trade** (mercado de permissões).
4. **Bens públicos** (não-rivais e não-excludentes) são subprovidos pelo mercado devido ao **problema do carona**. A condição de Samuelson (\(\sum TMS = TMT\)) difere fundamentalmente da eficiência para bens privados.
5. **Preços de Lindahl** resolvem o problema em teoria, mas requerem informação que os agentes têm incentivo para não revelar. O **mecanismo VCG** torna a revelação verdadeira uma estratégia dominante.
6. O **Teorema da Impossibilidade de Arrow** mostra que nenhum sistema de votação satisfaz simultaneamente todos os critérios desejáveis de agregação de preferências.

---

## 🔑 Conceitos-Chave

**Tabela 20.3 — Conceitos-chave do Capítulo 20**

| Conceito | Definição Resumida |
|---|---|
| **Externalidade** | Efeito da ação de um agente sobre outro, fora do sistema de preços |
| **Imposto pigouviano** | Imposto unitário = custo marginal externo no ótimo social |
| **Teorema de Coase** | Barganha privada alcança eficiência se custos de transação = 0 e direitos de propriedade definidos |
| **Cap-and-trade** | Teto de emissões + permissões negociáveis → custo-efetividade |
| **Bem público** | Bem não-rival e não-excludente |
| **Condição de Samuelson** | \(\sum TMS_i = TMT\) para provisão eficiente de bem público |
| **Preço de Lindahl** | Preço personalizado = TMS individual; soma = CMg |
| **Problema do carona** | Incentivo a subinvestir na provisão de bens públicos |
| **Teorema de Arrow** | Impossibilidade de regra de agregação perfeita com ≥3 alternativas |
| **Mecanismo VCG** | Imposto pivotal torna revelação verdadeira estratégia dominante |

---

## ✏️ Exercícios

**Exercício 20.1.** {#ex-20-1} Uma fábrica de celulose produz \(q\) toneladas com custo total \(C(q) = 10q + q^2\) e vende ao preço \(P = 110\). A produção gera poluição com custo externo \(E(q) = 2q^2\).

(a) Determine a quantidade produzida pela firma na ausência de regulação.
(b) Determine a quantidade socialmente ótima.
(c) Calcule o imposto pigouviano ótimo \(t^*\) e verifique que ele induz a firma a produzir a quantidade eficiente.
(d) Calcule a perda de peso morto associada à ausência de regulação.

[🔑 Solução](../solucoes/cap20.md#ex-20-1)

---

**Exercício 20.2.** {#ex-20-2} Considere três indivíduos (\(A\), \(B\), \(C\)) com as seguintes valorações marginais por um bem público \(G\) (medido em unidades):

| \(G\) | \(BMg_A\) | \(BMg_B\) | \(BMg_C\) | \(CMg\) |
|-------|-----------|-----------|-----------|---------|
| 1     | 40        | 30        | 20        | 60      |
| 2     | 35        | 25        | 15        | 60      |
| 3     | 25        | 20        | 10        | 60      |
| 4     | 15        | 10        | 5         | 60      |
| 5     | 5         | 5         | 2         | 60      |

(a) Determine o nível eficiente de provisão do bem público.
(b) Calcule os preços de Lindahl para cada indivíduo no nível eficiente.
(c) Explique por que a provisão voluntária (contribuição individual) resultaria em \(G < G^*\).
(d) Verifique se os preços de Lindahl são equilibrados orçamentariamente.

[🔑 Solução](../solucoes/cap20.md#ex-20-2)

---

**Exercício 20.3.** {#ex-20-3} Duas firmas emitem poluentes. A firma 1 tem custo de abatimento \(CA_1(a_1) = 2a_1^2\) e a firma 2, \(CA_2(a_2) = a_2^2\), onde \(a_i\) é o abatimento em toneladas. Cada firma emite 100 toneladas sem regulação. O regulador deseja reduzir as emissões totais em 60 toneladas.

(a) Qual é a alocação custo-efetiva de abatimento entre as duas firmas?
(b) Qual seria o custo total se o regulador impusesse abatimento uniforme (30 toneladas cada)?
(c) Compare com o custo da solução custo-efetiva e calcule a economia.
(d) Se for utilizado um mercado de permissões (cap-and-trade), qual será o preço de equilíbrio da permissão?

[🔑 Solução](../solucoes/cap20.md#ex-20-3)

---

**Exercício 20.4.** {#ex-20-4} Uma comunidade com 100 moradores deve decidir se constrói um parque público (bem público discreto) ao custo de R$50.000. Cada morador \(i\) tem valoração \(v_i\) pela praça, distribuída uniformemente entre R$200 e R$800.

(a) O parque deve ser construído? (Compare a soma das valorações esperadas com o custo.)
(b) Se a construção for financiada por contribuição voluntária uniforme de R$500 por morador, quantos moradores estariam dispostos a contribuir?
(c) Explique o problema do carona nesta situação.
(d) Descreva como um mecanismo de imposto pivotal (Clarke) funcionaria neste contexto.

[🔑 Solução](../solucoes/cap20.md#ex-20-4)

---

**Exercício 20.5.** {#ex-20-5} Considere uma economia com dois bens — um privado (\(x\)) e um público (\(G\)) — e dois consumidores com utilidades:

\[
U_1 = \ln(x_1) + 2\ln(G), \quad U_2 = \ln(x_2) + \ln(G)
\]

O preço do bem privado é 1 e o custo marginal do bem público é \(c\). Cada consumidor tem renda \(W\).

(a) Derive a condição de Samuelson para a provisão eficiente de \(G\).
(b) Determine o nível eficiente \(G^*\) em função de \(W\) e \(c\).
(c) Se cada consumidor contribui voluntariamente (equilíbrio de Nash em contribuições), determine o nível de \(G\) de equilíbrio.
(d) Mostre que \(G^{Nash} < G^*\) e interprete economicamente.

[🔑 Solução](../solucoes/cap20.md#ex-20-5)

---

**Exercício 20.6.** {#ex-20-6} Uma indústria siderúrgica produz \(q\) toneladas de aço com custo total \(C(q) = 20q + 0{,}5q^2\), vende ao preço \(P = 80\). Custo externo: \(E(q) = q^2\).

(a) Encontre a quantidade sem regulação e a socialmente ótima.
(b) Calcule o imposto pigouviano ótimo e verifique.
(c) Calcule a receita fiscal e o peso morto eliminado pelo imposto.
(d) Se o regulador fixar incorretamente \(t = 30\), qual será a quantidade e o peso morto residual?

[🔑 Solução](../solucoes/cap20.md#ex-20-6)

---

**Exercício 20.7.** {#ex-20-7} Um fazendeiro cria \(n\) cabeças de gado com lucro \(\pi_F(n) = 120n - 3n^2\). O gado causa dano à lavoura vizinha de \(D(n) = 2n^2\).

(a) Encontre o equilíbrio sem negociação.
(b) Encontre o número socialmente ótimo de cabeças.
(c) Se o fazendeiro tem o direito de criar gado livremente, mostre que a negociação coaseana leva ao ótimo social. Determine o intervalo de compensação.
(d) Se o lavrador tem o direito a não sofrer danos, mostre que a negociação leva ao mesmo ótimo. Determine o intervalo de compensação.

[🔑 Solução](../solucoes/cap20.md#ex-20-7)

---

**Exercício 20.8.** {#ex-20-8} \(N = 50\) consumidores idênticos, renda \(W = 100\), utilidade \(U_i = x_i + 10\sqrt{G}\), custo \(C(G) = G\).

(a) Derive a condição de Samuelson e encontre \(G^*\).
(b) Encontre o equilíbrio de Nash de contribuição voluntária \(G^{Nash}\).
(c) Calcule a razão \(G^{Nash}/G^*\) e interprete.
(d) O que acontece se \(N\) aumenta para 200? O problema do carona se agrava ou se atenua?

[🔑 Solução](../solucoes/cap20.md#ex-20-8)

---

**Exercício 20.9.** {#ex-20-9} (**Tragédia dos comuns.**) Num lago de acesso aberto, a captura total é \(Q = E(100 - E)\), onde \(E\) é o esforço total de pesca. Preço do peixe: \(p = 1\). Custo por unidade de esforço: \(w = 10\). Há \(n = 10\) pescadores idênticos.

(a) Encontre o esforço total de equilíbrio (acesso aberto).
(b) Encontre o esforço socialmente eficiente.
(c) Calcule o peso morto do acesso aberto.
(d) Proponha duas políticas para alcançar o ótimo social.

[🔑 Solução](../solucoes/cap20.md#ex-20-9)

---

**Exercício 20.10.** {#ex-20-10} (**Cap-and-trade vs. imposto sob incerteza.**) Três firmas com custos marginais de abatimento: \(CMgA_1 = 2a_1\), \(CMgA_2 = 4a_2\), \(CMgA_3 = a_3\). Meta: redução total de 100 toneladas.

(a) Encontre a alocação custo-efetiva e o preço de equilíbrio das permissões. Mostre a equivalência com o imposto uniforme ótimo.
(b) Compare o custo total da alocação custo-efetiva com abatimento uniforme.
(c) Se os verdadeiros custos forem 50% maiores que o estimado e o dano marginal for constante (\(D' = 40\)), compare imposto \(t = 40\) com cap = 100.
(d) Relacione o resultado com Weitzman (1974).

[🔑 Solução](../solucoes/cap20.md#ex-20-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2017, Questão 10"
    Sobre externalidades e bens públicos, classifique as afirmativas como Verdadeiras (V) ou Falsas (F):

    (0) Na presença de externalidade negativa de produção, o equilíbrio competitivo gera quantidade superior à socialmente ótima.

    (1) O Teorema de Coase afirma que, havendo custos de transação nulos e direitos de propriedade bem definidos, a negociação privada sempre conduzirá à alocação eficiente, independentemente da atribuição inicial dos direitos.

    (2) A condição de Samuelson para provisão eficiente de bens públicos estabelece que cada consumidor deve igualar sua taxa marginal de substituição ao custo marginal de produção.

    (3) Em um sistema de cap-and-trade, o preço de equilíbrio da permissão de emissão iguala os custos marginais de abatimento entre as firmas participantes.

    (4) O problema do carona (free rider) tende a ser mais severo em grupos maiores.

    ??? tip "Gabarito"
        (0) **V** — Com externalidade negativa, CMg social > CMg privado, levando a sobreprodução.

        (1) **V** — Enunciado correto do Teorema de Coase.

        (2) **F** — A condição de Samuelson exige que a **soma** das TMS iguale o CMg, não a TMS individual.

        (3) **V** — No equilíbrio do mercado de permissões, os custos marginais de abatimento se equalizam.

        (4) **V** — Em grupos maiores, a contribuição individual tem efeito menor sobre a provisão total, aumentando o incentivo ao free-riding (Olson, 1965).

??? question "ANPEC 2022, Questão 08"
    Considere uma economia com dois consumidores (1 e 2), um bem privado \(x\) e um bem público \(G\). As utilidades são \(U_1 = x_1 + 8\sqrt{G}\) e \(U_2 = x_2 + 4\sqrt{G}\). O custo do bem público é \(C(G) = G\). Cada consumidor tem renda \(W = 100\).

    (0) A condição de Samuelson para provisão eficiente é \(\frac{4}{\sqrt{G}} + \frac{2}{\sqrt{G}} = 1\).

    (1) O nível eficiente de bem público é \(G^* = 36\).

    (2) No equilíbrio de Nash de contribuição voluntária, \(G^{Nash} = 16\).

    (3) A provisão voluntária produz \(G^{Nash}/G^* = 4/9\) do nível eficiente.

    (4) A introdução de um mecanismo de Clarke resolveria o problema de subprovisão induzindo revelação verdadeira das preferências.

    ??? tip "Gabarito"
        (0) **V** — \(TMS_1 = 4/\sqrt{G}\), \(TMS_2 = 2/\sqrt{G}\). Soma = \(6/\sqrt{G} = 1\)... Espere: \(TMS_1 = 8/(2\sqrt{G}) = 4/\sqrt{G}\), \(TMS_2 = 4/(2\sqrt{G}) = 2/\sqrt{G}\). Soma: \((4+2)/\sqrt{G} = 6/\sqrt{G}\). A questão diz \(4/\sqrt{G} + 2/\sqrt{G}\), que é o mesmo que \(6/\sqrt{G} = 1\). **V**.

        (1) **V** — \(6/\sqrt{G} = 1 \implies \sqrt{G} = 6 \implies G^* = 36\).

        (2) **V** — No Nash, cada consumidor iguala sua TMS individual ao CMg. Consumidor 1: \(4/\sqrt{G} = 1 \implies G = 16\). Se 1 contribui sozinho, \(G = 16\). Consumidor 2: \(2/\sqrt{G} = 1 \implies G = 4\). Mas 2 não contribui se 1 já provê \(G = 16\) (pois \(2/\sqrt{16} = 0{,}5 < 1\)). Nash: \(G = 16\). **V**.

        (3) **V** — \(16/36 = 4/9\). **V**.

        (4) **V** — O mecanismo de Clarke torna a revelação verdadeira estratégia dominante, resolvendo o problema do carona. **V**.

??? question "ANPEC 2020, Questão 12"
    Sobre o Teorema da Impossibilidade de Arrow:

    (0) O teorema se aplica quando há pelo menos três alternativas e dois indivíduos.

    (1) A condição de independência de alternativas irrelevantes (IIA) exige que a ordenação social entre A e B dependa apenas das preferências individuais entre A e B.

    (2) A contagem de Borda satisfaz todas as condições de Arrow.

    (3) O Teorema do Eleitor Mediano é válido quando as preferências são unimodais e a escolha é unidimensional.

    (4) O resultado do eleitor mediano sempre coincide com o nível eficiente de Samuelson para bens públicos.

    ??? tip "Gabarito"
        (0) **V** — Condição necessária para o teorema.

        (1) **V** — Definição correta de IIA.

        (2) **F** — A contagem de Borda viola IIA (a ordenação entre A e B pode mudar com a introdução de C).

        (3) **V** — Condições suficientes para o Teorema do Eleitor Mediano.

        (4) **F** — O eleitor mediano reflete a preferência de um indivíduo específico, não a soma das TMS. Coincidência só ocorre em casos especiais.
