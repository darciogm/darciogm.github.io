# Votação e Mecanismos de Revelação

## 20.9 Enfiar 200 Milhões de Preferências Numa Urna: Votação e Alocação de Recursos {#209}

Na ausência de mecanismos de mercado eficientes para bens públicos, as sociedades recorrem a processos políticos — especialmente a **votação** — para decidir o nível de provisão.

### Votação por maioria simples

Considere uma comunidade de \(N\) cidadãos que deve decidir o nível de gastos \(G\) com um bem público, financiado por imposto uniforme \(T = CMg(G)/N\) por pessoa. Cada cidadão \(i\) tem nível preferido \(G_i^*\) que maximiza \(U_i(G) - T\).

!!! abstract "Teorema do Eleitor Mediano"
    Se as preferências dos eleitores são **unimodais** (single-peaked) e a escolha é unidimensional, a regra de maioria simples seleciona o nível preferido pelo **eleitor mediano** — aquele cujo nível preferido \(G_m^*\) é tal que metade dos eleitores prefere mais e metade prefere menos.

    Formalmente, se \(G_1^* \leq G_2^* \leq \cdots \leq G_N^*\), o resultado da votação por maioria é \(G_m^* = G_{(N+1)/2}^*\) (para \(N\) ímpar).

**Relação com eficiência**: O nível escolhido pelo eleitor mediano geralmente **não** coincide com o nível eficiente de Samuelson, exceto por coincidência. A provisão pode ser excessiva ou insuficiente dependendo da distribuição de preferências e renda na população.

### Paradoxo de Condorcet

Quando as preferências não são unimodais ou a escolha é multidimensional, a votação por maioria pode produzir **ciclos** (A vence B, B vence C, C vence A), não existindo um vencedor de Condorcet.

**Exemplo:** Três eleitores (1, 2, 3) e três alternativas (A, B, C).

| Eleitor | 1.ª preferência | 2.ª preferência | 3.ª preferência |
|---------|-----------------|-----------------|-----------------|
| 1       | A               | B               | C               |
| 2       | B               | C               | A               |
| 3       | C               | A               | B               |

- A vs. B: A vence (eleitores 1 e 3).
- B vs. C: B vence (eleitores 1 e 2).
- C vs. A: C vence (eleitores 2 e 3).

Resultado: ciclo A ≻ B ≻ C ≻ A. Não existe vencedor de Condorcet.

### Teorema da Impossibilidade de Arrow

!!! abstract "Teorema da Impossibilidade de Arrow (1951)"
    Não existe regra de agregação de preferências (com três ou mais alternativas e dois ou mais indivíduos) que satisfaça simultaneamente as seguintes quatro condições:

    1. **Domínio irrestrito**: a regra funciona para qualquer perfil de preferências individuais.
    2. **Princípio de Pareto (unanimidade)**: se todos preferem A a B, a escolha social deve preferir A a B.
    3. **Independência de alternativas irrelevantes (IIA)**: a ordenação social entre A e B depende apenas das preferências individuais entre A e B, não das preferências sobre C.
    4. **Não-ditadura**: não existe um indivíduo cuja preferência sempre determine a escolha social.

O teorema de Arrow demonstra que qualquer sistema de votação com três ou mais alternativas necessariamente viola pelo menos uma dessas condições. Em outras palavras: não existe sistema de votação perfeito.

**Regras de votação e suas violações:**

| Regra | Violação principal |
|-------|-------------------|
| Maioria simples | Pode gerar ciclos (viola transitividade) |
| Ditadura | Viola não-ditadura |
| Unanimidade (veto) | Viola completude |
| Contagem de Borda | Viola IIA |
| Votação por aprovação | Viola IIA |

!!! question "Nobel de Economia 1972 — Kenneth Arrow"
    Kenneth Arrow recebeu o Prêmio Nobel (compartilhado com John Hicks) "por suas contribuições pioneiras à teoria do equilíbrio geral e à teoria do bem-estar." O Teorema da Impossibilidade, publicado em *Social Choice and Individual Values* (1951), é um dos resultados mais profundos das ciências sociais: demonstra que a democracia, por mais desejável que seja, não pode ser "perfeita" em sentido formal — todo sistema de votação envolve trade-offs fundamentais. O teorema inspirou décadas de pesquisa em teoria da escolha social, design de mecanismos e economia política.

---

## 20.10 Fazendo Você Dizer a Verdade: Mecanismos de Revelação de Preferências {#2010}

O desafio central na provisão de bens públicos é induzir os indivíduos a **revelar honestamente** suas preferências. O mecanismo de Vickrey-Clarke-Groves (VCG) fornece uma solução elegante.

!!! definition "Mecanismo VCG (Vickrey-Clarke-Groves)"
    Classe de mecanismos de revelação de preferências em que cada indivíduo paga um imposto igual ao **custo externo** que sua participação impõe sobre os demais membros do grupo. Sob esse mecanismo, é estratégia dominante para cada indivíduo revelar sua verdadeira valoração.

### Funcionamento do mecanismo de Clarke (imposto pivotal)

1. Cada indivíduo \(i\) reporta sua valoração \(\hat{v}_i\) pelo bem público.
2. O bem é provido se \(\sum_i \hat{v}_i \geq C\) (custo de provisão).
3. O indivíduo \(i\) é **pivotal** se sua presença altera a decisão (o bem é provido com ele mas não sem ele).
4. Se \(i\) é pivotal, paga um imposto igual a:

\[
t_i = C - \sum_{j \neq i} \hat{v}_j
\label{eq:20.14} \tag{20.14} \]

Esse imposto corresponde ao "custo" que a presença de \(i\) impõe sobre os demais (que precisam financiar a diferença).

**Por que funciona**: Se \(i\) reporta \(\hat{v}_i > v_i\), pode tornar-se pivotal quando não deveria, e pagar um imposto superior ao seu benefício real. Se reporta \(\hat{v}_i < v_i\), pode impedir a provisão de um bem que lhe seria benéfico. Em ambos os casos, o desvio não é lucrativo, e a verdade é estratégia dominante.

!!! note "Limitações do VCG"
    O mecanismo VCG não é equilibrado orçamentariamente (os impostos pivotais não cobrem o custo total), pode ser vulnerável a coalizões, e requer que as valorações sejam **quase-lineares** (utilidade transferível). Na prática, sua aplicação direta é rara, mas o princípio inspira mecanismos em leilões (como o leilão de Vickrey) e em design de mercados.

??? exercicio-resolvido "ER 20.8 — Mecanismo de Clarke para bem público discreto"

    **Enunciado.** Três vizinhos decidem se constroem uma calçada (custo = R$900, dividido igualmente em R$300 cada). Valorações: \(v_A = 400\), \(v_B = 350\), \(v_C = 100\). (a) A calçada deve ser construída? (b) Quem é pivotal? (c) Calcule os impostos pivotais.

    **Solução.**

    **(a)** \(\sum v_i = 400 + 350 + 100 = 850 < 900\). Pelo critério de eficiência, a calçada **não** deve ser construída (\(\sum v_i < C\)).

    Mas calculemos os excedentes líquidos: \(\sum (v_i - c_i) = (400 - 300) + (350 - 300) + (100 - 300) = 100 + 50 - 200 = -50 < 0\). Confirmado: não construir.

    **(b)** Sem A: \(\sum_{j \neq A}(v_j - c_j) = 50 + (-200) = -150 < 0\). Decisão sem A: não construir. Decisão com A: não construir. A **não é pivotal**.

    Sem B: \(\sum_{j \neq B}(v_j - c_j) = 100 + (-200) = -100 < 0\). Decisão sem B: não construir. Decisão com B: não construir. B **não é pivotal**.

    Sem C: \(\sum_{j \neq C}(v_j - c_j) = 100 + 50 = 150 > 0\). Decisão sem C: **construir**. Decisão com C: não construir. C **é pivotal** — sua presença muda a decisão de "construir" para "não construir".

    **(c)** C é pivotal e impede um ganho líquido de 150 para os demais. Contudo, como a decisão final é "não construir", não há imposto a cobrar neste caso — o imposto pivotal só se aplica quando o agente pivotal altera a decisão *para provisão*. Se reformularmos com valorações mais altas (\(v_C = 200\)), a construção ocorreria e C pagaria um imposto pelo dano imposto aos demais.

---

<iframe src="/micro-book/graficos/cap20/webr-vcg.html" title="WebR — Mecanismo VCG e imposto pivotal" class="graph-iframe" style="height:700px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 20.5 — Mecanismo VCG e imposto pivotal.** Insira as valorações dos participantes e o custo do bem público para ver quem é pivotal e os impostos correspondentes.
</div>

---

!!! box-brasil "Box Brasil 20.3 — Desmatamento na Amazônia e precificação de carbono"

    **Contexto:** O desmatamento na Amazônia brasileira é um caso emblemático de **externalidade negativa de escala global**. A remoção da floresta gera custos externos que incluem emissões de CO₂ (contribuindo para a mudança climática), perda de biodiversidade, alteração do ciclo hidrológico (inclusive os "rios voadores" que transportam umidade para o Centro-Sul do Brasil) e erosão do solo.

    **Dimensão do problema:** Segundo dados do INPE/PRODES, o desmatamento acumulado na Amazônia Legal superou 85 milhões de hectares até 2023 (cerca de 17% da floresta original). Após queda expressiva entre 2004 e 2012 (de 27.772 km² para 4.571 km² anuais), as taxas voltaram a subir, atingindo 13.235 km² em 2021, antes de recuar para cerca de 9.001 km² em 2023 com o reforço de políticas de fiscalização.

    **Análise econômica:** O desmatamento persiste porque os **benefícios privados** (expansão da pecuária, agricultura, extração madeireira) excedem os **custos privados** para os agentes locais, embora os **custos sociais** — incluindo danos climáticos globais — superem largamente os benefícios. Trata-se de uma externalidade negativa clássica.

    **Instrumentos de política:** O Fundo Amazônia (subsídio pigouviano), REDD+ (mecanismo coaseano de direitos sobre carbono florestal), o Sistema Brasileiro de Comércio de Emissões — SBCE (cap-and-trade, regulamentado em 2024) e o Código Florestal (command-and-control). Este caso ilustra a aplicação integrada de todos os instrumentos discutidos no capítulo.

!!! box-mundo "Box Mundo 20.4 — BBC e NHK: financiamento de radiodifusão pública"

    **Contexto:** A radiodifusão é um bem público clássico (não-rival e não-excludente via ondas de rádio/TV). Como financiar sua provisão sem subprovisão?

    **Modelos:** A BBC (Reino Unido) é financiada pela *licence fee* — uma taxa anual obrigatória de £159 (2023) para qualquer domicílio com aparelho de TV. A NHK (Japão) cobra uma taxa semelhante de ¥13.650/ano. Ambos os modelos evitam o problema do carona tornando o pagamento compulsório.

    **Alternativas:** Nos EUA, a PBS é financiada por uma combinação de doações voluntárias, subsídio federal e patrocínio corporativo — resultando em orçamento muito menor per capita que BBC ou NHK. O modelo americano ilustra a subprovisão prevista pela teoria quando o financiamento é voluntário.

    **Análise:** A taxa compulsória é economicamente equivalente a um imposto de Lindahl uniforme — não personalizado (todos pagam o mesmo), mas que garante provisão. A discussão sobre o nível adequado da taxa e a abrangência do serviço público é essencialmente um debate sobre a condição de Samuelson na prática.
