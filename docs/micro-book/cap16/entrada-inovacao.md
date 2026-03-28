# 16.11–16.13 Entrada Livre e Inovação

## 16.11 Lotação Máxima: Entrada Livre em Cournot {#1611}

As seções anteriores trataram o número de firmas como dado. Mas em mercados com entrada livre, o próprio número de competidores é uma variável endógena, determinada pela condição de lucro zero no equilíbrio de longo prazo. Quantas firmas o mercado comporta? E o número de firmas que efetivamente entram é socialmente ótimo, ou há excesso de entrada?

### Número de firmas em equilíbrio

Se a entrada é livre mas sujeita a custo fixo \(f\), as firmas entram até que o lucro líquido seja zero. Usando os resultados da [Seção 16.4](fundamentos.md#164) (Cournot com \(n\) firmas):

\[
\pi^*(n) = \frac{(a-c)^2}{b(n+1)^2} = f
\]

Resolvendo para \(n\):

\[
n^* = \frac{a-c}{\sqrt{bf}} - 1
\label{eq:16.16} \tag{16.16} \]

O número de firmas é crescente no tamanho do mercado \((a-c)\) e decrescente no custo fixo \(f\) e no parâmetro de inclinação da demanda \(b\).

### Excesso de entrada

Mankiw e Whinston (1986) demonstraram que, sob condições gerais, o equilíbrio de entrada livre em Cournot apresenta **excesso de entrada**: o número de firmas em equilíbrio é superior ao socialmente ótimo. Isso ocorre porque cada entrante ignora a **externalidade negativa** que impõe às firmas existentes ao reduzir o preço de mercado (efeito roubo de negócios, *business stealing*).

---

## 16.12 Quem Inventa Quando Poucos Competem: Inovação sob Oligopólio {#1612}

Além das decisões de preço e quantidade, os oligopolistas enfrentam uma dimensão igualmente central: a inovação tecnológica. Será que firmas em mercados concentrados investem mais ou menos em pesquisa e desenvolvimento do que firmas em mercados competitivos? A resposta envolve um confronto entre duas forças opostas, identificadas respectivamente por Arrow e por Gilbert e Newbery, cuja resultante depende das características específicas de cada mercado.

### Incentivos à inovação

O oligopólio apresenta incentivos à inovação que são intermediários entre concorrência perfeita e monopólio. Há duas forças em operação:

- **Efeito substituição** (Arrow, 1962): uma firma competitiva tem mais a ganhar com uma inovação drástica do que um monopolista, pois o monopolista já desfruta de lucros que seriam parcialmente canibalizados pela inovação. Esse efeito favorece a inovação em mercados competitivos.

- **Efeito eficiência** (Gilbert e Newbery, 1982): o monopolista tem mais a perder com a entrada de um inovador do que o entrante tem a ganhar, o que lhe dá incentivos mais fortes para inovar preventivamente. Esse efeito favorece a inovação por incumbentes com poder de mercado.

No oligopólio, ambas as forças coexistem. A intensidade de P&D depende do grau de competição, do regime de apropriabilidade (proteção de patentes) e da natureza da inovação (incremental vs. radical).

### Corridas por patentes

Em modelos de corrida por patentes (patent race), múltiplas firmas investem em P&D simultaneamente, mas apenas a primeira a obter sucesso recebe a patente. Esses modelos tendem a gerar **excesso de investimento** em P&D do ponto de vista social: a duplicação de esforços desperdiça recursos.

---

## 16.13 Todos na Mesa: Comparação dos Modelos de Oligopólio {#1613}

Bertrand, Cournot, Stackelberg, colusão — são tantos modelos que é fácil perder o fio. Hora de colocar todos lado a lado e ver quem cobra mais, quem produz menos e quem deixa o consumidor em pior situação. A [Tabela 16.2](#tabela-16-2) resume os principais resultados dos modelos clássicos para o caso de demanda linear \(p = a - bQ\), custos marginais constantes \(c\) e duas firmas simétricas.

<a id="tabela-16-2"></a>

| Variável | Bertrand | Cournot | Stackelberg | Colusão |
|---|---|---|---|---|
| **Preço** | \(c\) | \(\frac{a+2c}{3}\) | \(\frac{a+3c}{4}\) | \(\frac{a+c}{2}\) |
| **Quantidade total** | \(\frac{a-c}{b}\) | \(\frac{2(a-c)}{3b}\) | \(\frac{3(a-c)}{4b}\) | \(\frac{a-c}{2b}\) |
| **Lucro por firma** | \(0\) | \(\frac{(a-c)^2}{9b}\) | Líder: \(\frac{(a-c)^2}{8b}\); Seguidora: \(\frac{(a-c)^2}{16b}\) | \(\frac{(a-c)^2}{8b}\) |
| **Lucro total** | \(0\) | \(\frac{2(a-c)^2}{9b}\) | \(\frac{3(a-c)^2}{16b}\) | \(\frac{(a-c)^2}{4b}\) |
| **Nº mínimo de firmas** | 2 | 2+ | 2 (líder + seguidora) | 2+ |
| **Variável de decisão** | Preço | Quantidade | Quantidade (sequencial) | Preço ou quantidade |
| **Eficiência** | Eficiente | Intermediária | Intermediária (mais que Cournot) | Monopólio |
| **Estabilidade** | Equilíbrio de Nash | Equilíbrio de Nash | Eq. perfeito em subjogos | Requer mecanismo de enforcement |

<div class="caption-obj" markdown>
**Tabela 16.2 — Comparação dos modelos de oligopólio.**
</div>

!!! tip "Ordenação por eficiência"
    Em termos de excedente total, a ordenação é: Bertrand \(\geq\) Stackelberg \(\geq\) Cournot \(\geq\) Colusão. A concorrência em preços é a mais eficiente; a colusão é a menos eficiente (equivalente ao monopólio).

---

!!! box-brasil "Box Brasil: Concentração bancária — spread, fusões e competição"
    O sistema bancário brasileiro é um dos mais concentrados entre as grandes economias. Os cinco maiores bancos (Itaú Unibanco, Bradesco, Banco do Brasil, Caixa Econômica Federal e Santander) detêm mais de 80% dos ativos totais do sistema, segundo dados do Banco Central do Brasil.

    **Spreads bancários**

    O spread bancário brasileiro — diferença entre a taxa de empréstimo e a taxa de captação — é historicamente elevado em comparação internacional. Dados do Banco Central indicam que o spread médio para pessoa física situava-se em torno de 30-40 pontos percentuais ao ano em períodos recentes, enquanto a média da OCDE é inferior a 5 p.p. As causas frequentemente apontadas incluem:

    - **Risco de crédito elevado** e custos de inadimplência.
    - **Custos administrativos** e tributação sobre operações financeiras (IOF).
    - **Poder de mercado** decorrente da concentração.
    - **Cunha tributária** e depósitos compulsórios elevados.
    - **Assimetria de informação** e fragilidades institucionais na recuperação de crédito.

    A literatura empírica debate a importância relativa desses fatores. Estudos do [BCB](https://www.bcb.gov.br) sugerem que o poder de mercado explica parcela significativa, mas não majoritária, do spread.

    **Fusões analisadas pelo CADE**

    | Operação | Ano | Decisão CADE | Participação resultante |
    |---|---|---|---|
    | Itaú + Unibanco | 2008 | Aprovada sem restrições | ~18% dos ativos |
    | Bradesco + HSBC Brasil | 2016 | Aprovada com restrições | ~14% dos ativos |
    | Itaú + XP (parcial) | 2017 | Aprovada com restrições | Participação minoritária |

    A fusão Itaú-Unibanco (2008) foi analisada pelo CADE em rito sumário, decisão que gerou controvérsia dada a magnitude da operação. O CADE argumentou que a participação conjunta em mercados relevantes específicos não ultrapassava patamares preocupantes, e que os ganhos de eficiência justificavam a operação.

    A aquisição do HSBC Brasil pelo Bradesco (2016) foi aprovada com restrições, incluindo a alienação de carteiras em mercados locais onde a concentração se tornava excessiva.

    **Comparação internacional**

    | País | CR5 (ativos) | Spread médio (p.p.) |
    |---|---|---|
    | Brasil | ~82% | ~35 |
    | EUA | ~47% | ~3 |
    | Alemanha | ~30% | ~4 |
    | Chile | ~70% | ~5 |
    | Austrália | ~80% | ~3 |

    A comparação sugere que a concentração per se não explica os spreads brasileiros: Austrália e Canadá possuem concentração bancária semelhante à brasileira, mas spreads muito inferiores. Fatores institucionais — custos de recuperação de crédito, instabilidade macroeconômica histórica, regulação prudencial — são igualmente relevantes.

    **Fintechs e contestabilidade**

    A partir de 2018, o Banco Central adotou medidas para aumentar a competição bancária, incluindo a agenda BC# (posteriormente Agenda BC+), o open banking (Sistema Financeiro Aberto) e a regulamentação de fintechs. O crescimento de instituições digitais como Nubank, Inter e C6 Bank introduziu elementos de contestabilidade que pressionam as margens dos incumbentes, embora a participação dessas instituições nos estoques de crédito ainda seja modesta.

---

<iframe src="../graficos/cap16/comparacao-oligopolio.html" title="Figura 16.4 — Comparação dos modelos de oligopólio" class="graph-iframe" style="height:610px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 16.4 — Todos os modelos de oligopólio em um único diagrama \((Q, P)\).** A tabela compara preços, quantidades, lucros, excedente do consumidor e bem-estar total para cada estrutura de mercado.
</div>
