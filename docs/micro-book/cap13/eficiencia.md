# 13.9 O Juiz Veste Toga: Eficiência e Bem-Estar

## 13.9 Eficiência e Bem-Estar {#139}

Até aqui, descrevemos *como* o mercado competitivo funciona — como preços se formam, como firmas entram e saem, como choques se propagam. Agora fazemos a pergunta normativa: o resultado é *bom*? O equilíbrio competitivo é eficiente? E o que exatamente significa "eficiente" nesse contexto? A resposta — uma das mais bonitas da teoria econômica — é que sim, sob certas hipóteses, o mercado competitivo produz o melhor resultado possível. Mas "o melhor" precisa de definição precisa, e as "certas hipóteses" precisam ser listadas com honestidade.

### Excedente do consumidor e do produtor

O **excedente do consumidor** (EC) mede o ganho líquido dos compradores: a diferença entre o que estão dispostos a pagar e o que efetivamente pagam. Graficamente, é a área entre a curva de demanda e a linha de preço:

\[
EC = \int_0^{Q^*} p^d(Q)\, dQ - p^* \cdot Q^*
\label{eq:13.10} \tag{13.10} \]

O **excedente do produtor** (EP) mede o ganho líquido dos vendedores: a diferença entre o preço recebido e o custo marginal de cada unidade produzida. Graficamente, é a área entre a linha de preço e a curva de oferta:

\[
EP = p^* \cdot Q^* - \int_0^{Q^*} CMg(Q)\, dQ
\label{eq:13.11} \tag{13.11} \]

O **bem-estar total** (ou excedente total) é a soma:

\[
W = EC + EP = \int_0^{Q^*} \left[ p^d(Q) - CMg(Q) \right] dQ
\label{eq:13.12} \tag{13.12} \]

!!! idea "Intuição Econômica"
    **Em uma frase:** O excedente total mede o valor líquido criado pelas trocas no mercado — cada transação em que a disposição a pagar excede o custo marginal gera valor, e o equilíbrio competitivo realiza *todas* essas transações.

    **Pense assim:** Imagine uma fila de compradores ordenados da maior para a menor disposição a pagar, e uma fila de vendedores ordenados do menor para o maior custo. Cada "par" em que o comprador valoriza mais do que o custo do vendedor deveria transacionar — e o mercado competitivo faz exatamente isso. A última transação ocorre onde disposição a pagar = custo marginal = preço.

    **Por que isso importa:** Se qualquer intervenção (imposto, teto de preço, cota) impede que algumas dessas transações ocorram, cria-se uma **perda de peso morto** — valor que ninguém captura.

### O Primeiro Teorema do Bem-Estar (versão equilíbrio parcial)

!!! theorem "Primeiro Teorema do Bem-Estar (equilíbrio parcial)"
    O equilíbrio competitivo maximiza o excedente total $W = EC + EP$. Isto é, a quantidade de equilíbrio $Q^*$ onde $p^d(Q^*) = CMg(Q^*)$ é a quantidade que maximiza a equação $\eqref{eq:13.12}$.

!!! proof "Demonstração"
    Considere a função de bem-estar:

    \[
    W(Q) = \int_0^{Q} \left[ p^d(t) - CMg(t) \right] dt
    \]

    Condição de primeira ordem:

    \[
    \frac{dW}{dQ} = p^d(Q) - CMg(Q) = 0 \implies p^d(Q^*) = CMg(Q^*)
    \]

    que é precisamente a condição de equilíbrio competitivo (preço = disposição a pagar marginal = custo marginal).

    Condição de segunda ordem: como a demanda é decrescente ($dp^d/dQ < 0$) e o custo marginal é crescente ($dCMg/dQ > 0$):

    \[
    \frac{d^2W}{dQ^2} = \frac{dp^d}{dQ} - \frac{dCMg}{dQ} < 0
    \]

    Portanto, $Q^*$ é um máximo. $\blacksquare$

A versão de equilíbrio geral deste teorema — que analisaremos nos Capítulos 17–18 — mostra que, sob hipóteses mais gerais, *todo* equilíbrio walrasiano é Pareto-eficiente. A versão parcial que provamos aqui é o caso especial para um único mercado, e já é suficientemente poderosa para fundamentar a análise de políticas públicas.

!!! tip "Hipóteses cruciais"
    O Primeiro Teorema requer: (i) comportamento tomador de preço; (ii) ausência de externalidades; (iii) informação completa; (iv) ausência de poder de mercado. A violação de qualquer uma dessas hipóteses abre espaço para **falhas de mercado** — tema dos Capítulos 19–20. Como diria o Monty Python: *"Nobody expects the market failure!"* — mas um bom economista deveria.

### A Perda de Peso Morto (PPM)

Qualquer desvio da quantidade de equilíbrio — seja por imposto, controle de preço, monopólio ou cota — gera uma perda de peso morto: transações mutuamente benéficas que deixam de ocorrer. A PPM é o triângulo (ou área) entre as curvas de demanda e oferta, da quantidade efetivamente transacionada à quantidade de equilíbrio:

\[
PPM = \int_{Q_t}^{Q^*} \left[ p^d(Q) - CMg(Q) \right] dQ
\label{eq:13.13} \tag{13.13} \]

onde $Q_t < Q^*$ é a quantidade transacionada sob a distorção.

A PPM é o custo de eficiência da intervenção — o valor que simplesmente desaparece, sem ser capturado por nenhum agente (nem consumidores, nem produtores, nem o governo). É o "dinheiro queimado" da economia — ninguém fica com ele.

!!! box-brasil "Brasil na Prática — O mercado de café: o Brasil como tomador de preço... que define o preço"

    **Contexto.** O Brasil é o maior produtor e exportador mundial de café, responsável por ~35% da produção global (~65 milhões de sacas em 2023/24). Apesar dessa dominância, o preço internacional do café é determinado pela bolsa de Nova York (ICE Futures US) — onde milhares de produtores, torrefadores e especuladores negociam contratos futuros.

    **Dados.** O preço do café arábica na ICE variou de ~US$ 1,00/lb (2019) a ~US$ 2,40/lb (2024) — uma volatilidade de 140% em 5 anos. Produtores brasileiros são, individualmente, **tomadores de preço** (Seção 13.1): nenhuma fazenda isolada afeta o preço mundial. Porém, coletivamente, uma geada no Sul de Minas ou uma seca no Cerrado pode mover o mercado inteiro — como em julho de 2021, quando geadas elevaram o preço 40% em semanas.

    **Conexão com a teoria.** O café é o exemplo brasileiro mais puro de mercado perfeitamente competitivo: produto homogêneo (dentro de cada tipo/qualidade), muitos produtores (>300 mil no Brasil), informação transparente (preços da bolsa em tempo real), livre entrada e saída. A lei do preço único (Seção 13.3) funciona aqui: o preço no porto de Santos converge para o preço em Nova York menos custos de transporte e câmbio. Quando o preço cai abaixo do custo médio, produtores menos eficientes saem do mercado — exatamente como prevê o modelo de longo prazo (Seção 13.5).

    **Fonte:** CONAB, *Acompanhamento da Safra Brasileira de Café*, 2024; ICE Futures US.

<iframe src="/micro-book/graficos/cap13/webr-bem-estar.html" title="WebR — Bem-Estar" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 13.5 — Excedente do consumidor, excedente do produtor e perda de peso morto.** Visualize como impostos e controles de preços alteram a divisão do excedente e geram perda de peso morto. O código calcula EC, EP e PPM para diferentes cenários.
</div>
