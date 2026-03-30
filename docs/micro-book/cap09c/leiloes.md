# Quem Dá Mais? Leilões de Valor Privado

## 9c.3 Quem Dá Mais? Leilões de Valor Privado

Agora a aplicação mais espetacular dos jogos bayesianos: **leilões**. Quando a Petrobras disputa um bloco do pré-sal, ela sabe quanto vale para *ela* — mas não faz ideia de quanto vale para a Shell ou a TotalEnergies. Cada licitante tem informação privada sobre seu próprio valor e precisa decidir quanto oferecer sem ver as cartas dos adversários. Um jogo bayesiano puro, com bilhões de dólares na mesa. Não por acaso, leilões são o campo onde a teoria dos jogos provou ser mais útil — e mais lucrativa — na prática.

A teoria moderna de leilões foi inaugurada por Vickrey (1961), que demonstrou a propriedade de revelação de verdade no leilão de segundo preço e estabeleceu as bases para a análise de bem-estar. Duas décadas depois, Myerson (1981) e Riley e Samuelson (1981) completaram o edifício com a derivação do leilão ótimo e o teorema da equivalência de receita. William Vickrey dividiu o Nobel de 1996 com James Mirrlees precisamente por essas contribuições — e Roger Myerson recebeu o Nobel de 2007 (junto com Hurwicz e Maskin) pelo desenho de mecanismos. Raramente uma área da teoria econômica gerou tanto reconhecimento tão rápido, o que reflete a importância prática imediata dos resultados.

### Modelo básico: IPV (Valores Privados Independentes)

\(N\) licitantes com valores \(v_i\) sorteados independentemente de \(F\) no intervalo \([0, \bar{v}]\). Cada licitante conhece \(v_i\) mas não os valores dos demais. O modelo IPV captura situações em que o valor do objeto é puramente subjetivo — como em leilões de arte, onde cada colecionador tem uma apreciação pessoal pelo quadro que não depende do que os outros acham. A independência entre os valores significa que o fato de outro licitante valorizar muito o objeto não informa nada sobre seu próprio valor — uma hipótese que será relaxada quando discutirmos valores comuns e afiliados.

O modelo IPV é a bancada de trabalho (*workhorse*) da teoria de leilões porque permite derivar resultados limpos e elegantes. Quatro formatos de leilão merecem atenção especial, pois constituem os "blocos fundamentais" a partir dos quais formatos mais complexos são construídos:

1. **Leilão inglês (ascendente):** O preço sobe continuamente até que reste apenas um licitante. O vencedor paga o preço no qual o penúltimo desistiu — que equivale, sob IPV, ao segundo maior valor.

2. **Leilão holandês (descendente):** O preço começa alto e desce até que alguém aceite. O vencedor paga o preço que aceitou — equivalente, estrategicamente, ao leilão de primeiro preço em envelope fechado.

3. **Leilão de primeiro preço (envelope fechado):** Cada licitante submete um lance em envelope fechado. O maior lance ganha e paga o próprio lance.

4. **Leilão de segundo preço / Vickrey (envelope fechado):** Cada licitante submete um lance em envelope fechado. O maior lance ganha, mas paga o *segundo* maior lance.

**Leilão de segundo preço (Vickrey):** O licitante com o maior lance ganha e paga o *segundo* maior lance. Lançar \(b_i = v_i\) é **estratégia fracamente dominante** — não depende das crenças sobre os outros.

!!! proof "Demonstração: Verdade é ótimo no leilão de Vickrey"
    Seja \(b_i = v_i\) o lance do jogador \(i\) e \(b_{(1)}^{-i}\) o maior lance dos demais. Se \(b_i > b_{(1)}^{-i}\), \(i\) ganha e paga \(b_{(1)}^{-i}\), obtendo \(v_i - b_{(1)}^{-i} \geq 0\). Suponha que \(i\) desvie:

    - **Lance acima** (\(b_i' > v_i\)): Ganha com mais frequência, mas nos casos extras paga \(b_{(1)}^{-i} > v_i\) — lucro negativo.
    - **Lance abaixo** (\(b_i' < v_i\)): Perde quando \(b_i' < b_{(1)}^{-i} < v_i\) — desiste de lucro positivo.

    Portanto, \(b_i = v_i\) é fracamente dominante. \(\blacksquare\)

No gráfico interativo abaixo, experimente o leilão de Vickrey: ajuste seu valor, seu lance e o lance rival. Observe que o payoff depende do lance rival, mas a estratégia ótima (lançar o valor) não.

<iframe src="/micro-book/graficos/cap09c/leilao-segundo-preco.html" title="Figura 9c.2 — Leilão de Segundo Preço (Vickrey): Verdade como Estratégia Dominante" class="graph-iframe" style="height:520px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9c.2 — Leilão de Vickrey.** O payoff (azul) é uma função degrau no lance rival: ganha \(v_i - b_{-i}\) se \(b_i > b_{-i}\), zero caso contrário. Como o payoff ao ganhar não depende de \(b_i\), lançar \(b_i = v_i\) é sempre (fracamente) ótimo.
</div>

No leilão de Vickrey, portanto, a verdade é ótima independentemente do que os outros fazem. A elegância dessa propriedade não pode ser subestimada: o licitante não precisa se preocupar com quantos concorrentes tem, quais são suas distribuições de valor, ou se eles são racionais. A estratégia ótima é a mesma em todos os cenários — lançar o valor verdadeiro. Essa robustez é a razão pela qual o leilão de segundo preço é o ponto de partida natural para a teoria. Mas e quando o vencedor paga seu *próprio* lance? Nesse caso, lançar o valor verdadeiro seria desastroso, e a estratégia ótima exige *sombreamento*.

**Leilão de primeiro preço:** O vencedor paga seu próprio lance. BNE simétrico com \(v_i \sim U[0, \bar{v}]\):

\[
b(v) = v \cdot \frac{N-1}{N}
\label{eq:9c.3} \tag{9c.3}
\]

Pela equação $\eqref{eq:9c.3}$, cada licitante "sombreia" seu lance por um fator \((N-1)/N\). Com 2 licitantes, o lance é metade do valor; com muitos, converge para o valor verdadeiro. Com mais concorrentes, o risco de perder o leilão aumenta e o sombreamento diminui — no limite, com infinitos licitantes, cada um lança (quase) seu valor verdadeiro.

A intuição por trás do sombreamento é fundamental: no leilão de primeiro preço, o licitante enfrenta um *trade-off* entre a probabilidade de ganhar e o lucro condicional à vitória. Lançar mais alto aumenta a chance de ganhar, mas reduz o ganho se vencer. A fórmula do BNE simétrico resolve esse trade-off de forma ótima: o sombreamento ótimo é exatamente proporcional ao valor, com fator \((N-1)/N\) que cresce em \(N\). Essa elegância matemática reflete uma lógica econômica profunda — o licitante "compra" probabilidade de vitória ao custo de lucro esperado, e o equilíbrio iguala os benefícios marginais de ambos os lados.

Para derivar a equação $\eqref{eq:9c.3}$, considere o problema do licitante \(i\) com valor \(v\) que escolhe o lance \(b\), dado que os demais \(N-1\) licitantes usam a estratégia crescente \(\beta(\cdot)\). A probabilidade de ganhar é \(\Pr(\beta(v_j) < b \; \forall j \neq i) = F(\beta^{-1}(b))^{N-1}\). Com \(F\) uniforme em \([0, \bar{v}]\), o problema se simplifica consideravelmente:

\[
\max_b \; (v - b) \cdot \left(\frac{\beta^{-1}(b)}{\bar{v}}\right)^{N-1}
\]

No equilíbrio simétrico, \(\beta^{-1}(b) = v\) quando \(b = \beta(v)\). A condição de primeira ordem, após alguma álgebra, produz a equação diferencial cuja solução (com condição de fronteira \(\beta(0) = 0\)) é exatamente $\eqref{eq:9c.3}$. A derivação completa para distribuições gerais aparece no Exercício 9c.8.

**Receita esperada:** Com \(v_i \sim U[0, 1]\):

\[
E[\text{Receita}] = \frac{N-1}{N+1}
\label{eq:9c.4} \tag{9c.4}
\]

<iframe src="/micro-book/graficos/cap09c/leilao-primeiro-preco.html" title="Figura 9c.2 — Leilao de primeiro preco com N licitantes" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9c.2 — Leilão de primeiro preço com N licitantes.** A função de lance ótimo \(b(v) = v \cdot (N-1)/N\) mostra o sombreamento (*bid shading*): cada licitante lança abaixo do seu valor verdadeiro. Ajuste \(N\) para ver como o sombreamento diminui com mais concorrentes.
</div>

### Teorema da Equivalência de Receita

Os leilões de primeiro e segundo preço parecem radicalmente distintos. No primeiro preço, o vencedor paga seu próprio lance (sombreado); no segundo preço, paga o lance do competidor mais próximo (sem sombreamento). As receitas deveriam diferir, certo? Surpreendentemente, não: sob condições bastante gerais, a receita esperada é *idêntica* em todos os formatos padrão.

!!! theorem "Revenue Equivalence Theorem (Myerson, 1981; Riley e Samuelson, 1981)"
    Com licitantes simétricos, IPV, risco-neutros, e qualquer mecanismo que (i) atribui o objeto ao licitante com maior valor e (ii) dá payoff zero ao tipo mais baixo, a **receita esperada** do leiloeiro é a mesma.

    Consequência: leilão de 1º preço, 2º preço, inglês e holandês geram a mesma receita esperada, como confirma a equação $\eqref{eq:9c.4}$.

A intuição por trás da equivalência de receita é uma das mais elegantes da microeconomia. Considere dois leilões que satisfazem as condições do teorema. Em ambos, o objeto vai para quem tem o maior valor — portanto, a alocação é idêntica. Agora, o payoff esperado do licitante com o menor valor possível (\(v = 0\)) é zero em ambos os formatos (condição de participação). Pelo *envelope theorem*, o payoff esperado de um licitante com valor \(v\) é completamente determinado pela probabilidade de vencer — que é \(F(v)^{N-1}\) em ambos os formatos (pois a alocação é eficiente). Assim:

\[
\Pi(v) = \int_0^v F(t)^{N-1} \, dt
\label{eq:9c.5} \tag{9c.5}
\]

Como o excedente total (valor do vencedor) é o mesmo e os payoffs dos licitantes são os mesmos, a receita do leiloeiro — que é a diferença — também deve ser a mesma. O argumento formal é desenvolvido no Exercício 9c.8(c), mas a lógica é transparente: se a alocação e os payoffs dos agentes são fixados, o "resíduo" para o principal (leiloeiro) está determinado.

No gráfico interativo abaixo, compare visualmente as funções de lance dos dois formatos e observe que a receita esperada é idêntica — apesar de os lances serem completamente diferentes.

<iframe src="/micro-book/graficos/cap09c/receita-equivalente.html" title="Figura 9c.3 — Equivalência de Receita: 1º Preço vs 2º Preço" class="graph-iframe" style="height:540px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9c.3 — Equivalência de Receita.** Painel superior: funções de lance — no 1º preço (vermelho), o lance é sombreado; no 2º preço (azul), coincide com o valor. Painel inferior: a receita esperada \(E[Rev] = \bar{v}(N-1)/(N+1)\) é a mesma em ambos os formatos.
</div>

!!! note "Quando a equivalência falha"
    A equivalência de receita falha com: (i) aversão ao risco (1º preço gera mais receita); (ii) assimetria entre licitantes; (iii) valores afiliados/comuns; (iv) colusão. Nesses casos, o formato do leilão importa — e o desenho ótimo de mecanismo (Myerson, 1981) se torna relevante.

Cada uma dessas violações merece um comentário. A **aversão ao risco** faz com que licitantes no primeiro preço sombreiem *menos* seus lances — preferem pagar um pouco mais para reduzir o risco de perder, aumentando a receita. A **assimetria** — quando licitantes têm distribuições de valor diferentes — quebra a condição de que a alocação eficiente depende apenas do formato; licitantes mais "fracos" tendem a lançar mais agressivamente no primeiro preço, e o efeito líquido sobre a receita é ambíguo. Os **valores afiliados** introduzem uma ligação informacional entre os valores dos licitantes: quando os valores são correlacionados, o *linkage principle* de Milgrom e Weber (1982) mostra que leilões que revelam mais informação (como o inglês) geram mais receita do que leilões de envelope fechado. Por fim, a **colusão** — em que licitantes coordenam para suprimir a competição — é mais facilmente sustentável em certos formatos do que em outros, como discutiremos no Box Brasil sobre cartéis.

!!! warning "⚠️ Erro Comum"
    **Atribuir a "maldição do vencedor" a má sorte, quando na verdade é um problema de seleção adversa.**

    Um erro comum ao estudar leilões de valor comum é pensar que a "maldição do vencedor" é apenas um desvio comportamental ou resultado de irracionalidade. Na verdade, trata-se de um **problema estrutural de seleção adversa**: vencer um leilão de valor comum revela que sua estimativa era a mais alta entre todos os participantes, o que é uma *má notícia* sobre o valor real do objeto.

    **Erro típico:** "Minha estimativa é R$ 120 milhões, então vou lançar R$ 120 milhões." — Errado! Se você ganha, significa que todos os outros estimaram *menos* que R$ 120 milhões. O valor real provavelmente é menor.

    **Correção:** O lance ótimo condiciona na informação revelada pela vitória: \(b^* = E[V \mid s_i = \max_j s_j]\), que é *sempre menor* que \(s_i\) quando há mais de um licitante. A diferença \(s_i - b^*\) cresce com o número de concorrentes — mais licitantes significa mais seleção adversa.

    **Aplicação brasileira:** Em licitações de obras públicas, empresas que ignoram a maldição do vencedor frequentemente ganham contratos que se tornam prejudiciais, levando a renegociações ou abandono de obras — um problema crônico na infraestrutura nacional.

### Leilões de valor comum e a maldição do vencedor

Até aqui, assumimos valores privados. Em muitos contextos, porém, o objeto tem um valor *comum* que ninguém conhece com certeza — em leilões de petróleo, por exemplo, o volume de óleo é o mesmo para qualquer empresa, mas cada uma tem sua estimativa. Essa mudança de premissa introduz um fenômeno perverso.

No modelo de valor comum puro, o objeto tem um valor \(V\) desconhecido, e cada licitante \(i\) observa um sinal ruidoso \(s_i = V + \varepsilon_i\), onde \(\varepsilon_i\) são erros de estimação independentes com média zero. A diferença crucial em relação ao modelo IPV é que agora a informação dos *outros* licitantes é relevante para o *próprio* valor — se todos os concorrentes estimaram valores baixos, é provável que o verdadeiro \(V\) seja baixo, independentemente da estimativa individual de \(i\).

A maldição do vencedor emerge da seguinte lógica: condicional a vencer, o licitante descobre (implicitamente) que sua estimativa era a mais alta entre todas. Como os erros são simétricos, a estimativa mais alta tende a ser a mais *otimista* — ou seja, aquela que mais sobreestimou \(V\). O licitante racional deve, portanto, *ajustar seu lance para baixo*, levando em conta a informação adversa contida na vitória.

Formalmente, o lance ótimo no modelo de valor comum satisfaz:

\[
b(s_i) = E[V \mid s_i, \; s_i = \max_j s_j]
\label{eq:9c.6} \tag{9c.6}
\]

A equação $\eqref{eq:9c.6}$ mostra que o licitante deve condicionar não apenas em seu sinal, mas no *evento de vencer* — ou seja, no fato de que seu sinal é o maior. Essa expectativa condicional é sempre menor que \(s_i\) quando há dois ou mais licitantes, e a diferença cresce com \(N\). A magnitude do ajuste depende da variância do ruído e do número de competidores: mais licitantes e mais ruído exigem sombreamento mais agressivo.

!!! idea "Intuição Econômica"
    **Em uma frase:** Em leilões de valor comum, ganhar é uma má notícia — significa que você estimou o valor mais alto que todos.

    **Pense assim:** Num leilão de direitos de exploração de petróleo (como os da ANP), o bloco vale o mesmo para todos, mas cada empresa tem uma estimativa diferente do volume de óleo. Quem ganha é quem estimou mais. Se todos cometem erros simétricos de estimação, o vencedor é o mais otimista — e provavelmente pagou demais.

    **Solução:** Licitantes racionais *sombreiam* seus lances adicionalmente para corrigir a maldição. A magnitude do ajuste depende do número de concorrentes: mais licitantes → mais seleção adversa → mais sombreamento.

    **Evidência:** Capen, Clapp e Campbell (1971) documentaram que empresas de petróleo no Golfo do México sistematicamente superestimaram o valor dos blocos — a maldição do vencedor em ação.

A evidência empírica e experimental sobre a maldição do vencedor é robusta e consistente. Em laboratório, Kagel e Levin (1986) mostraram que participantes inexperientes sistematicamente lançam acima do ajuste ótimo em leilões de valor comum, obtendo lucros negativos em média. Apenas após repetida experiência — e, crucialmente, após sofrerem perdas — os licitantes aprendem a ajustar seus lances. No campo, a documentação de Capen, Clapp e Campbell (1971) sobre os leilões de petróleo offshore nos EUA foi seminal: empresas que venceram leilões no Golfo do México obtiveram retornos sistematicamente abaixo do custo de capital, evidência direta de que não ajustavam suficientemente para a maldição do vencedor.

!!! box-mundo "Box Mundo 9c.1 — Desenho de leilões de espectro: o Nobel de 2020 e as lições dos leilões da FCC"

    **Contexto:** Em outubro de 2020, o Prêmio Nobel de Economia foi concedido a Paul Milgrom e Robert Wilson "por melhorias na teoria de leilões e invenções de novos formatos de leilão". A distinção reconheceu não apenas contribuições teóricas fundamentais — como o modelo de valores afiliados de Milgrom e Weber (1982) e a formalização da maldição do vencedor por Wilson (1969, 1977) — mas, sobretudo, a aplicação prática dessas ideias ao desenho de leilões de espectro eletromagnético pela Federal Communications Commission (FCC) dos Estados Unidos. Antes de 1994, a FCC alocava licenças de espectro por *beauty contests* (processos administrativos discricionários) e loterias — métodos que não revelavam informação sobre valores e geravam alocações ineficientes, além de oportunidades de rent-seeking. A transição para leilões competitivos, informada pela teoria de Milgrom e Wilson, transformou radicalmente a alocação de um dos recursos públicos mais valiosos do mundo.

    O desafio técnico era formidável. Licenças de espectro são complementares: uma operadora que detém frequências adjacentes em regiões geográficas contíguas obtém valor substancialmente maior do que a soma das partes. Essa complementaridade cria o *problema da exposição* — em leilões separados para cada licença, um licitante pode acabar comprando parte de um pacote desejado a preços inflados, sem garantia de obter as peças restantes. Milgrom, em colaboração com Wilson e outros economistas, desenhou o *Simultaneous Multiple Round Auction* (SMRA): todas as licenças são leiloadas simultaneamente em rodadas ascendentes, permitindo que os licitantes ajustem seus lances entre licenças à medida que os preços relativos se revelam. Posteriormente, Milgrom desenvolveu o *Combinatorial Clock Auction* (CCA) e o *incentive auction* (2016–17), que simultaneamente realocou espectro de TV para uso de banda larga — um "leilão reverso" para comprar licenças de emissoras combinado com um "leilão direto" para vendê-las a operadoras de telecomunicações.

    **Dados:** Desde 1994, os leilões de espectro da FCC arrecadaram mais de US$ 230 bilhões em receita para o Tesouro americano. O leilão de espectro AWS-3 (2015) arrecadou US$ 44,9 bilhões; o incentive auction (Leilão 1000–1002, 2016–17) arrecadou US$ 19,8 bilhões e liberou 84 MHz de espectro para banda larga 5G. Na Europa, os leilões de espectro 5G realizados entre 2018 e 2022 geraram resultados heterogêneos: a Itália arrecadou €6,6 bilhões (2018), a Alemanha €6,5 bilhões (2019), mas a Espanha apenas €438 milhões (2018) — diferenças atribuídas em grande parte ao desenho do leilão (número de lotes, preço de reserva, obrigações de cobertura). Cramton (2013) documentou que leilões mal desenhados — como o leilão 3G do Reino Unido em 2000 (£22,5 bilhões, com vencedores que subsequentemente enfrentaram dificuldades financeiras) e o fiasco do leilão neozelandês de 1990 (formato de segundo preço que gerou receita mínima) — demonstram que a qualidade do desenho de mecanismo importa tanto quanto a competição entre licitantes.

    **Análise:** Os leilões de espectro são a aplicação mais direta e espetacular dos conceitos desenvolvidos neste capítulo. O formato SMRA de Milgrom e Wilson resolve simultaneamente três problemas teóricos: (i) a maldição do vencedor (leilões ascendentes com informação revelada reduzem o risco de superestimação, pelo *linkage principle* de Milgrom e Weber); (ii) complementaridade entre licenças (licitação simultânea permite ajuste entre mercados); e (iii) colusão (regras de atividade e lances mínimos dificultam sinalização entre licitantes). O Teorema da Equivalência de Receita, demonstrado na seção anterior, pressupõe licitantes simétricos e valores privados independentes — condições que *não* valem nos leilões de espectro, onde licitantes são assimétricos (incumbentes vs. entrantes) e os valores são afiliados (o valor de uma licença depende do valor das licenças adjacentes). É precisamente por essas violações que o formato do leilão importa e que o desenho de mecanismos — a "engenharia reversa" do jogo desenvolvida na Seção 9c.4 — tem consequências econômicas da ordem de dezenas de bilhões de dólares. O leilão brasileiro de 5G da ANATEL (2021, R$ 47,2 bilhões) inspirou-se diretamente nos formatos desenvolvidos por Milgrom e Wilson, adaptados ao contexto regulatório brasileiro com obrigações de cobertura em áreas rurais.

    **Fonte:** Milgrom, Paul (2004). *Putting Auction Theory to Work*. Cambridge University Press. Cramton, Peter (2013). "Spectrum Auction Design." *Review of Industrial Organization*, 42(2), 161–190. The Royal Swedish Academy of Sciences (2020). "Improvements to Auction Theory and Inventions of New Auction Formats." Scientific Background on the Sveriges Riksbank Prize in Economic Sciences.

!!! box-mundo "Box Mundo 9c.2 — O leilão de anúncios do Google: a Generalized Second Price Auction"

    **Contexto:** Quando você digita uma busca no Google, os anúncios que aparecem no topo da página não são escolhidos arbitrariamente — são alocados por um leilão que ocorre em milissegundos, repetido bilhões de vezes por dia. O mecanismo utilizado pelo Google (e, com variações, pelo Meta, Microsoft Bing e outras plataformas) é a *Generalized Second Price Auction* (GSP), um formato que combina elementos da teoria de leilões com as peculiaridades dos mercados de publicidade online. O GSP é, possivelmente, o mecanismo econômico mais frequentemente executado na história: o Google realiza centenas de bilhões de leilões por ano, alocando posições de anúncios em páginas de busca, vídeos do YouTube e aplicativos.

    **Dados:** Em 2024, a receita de publicidade do Alphabet (controladora do Google) atingiu aproximadamente US$ 265 bilhões, representando cerca de 27% do mercado global de publicidade digital. O leilão GSP aloca múltiplas posições de anúncio em cada página de resultados: a posição mais alta gera mais cliques (e portanto mais valor para o anunciante), mas o anunciante paga por clique o lance do próximo anunciante abaixo. Edelman, Ostrovsky e Schwarz (2007) e Varian (2007) — este último então economista-chefe do Google — formalizaram simultaneamente o modelo teórico da GSP e mostraram que, embora o GSP *não* seja estrategicamente equivalente ao mecanismo VCG (que garantiria revelação de verdade), seus equilíbrios sob certas condições geram receitas idênticas às do VCG. O Google migrou parcialmente para um sistema baseado em VCG com o chamado *Enhanced Cost Per Click* e, mais recentemente, para leilões automatizados com aprendizado de máquina (*smart bidding*), que estimam o valor de conversão de cada impressão em tempo real.

    **Análise:** A GSP é um caso fascinante em que a teoria de leilões encontra a engenharia de software. O mecanismo não é de segundo preço puro no sentido de Vickrey — trata-se de uma *generalização* para múltiplos objetos (posições) onde cada vencedor paga o lance do próximo. No leilão de Vickrey para um único objeto, lançar o valor verdadeiro é estratégia dominante. Na GSP, isso *não* vale: licitantes podem querer lançar abaixo de seus valores verdadeiros para pagar menos por uma posição inferior que ainda gera lucro positivo. Edelman, Ostrovsky e Schwarz (2007) identificaram o conceito de *equilíbrio localmente invejoso* (*locally envy-free equilibrium*), no qual nenhum anunciante preferiria trocar de posição e lance com o anunciante imediatamente acima. Esse conceito de equilíbrio refinado, específico para a GSP, produz receitas equivalentes às do mecanismo VCG — uma instância notável da equivalência de receita em um contexto multi-objeto. A transição recente para leilões de primeiro preço em publicidade programática (liderada pelo Google em 2019) ilustra que mesmo mercados digitais maduros continuam redesenhando seus mecanismos de alocação à luz da teoria.

    **Para refletir:** Se o Google adotasse um leilão de primeiro preço puro (em vez da GSP), como os anunciantes ajustariam seus lances? A equivalência de receita se manteria nesse contexto multi-objeto com valores assimétricos e orçamentos limitados?

    **Fonte:** Edelman, Benjamin, Michael Ostrovsky, e Michael Schwarz (2007). "Internet Advertising and the Generalized Second-Price Auction." *American Economic Review*, 97(1), 242–259. Varian, Hal R. (2007). "Position Auctions." *International Journal of Industrial Organization*, 25(6), 1163–1178.

!!! box-mundo "Box Mundo 9c.3 — Leilões de espectro 3G/4G/5G: bilhões de dólares e desenho de mecanismos na prática"

    **Contexto:** Os leilões de espectro de telecomunicações são o maior campo de aplicação prática da teoria de leilões, com transações que totalizam centenas de bilhões de dólares globalmente. Cada geração de tecnologia móvel — 3G, 4G e 5G — gerou uma nova rodada de leilões com desafios de desenho de mecanismos progressivamente mais complexos. A experiência acumulada ao longo de três décadas ilustra como a teoria econômica se traduziu em bilhões de dólares de diferença na receita pública, dependendo da qualidade do desenho institucional.

    **Dados:** O leilão 3G do Reino Unido (2000), desenhado por Ken Binmore e Paul Klemperer, arrecadou £22,5 bilhões — cinco vezes mais que a previsão inicial do governo — ao introduzir uma licença extra para atrair um entrante (aumentando \(N\) de 4 para 5, o que intensificou dramaticamente a competição). Em contraste, o leilão 3G da Holanda, com formato de leilão ascendente e número de licenças igual ao de incumbentes, arrecadou apenas €2,7 bilhões — menos de 30% per capita do resultado britânico. Na era 4G, o leilão brasileiro de 2012 (ANATEL) arrecadou R$ 2,9 bilhões, enquanto o leilão indiano de 2010 arrecadou US$ 14,6 bilhões. Os leilões 5G globais (2018–2023) movimentaram mais de US$ 200 bilhões: os EUA (banda C, 2021) arrecadaram US$ 81 bilhões; a Alemanha €6,5 bilhões (2019); o Japão, surpreendentemente, atribuiu espectro 5G sem leilão (por *beauty contest*), priorizando velocidade de implantação sobre receita. O Brasil (2021) arrecadou R$ 47,2 bilhões, dos quais R$ 40,5 bilhões em compromissos de investimento em cobertura.

    **Análise:** A variação dramática nos resultados entre países demonstra que o formato do leilão importa mais do que as condições macroeconômicas ou o tamanho do mercado. Três lições emergiram da experiência global. Primeira: o número de licenças relativo ao número de incumbentes é crucial — quando há mais licenças que incumbentes (como no Reino Unido), a competição por licenças é mais intensa. Segunda: leilões ascendentes simultâneos (SMRA) são superiores a leilões sequenciais quando as licenças são complementares, pois permitem que os licitantes gerenciem o risco de exposição. Terceira: obrigações de cobertura incorporadas ao leilão (como no caso brasileiro do 5G) transferem o objetivo de política industrial para dentro do mecanismo — um exemplo de desenho de mecanismos com múltiplos objetivos que vai além do leilão ótimo de Myerson (que maximiza uma única dimensão: receita). A teoria do Capítulo 9c.4 explica *por que* o formato importa: quando as condições da equivalência de receita falham (assimetria entre operadores, complementaridade entre faixas, valores afiliados), o desenho do mecanismo determina tanto a receita quanto a eficiência alocativa.

    **Para refletir:** O Japão optou por não leiloar espectro 5G, alocando por decisão administrativa. Quais são os custos de eficiência dessa escolha à luz do Teorema da Equivalência de Receita? E quais são os possíveis benefícios em termos de velocidade de implantação e coordenação de investimentos?

    **Fonte:** Klemperer, Paul (2002). "What Really Matters in Auction Design." *Journal of Economic Perspectives*, 16(1), 169–189. Cramton, Peter (2013). "Spectrum Auction Design." *Review of Industrial Organization*, 42(2), 161–190. ANATEL (2021). Edital de licitação do 5G.

A passagem dos leilões de valor privado para os de valor comum — e, mais geralmente, para modelos com valores afiliados que combinam elementos privados e comuns — revela a riqueza do arcabouço bayesiano. Mas a teoria levanta uma questão ainda mais fundamental: se a receita depende do formato, é possível encontrar o formato *ótimo*? Essa pergunta nos leva ao campo do desenho de mecanismos.
