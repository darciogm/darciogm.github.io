# 13.2–13.4 Curtíssimo Prazo, Curto Prazo e Estática Comparativa

## 13.2 O Feirante e o Caminhão de Tomates: Curtíssimo Prazo {#132}

O primeiro horizonte temporal que consideramos é o mais restritivo — e o mais dramático: o **curtíssimo prazo**, também chamado de período de mercado. Imagine o feirante que chegou de madrugada com seu caminhão de tomates. O que está no caminhão é o que ele tem para vender; não há como plantar mais tomates até o fim da tarde. A quantidade ofertada é fixa, ponto final. A curva de oferta é perfeitamente inelástica (vertical):

\[
S = \bar{Q}
\]

Neste caso, o preço de equilíbrio é determinado exclusivamente pela demanda:

\[
p^* \text{ tal que } X(p^*) = \bar{Q}
\]

Se a demanda se desloca, todo o ajuste ocorre via preço — a quantidade permanece inalterada. Em mercados de bens perecíveis — como peixes frescos no Mercado Municipal de São Paulo, flores no Ceagesp, ou frutas tropicais nos mercados do Nordeste —, esta análise é particularmente relevante: o vendedor aceita qualquer preço que o mercado determine, pois a alternativa é perder a mercadoria. Marshall chamava esse horizonte de "período de mercado" e o considerava essencial para compreender a volatilidade de preços de bens não armazenáveis.

A implicação prática é imediata: quanto mais inelástica a oferta, maior a volatilidade de preços em resposta a choques de demanda. Isso explica por que os preços de hortaliças e legumes nos CEASAs brasileiros podem variar 50% ou mais de uma semana para outra — o tempo entre a colheita e a venda é curto demais para que a oferta se ajuste. Já para bens duráveis e estocáveis, como minério de ferro ou alumínio, a possibilidade de acumular ou liquidar estoques suaviza as flutuações de preço, aproximando o mercado de um horizonte de curto prazo mesmo em intervalos breves.

Explore como mudanças nos parâmetros de oferta e demanda afetam o equilíbrio de mercado. Ajuste os interceptos e inclinações para observar as variações no preço e quantidade de equilíbrio, bem como nos excedentes do consumidor (azul) e do produtor (verde).

<iframe src="../graficos/cap13/oferta-demanda.html" title="Figura 13.1 — Equilíbrio de oferta e demanda" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 13.1 — Equilíbrio de oferta e demanda.** Ajuste os interceptos e inclinações para observar as variações no preço e quantidade de equilíbrio, bem como nos excedentes do consumidor e do produtor.
</div>

---

## 13.3 Quando a Fábrica Liga o Segundo Turno: Curto Prazo {#133}

Passamos agora ao horizonte de **curto prazo**, em que as firmas finalmente ganham algum espaço para respirar: podem variar a quantidade produzida contratando mais trabalhadores ou comprando mais matéria-prima, embora o capital continue fixo e o número de firmas no mercado seja dado. Se o curtíssimo prazo era um feirante preso ao seu caminhão, o curto prazo é uma fábrica que pode ligar mais turnos — mas não pode construir um galpão novo da noite para o dia. É nesse horizonte que a análise de equilíbrio parcial marshalliano se manifesta em sua forma mais característica.

### Equilíbrio parcial marshalliano

No curto prazo, a oferta de cada firma é dada por sua curva de custo marginal acima do custo variável médio mínimo — o ponto de fechamento derivado no Capítulo 12:

\[
S_j(p) = \begin{cases} q_j \text{ tal que } CMg_j(q_j) = p, & \text{se } p \geq CVMe_{\min} \\ 0, & \text{se } p < CVMe_{\min} \end{cases}
\label{eq:13.3} \tag{13.3} \]

Recordemos a lógica: se o preço cai abaixo do custo variável médio mínimo, a firma não consegue sequer cobrir seus custos variáveis e prefere encerrar a produção temporariamente (mantendo a planta, mas produzindo zero). Acima desse limiar, a firma produz onde \(p = CMg\), a condição de primeira ordem para maximização de lucro em concorrência perfeita.

A oferta de mercado de curto prazo é a soma horizontal das ofertas individuais das \(m\) firmas:

\[
S(p) = \sum_{j=1}^{m} S_j(p)
\label{eq:13.4} \tag{13.4} \]

Note que a oferta de mercado pode apresentar descontinuidades nos preços correspondentes aos pontos de fechamento de firmas individuais: à medida que o preço sobe, firmas que estavam inativas passam a produzir, gerando "saltos" na oferta agregada. Na prática, com um número grande de firmas heterogêneas, esses saltos se tornam imperceptíveis e a curva de oferta de mercado é essencialmente contínua.

!!! definition "Equilíbrio de curto prazo"
    O **equilíbrio competitivo de curto prazo** ocorre ao preço \(p^*\) tal que a quantidade demandada pelo mercado iguala a quantidade ofertada:

    \[
    X(p^*) = S(p^*)
    \label{eq:13.5} \tag{13.5} \]

    O equilíbrio definido pela equação $\eqref{eq:13.5}$ garante que, a esse preço, nenhum comprador ou vendedor individual tem incentivo para alterar seu comportamento. Os consumidores compram exatamente a quantidade que desejam, e cada firma produz a quantidade que maximiza seu lucro.

!!! idea "Intuição Econômica"
    **Em uma frase:** O preço de equilíbrio é aquele em que ninguém está frustrado — todo mundo que quer comprar a esse preço consegue, e todo mundo que quer vender encontra comprador.

    **Pense assim:** Na feira livre do seu bairro, se o quilo do tomate está caro demais, sobra tomate na barraca e o feirante baixa o preço. Se está barato demais, falta tomate e os consumidores competem entre si, puxando o preço para cima. O equilíbrio é o ponto em que a pilha de tomates na barraca "dá certo" com a fila de compradores — sem sobra nem falta.

    **Por que isso importa:** A formação de preços por oferta e demanda é o mecanismo central que coordena decisões descentralizadas de milhões de agentes — e entender esse processo é essencial para avaliar qualquer intervenção de política pública nos mercados.

### Estabilidade do equilíbrio

Encontrar o equilíbrio não basta: precisamos garantir que, se o mercado for perturbado, as forças econômicas o reconduzirão ao ponto de equilíbrio. O equilíbrio marshalliano é **estável** quando, a preços acima do equilíbrio, há excesso de oferta (pressionando o preço para baixo) e, a preços abaixo, há excesso de demanda (pressionando o preço para cima). Formalmente, a condição de estabilidade walrasiana requer:

\[
\frac{dX}{dp} - \frac{dS}{dp} < 0
\label{eq:13.6} \tag{13.6} \]

o que é satisfeito sempre que a demanda é negativamente inclinada e a oferta é positivamente inclinada — o caso "bem-comportado" que predomina na maioria dos mercados. Note, porém, que a estabilidade não é automática: se a oferta tiver inclinação negativa (como pode ocorrer em mercados de trabalho com *backward-bending supply*) ou se a demanda tiver inclinação positiva (bens de Giffen ou Veblen), a condição pode ser violada e o equilíbrio pode ser instável.

Marshall propôs um critério alternativo de estabilidade, baseado em quantidades: o equilíbrio é estável se, quando a quantidade está abaixo do equilíbrio, o preço de demanda excede o preço de oferta (incentivando os produtores a expandir). Os dois critérios coincidem quando as curvas têm inclinações convencionais, mas podem divergir em casos patológicos — uma sutileza que ilustra a riqueza da análise marshalliana.

O equilíbrio de curto prazo, contudo, não é a palavra final: ele nos diz o que acontece *dado o número de firmas*. No longo prazo, esse número se ajusta — e é esse ajuste que nos conduz ao próximo horizonte temporal.

---

## 13.4 E Se o Mundo Mudar? Estática Comparativa {#134}

Determinado o equilíbrio, a pergunta natural — e a que todo economista vive respondendo em entrevistas, relatórios e reuniões de diretoria — é: *e se as condições mudarem?* Se a renda dos consumidores cresce, se o preço de um insumo se eleva, se uma nova tecnologia reduz os custos de produção — como o preço e a quantidade de equilíbrio se ajustam? A **estática comparativa** é a ferramenta que nos permite responder a essas perguntas de forma rigorosa, comparando dois equilíbrios: o "antes" e o "depois". O termo "estática" indica que não analisamos a viagem entre os dois estados, apenas tiramos uma foto de cada posição de repouso — uma abordagem que, apesar de suas limitações, é o canivete suíço do microeconomista aplicado.

A estática comparativa tem raízes profundas na economia. Paul Samuelson (1915–2009), em *Foundations of Economic Analysis* (1947), formalizou o método e mostrou que previsões testáveis em economia frequentemente derivam da combinação de condições de equilíbrio com hipóteses de estabilidade — o chamado "princípio de correspondência".

### Deslocamentos de oferta e demanda

A análise de estática comparativa examina como o equilíbrio muda em resposta a choques exógenos. Considere o equilíbrio definido implicitamente por:

\[
X(p, \alpha) = S(p, \beta)
\label{eq:13.7} \tag{13.7} \]

onde \(\alpha\) é um parâmetro de demanda (por exemplo, renda dos consumidores, preço de um bem substituto, ou uma mudança de preferências) e \(\beta\) é um parâmetro de oferta (por exemplo, custo de um insumo, nível tecnológico, ou condição climática).

Diferenciando totalmente a equação $\eqref{eq:13.7}$:

\[
\frac{\partial X}{\partial p} dp + \frac{\partial X}{\partial \alpha} d\alpha = \frac{\partial S}{\partial p} dp + \frac{\partial S}{\partial \beta} d\beta
\]

Rearranjando para isolar \(dp\):

\[
\frac{dp}{d\alpha} = \frac{\partial X / \partial \alpha}{\partial S / \partial p - \partial X / \partial p} > 0
\label{eq:13.8} \tag{13.8} \]

se um aumento em \(\alpha\) desloca a demanda para a direita (\(\partial X / \partial \alpha > 0\)) e as curvas têm inclinações convencionais (demanda decrescente e oferta crescente no preço).

Analogamente, um aumento no custo de insumos (\(\beta\)):

\[
\frac{dp}{d\beta} = \frac{-\partial S / \partial \beta}{\partial S / \partial p - \partial X / \partial p} > 0
\]

se o aumento em \(\beta\) reduz a oferta (\(\partial S / \partial \beta < 0\)).

Para fixar a intuição, considere dois exemplos concretos do contexto brasileiro. Primeiro, um choque de demanda: o programa de biocombustíveis brasileiro (RenovaBio) aumentou a demanda por etanol de cana-de-açúcar. Nos termos do modelo, \(\alpha\) representa a intensidade da política de mistura obrigatória; um aumento em \(\alpha\) desloca a demanda para a direita, elevando o preço de equilíbrio do etanol e a quantidade transacionada. Segundo, um choque de oferta: geadas severas no Paraná em 2021 devastaram cafezais, deslocando a curva de oferta de café para a esquerda. O resultado foi uma elevação acentuada do preço do café (o indicador Cepea/Esalq subiu mais de 80% em 12 meses) com redução na quantidade produzida — exatamente o que a equação $\eqref{eq:13.8}$ prevê.

!!! note "Magnitude dos efeitos"
    A magnitude da variação de preço depende das elasticidades relativas de oferta e demanda. Quanto mais inelástica a demanda (ou a oferta), maior a variação de preço decorrente de um deslocamento da outra curva. Esse resultado é de importância prática imensa: no mercado de commodities agrícolas, onde tanto a oferta quanto a demanda são inelásticas no curto prazo, pequenos choques de produção (uma seca, uma praga) podem causar enormes flutuações de preço. Veremos na seção "Pesquisa em Ação" que Roberts e Schlenker (2013) quantificam precisamente esse fenômeno para milho, soja, trigo e arroz.

A estática comparativa do curto prazo toma o número de firmas como dado. No longo prazo, porém, esse número se torna endógeno: firmas entram quando há lucro e saem quando há prejuízo. Essa dinâmica de entrada e saída conduz à análise de longo prazo, nosso próximo tópico.

!!! box-mundo "Box Mundo 13.1 — O modelo cobweb e a volatilidade agrícola: evidências dos mercados de milho (EUA) e trigo (UE)"

    **Contexto:** A estática comparativa pressupõe ajuste instantâneo ao novo equilíbrio, mas em mercados agrícolas a oferta responde com defasagem — os produtores decidem quanto plantar *antes* de conhecer o preço de venda. Essa defasagem pode gerar ciclos de preço, formalizados no **modelo cobweb** (teia de aranha) por Mordecai Ezekiel (1938). O modelo prevê que, se a oferta é mais elástica que a demanda, os preços oscilam de forma explosiva; se menos elástica, convergem ao equilíbrio; se igualmente elásticas, oscilam perpetuamente.

    **Dados:** Nos Estados Unidos, o milho apresentou volatilidade de preços consistente com dinâmicas cobweb: segundo o USDA (Economic Research Service), o preço do *bushel* de milho oscilou entre US$ 3,36 (2019) e US$ 6,89 (2022), com reversões parciais nos anos seguintes. Na União Europeia, dados do Eurostat mostram que o preço do trigo mole variou entre €175/t (2020) e €382/t (maio de 2022), caindo para €215/t em 2023 — um padrão de *overshoot* e correção que o modelo cobweb ajuda a explicar. Roberts e Schlenker (2013), discutidos na seção "Pesquisa em Ação", estimam elasticidades de oferta e demanda de curto prazo muito baixas (entre 0,05 e 0,15), o que implica alta sensibilidade dos preços a choques e potencial para ciclos cobweb amortecidos.

    **Análise:** A dinâmica cobweb ilustra os limites da estática comparativa convencional: quando a oferta responde com defasagem, a trajetória entre equilíbrios pode ser tão importante quanto os equilíbrios em si. O modelo também ajuda a compreender por que políticas de estoques reguladores (como a PGPM no Brasil ou a *Commodity Credit Corporation* nos EUA) podem reduzir a volatilidade ao suavizar a oferta intertemporal. A convergência ou divergência dos ciclos depende criticamente da razão entre as elasticidades de oferta e demanda — um resultado que conecta diretamente a estática comparativa da equação $\eqref{eq:13.8}$ com a dinâmica de ajuste.

    **Fonte:** Ezekiel, M. (1938). "The Cobweb Theorem". *Quarterly Journal of Economics*, 52(2), 255–280; USDA-ERS, Feed Grains Database; Eurostat, Agricultural Price Statistics; Roberts & Schlenker (2013), *AER*.

<iframe src="../graficos/cap13/webr-estatica-comparativa.html" title="WebR — Estática Comparativa" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 13.2 — Estática comparativa: choques de oferta e demanda.** Simulação baseada na questão ANPEC 2023 (mercado de petróleo). O código calcula os efeitos de um embargo (choque de oferta) e de novas tecnologias (choque de demanda) sobre preço e quantidade. Altere os parâmetros para explorar cenários diferentes.
</div>
