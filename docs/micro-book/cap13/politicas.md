# 13.10–13.12 Políticas Públicas

## 13.10 Quando o Governo Puxa o Freio: Controles de Preços {#1310}

Armados com as ferramentas de excedente e eficiência, podemos agora analisar uma das intervenções mais comuns — e mais controversas — nos mercados: os **controles de preços**. Governos frequentemente fixam preços máximos (tetos) ou mínimos (pisos) por motivos distributivos ou de estabilização. A análise de bem-estar revela que, embora bem-intencionados, esses controles tipicamente geram custos de eficiência significativos.[^life-of-brian-controles]

### Preço máximo (teto de preço)

Um **preço máximo** (ou teto de preço) $\bar{p}$ é um limite superior imposto por lei: nenhum vendedor pode cobrar mais do que $\bar{p}$. Se $\bar{p} < p^*$, o teto é efetivo e gera:

1. **Excesso de demanda** (escassez): $Q_D(\bar{p}) > Q_S(\bar{p})$.
2. **Racionamento**: como a quantidade ofertada é menor que a demandada, algum mecanismo não-preço seleciona os compradores — filas, relações pessoais, mercado negro, sorteio, ou simples sorte.
3. **Perda de peso morto**: transações mutuamente benéficas deixam de ocorrer.

\[
PPM_{\text{teto}} = \int_{Q_S(\bar{p})}^{Q^*} \left[ p^d(Q) - p^s(Q) \right] dQ
\]

O teto transfere parte do excedente do produtor para os consumidores que conseguem comprar (o retângulo entre $p^*$ e $\bar{p}$ sobre a quantidade transacionada), mas destrói excedente líquido (o triângulo de PPM). Além disso, os consumidores que *não* conseguem comprar — os racionados — ficam piores do que no equilíbrio livre.

!!! box-brasil "Box Brasil 13.3 — Controle de aluguéis no Brasil"
    O Brasil tem uma longa história de intervenções no mercado de aluguéis. A Lei do Inquilinato (Lei 8.245/1991) não impõe tetos de preço diretos, mas regula os reajustes (tipicamente vinculados ao IGP-M ou IPCA). Em períodos de inflação alta ou divergência entre índices, essas regras funcionam como tetos implícitos.

    Nos anos 1940–1960, o Brasil teve controles de aluguel explícitos, com resultados previsíveis pela teoria: deterioração dos imóveis (proprietários sem incentivo para manter), escassez de oferta (menos construção para aluguel), e mercado negro de "luvas" (pagamentos extras por fora). A experiência brasileira é consistente com a vasta evidência internacional sobre controles de aluguel — de Nova York a Estocolmo — documentada por Arnott (1995) e Diamond et al. (2019).

### Preço mínimo (piso de preço)

Um **preço mínimo** $\underline{p}$ é um limite inferior: nenhum comprador pode pagar menos do que $\underline{p}$. Se $\underline{p} > p^*$, o piso é efetivo e gera:

1. **Excesso de oferta** (excedente não vendido): $Q_S(\underline{p}) > Q_D(\underline{p})$.
2. **Desperdício ou estoques**: a produção excedente precisa ser armazenada, destruída ou exportada a preços mais baixos.
3. **Perda de peso morto**: análoga à do teto, mas "pelo outro lado" do equilíbrio.

O exemplo clássico é o **salário mínimo** no mercado de trabalho: se fixado acima do salário de equilíbrio, gera desemprego (excesso de oferta de trabalho). No agronegócio brasileiro, a **Política de Garantia de Preços Mínimos** (PGPM) da CONAB funciona como piso de preço para commodities agrícolas. Quando o preço de mercado cai abaixo do mínimo, o governo compra o excedente (Aquisições do Governo Federal — AGF) ou paga a diferença ao produtor (Prêmio para Escoamento de Produto — PEP).

<iframe src="/micro-book/graficos/cap13/controles-precos.html" title="Figura 13.3 — Controles de preços" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 13.3 — Controles de preços: teto e piso.** Compare os efeitos de preços máximos e mínimos sobre a quantidade transacionada, os excedentes e a perda de peso morto. Ajuste o nível do controle para observar como a distorção varia com a distância ao equilíbrio.
</div>

---

## 13.11 O Imposto Não Cai Onde Você Pensa: Incidência Tributária {#1311}

Se controles de preços são intervenções "brutas", impostos são instrumentos mais sutis — mas não menos interessantes para o economista. A questão central da **incidência tributária** é: quem realmente paga o imposto? A resposta, como veremos, raramente coincide com o que a legislação determina.

### Imposto específico: incidência legal versus econômica

Considere um imposto específico de $t$ reais por unidade vendida. Se o imposto é cobrado do vendedor (incidência legal sobre o produtor), a curva de oferta se desloca para cima em $t$: o vendedor agora precisa de um preço $t$ reais maior para cobrir o custo + imposto. Se cobrado do comprador, a curva de demanda se desloca para baixo em $t$.

**Resultado fundamental:** O equilíbrio final — preço pago pelo consumidor ($p_c$), preço recebido pelo produtor ($p_p = p_c - t$) e quantidade transacionada — é **o mesmo** independentemente de quem legalmente recolhe o imposto.

\[
p_c - p_p = t
\]

A divisão da carga tributária entre consumidores e produtores depende exclusivamente das **elasticidades relativas**:

\[
\frac{\Delta p_c}{\Delta p_p} = \frac{\varepsilon_S}{|\varepsilon_D|}
\label{eq:13.14} \tag{13.14} \]

!!! definition "Incidência tributária"
    A **incidência legal** de um imposto é quem a lei obriga a recolher. A **incidência econômica** é quem efetivamente arca com a carga (via variação de preço). A equação $\eqref{eq:13.14}$ mostra que:

    - Se a demanda é relativamente mais inelástica ($|\varepsilon_D| < \varepsilon_S$): **consumidores arcam com a maior parte**.
    - Se a oferta é relativamente mais inelástica ($\varepsilon_S < |\varepsilon_D|$): **produtores arcam com a maior parte**.
    - O lado mais inelástico do mercado — o que tem menos opções de fuga — absorve mais da carga.

### Fórmulas de incidência

A fração do imposto arcada pelo consumidor é:

\[
\text{Fração}_C = \frac{\varepsilon_S}{\varepsilon_S + |\varepsilon_D|}
\label{eq:13.15} \tag{13.15} \]

A fração arcada pelo produtor é:

\[
\text{Fração}_P = \frac{|\varepsilon_D|}{\varepsilon_S + |\varepsilon_D|}
\label{eq:13.16} \tag{13.16} \]

Note que $\text{Fração}_C + \text{Fração}_P = 1$: o imposto é integralmente dividido entre os dois lados do mercado.

!!! idea "Intuição Econômica"
    **Em uma frase:** O imposto cai no colo de quem não pode fugir — e quem tem menos alternativas é quem tem demanda (ou oferta) mais inelástica.

    **Pense assim:** Se você é o único posto de gasolina numa cidade do interior (oferta inelástica) e o governo tributa a gasolina, você absorve a maior parte — porque os consumidores simplesmente compram menos, e você não tem para quem mais vender. Mas se a cidade tem 10 postos (oferta elástica) e os moradores precisam de gasolina para ir ao trabalho (demanda inelástica), os consumidores é que pagam a conta.

    **Por que isso importa:** A reforma tributária brasileira (EC 132/2023) substituiu cinco tributos sobre consumo (ICMS, ISS, PIS, Cofins, IPI) por dois (IBS e CBS). Mudar a forma do imposto não muda quem paga — muda a transparência, a simplicidade e a magnitude da distorção. A incidência econômica continua determinada pelas elasticidades.

### Perda de peso morto do imposto

O imposto reduz a quantidade transacionada de $Q^*$ para $Q_t$ e gera uma perda de peso morto:

\[
PPM = \frac{1}{2} \cdot t \cdot (Q^* - Q_t) \approx \frac{1}{2} \cdot \frac{|\varepsilon_D| \cdot \varepsilon_S}{|\varepsilon_D| + \varepsilon_S} \cdot \frac{t^2}{p^*} \cdot Q^*
\label{eq:13.17} \tag{13.17} \]

A fórmula aproximada (para imposto pequeno) revela dois fatos importantes:

1. **A PPM cresce com o quadrado do imposto**: dobrar a alíquota quadruplica a perda de eficiência. Impostos altos são desproporcionalmente distorcivos.
2. **A PPM é menor quando as elasticidades são menores**: tributar bens com demanda e oferta inelásticas gera pouca distorção — a base do **Princípio de Ramsey** (tributação ótima).

!!! box-mundo "Box Mundo 13.2 — O Princípio de Ramsey e a tributação de cigarros"
    Frank Ramsey (1903–1930), matemático e filósofo de Cambridge que morreu tragicamente aos 26 anos, demonstrou em 1927 que a tributação ótima de commodities deve ser inversamente proporcional às elasticidades: bens com demanda mais inelástica devem ter alíquotas mais altas, pois a distorção é menor. Isso parece justificar tributar fortemente bens como cigarros (demanda muito inelástica, $|\varepsilon_D| \approx 0{,}3$–$0{,}5$). Mas há um conflito: a regra de Ramsey é *regressiva* — bens de primeira necessidade tendem a ter demanda inelástica, e tributá-los mais pesadamente penaliza os mais pobres. A solução moderna (Diamond & Mirrlees, 1971) incorpora considerações distributivas, e a prática tributária brasileira — com alíquotas diferenciadas para bens essenciais na reforma do IBS/CBS — reflete exatamente esse *trade-off*.

<iframe src="/micro-book/graficos/cap13/incidencia-tributaria.html" title="Figura 13.4 — Incidência tributária" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 13.4 — Incidência tributária: quem paga o imposto?** Ajuste as elasticidades de oferta e demanda para ver como a carga tributária se distribui entre consumidores e produtores. Observe que a incidência legal (sobre quem o imposto recai formalmente) é irrelevante para o resultado econômico.
</div>

<iframe src="/micro-book/graficos/cap13/webr-incidencia-tributaria.html" title="WebR — Incidência Tributária" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 13.6 — Incidência tributária e perda de peso morto.** O código calcula a incidência econômica, a receita tributária e a PPM para diferentes valores de imposto e elasticidades. Teste o Princípio de Ramsey: compare a PPM quando se tributa um bem elástico versus um inelástico.
</div>

---

## 13.12 O Placar Final: EC, EP e PPM {#1312}

Para concluir a análise de políticas, é útil comparar sistematicamente os efeitos de diferentes intervenções sobre os três componentes do bem-estar: excedente do consumidor (EC), excedente do produtor (EP) e perda de peso morto (PPM). A tabela abaixo resume os resultados qualitativos:

| Intervenção | EC | EP | Receita Gov. | PPM | Quantidade |
|:---|:---:|:---:|:---:|:---:|:---:|
| Equilíbrio livre | Máximo conjunto | Máximo conjunto | 0 | 0 | $Q^*$ |
| Teto de preço ($\bar{p} < p^*$) | Ambíguo | $\downarrow$ | 0 | $> 0$ | $\downarrow$ |
| Piso de preço ($\underline{p} > p^*$) | $\downarrow$ | Ambíguo | 0 | $> 0$ | $\downarrow$ |
| Imposto específico $t$ | $\downarrow$ | $\downarrow$ | $t \cdot Q_t > 0$ | $> 0$ | $\downarrow$ |
| Subsídio específico $s$ | $\uparrow$ | $\uparrow$ | $-s \cdot Q_s < 0$ | $> 0$ | $\uparrow$ |
| Cota de importação | $\downarrow$ | $\uparrow$ | Renda da cota | $> 0$ | Doméstica $\uparrow$, total $\downarrow$ |

!!! note "Observações sobre a tabela"
    1. O EC com teto de preço é "ambíguo" porque consumidores que compram ganham (pagam menos), mas consumidores racionados perdem. O efeito líquido depende de quem é racionado.
    2. O subsídio gera PPM porque estimula a produção além do nível eficiente — unidades cuja disposição a pagar é menor que o custo marginal são produzidas e consumidas.
    3. A "receita do governo" no caso da cota é a renda da cota, que pode ir para o governo (se a cota é leiloada), para importadores (se é distribuída gratuitamente) ou para o país exportador (se é uma restrição voluntária de exportação).

### Princípios gerais

Da análise conjunta, emergem princípios que todo economista — e todo formulador de políticas — deveria ter na ponta da língua:

1. **Qualquer desvio do equilíbrio competitivo gera PPM**, desde que as hipóteses do Primeiro Teorema do Bem-Estar sejam satisfeitas.
2. **A PPM cresce com o quadrado da distorção**: um imposto de 20% gera quatro vezes mais PPM do que um imposto de 10%.
3. **Transferências *lump-sum* dominam controles de preços** como instrumento redistributivo: alcançam o objetivo distributivo sem distorcer o mecanismo de preços.
4. **A incidência econômica é determinada pelas elasticidades**, não pela legislação. Mudar o lado legal do imposto é mudar o rótulo, não o conteúdo.
5. **O lado mais inelástico do mercado arca com mais da carga** — de impostos, subsídios, ou qualquer intervenção que crie uma cunha entre preço ao consumidor e preço ao produtor.

!!! tip "Conectando com os próximos capítulos"
    Todo este capítulo operou sob as hipóteses da concorrência perfeita. Nos Capítulos 15–16 (poder de mercado), veremos que monopólios e oligopólios já operam *aquém* do ótimo social — e impostos sobre monopolistas podem até *reduzir* a PPM em circunstâncias especiais. Nos Capítulos 19–20 (falhas de mercado), veremos que externalidades e informação assimétrica justificam intervenções corretivas — impostos pigouvianos, regulação, provisão pública. A análise de bem-estar deste capítulo é o benchmark contra o qual todas essas extensões são comparadas.

[^life-of-brian-controles]: "What have the Romans ever done for us?" — na cena clássica de *Life of Brian*, os revolucionários judeus listam involuntariamente os bens públicos que Roma proveu: aquedutos, estradas, saneamento, irrigação, saúde pública, ordem, educação, vinho... A análise de controles de preços tem a mesma estrutura: começamos criticando a intervenção, mas a lista de exceções legítimas (falhas de mercado, externalidades, bens públicos) pode ser longa. O truque é distinguir quando o governo é Roma — provendo infraestrutura essencial — e quando é a Frente Popular da Judeia — reunindo-se interminavelmente sem produzir nada.
