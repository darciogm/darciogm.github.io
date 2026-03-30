# Dividir o Bolo: Modelos de Barganha

## 9b.3 Dividir o Bolo: Modelos de Barganha

Última peça do módulo — e talvez a mais intuitiva. Jogos repetidos tratam de cooperação ao longo do tempo; **barganha** trata de *como dividir o bolo*. Compradores e vendedores pechinchando, sindicatos negociando salário, países dividindo quotas de pesca — todos enfrentam a mesma pergunta: "quanto fica para mim, quanto fica para você?" A teoria da barganha formaliza essa negociação, e o resultado depende de um fator que a sabedoria popular já conhece: **quem pode esperar mais, leva mais**. A paciência é poder.

### O Jogo do Ultimato

O jogo mais simples de barganha: o jogador 1 (proponente) oferece uma divisão \(x\) de um bolo de tamanho 1. O jogador 2 (respondedor) aceita ou rejeita. Se aceita, payoffs são \((x, 1-x)\). Se rejeita, ambos recebem 0.

**Equilíbrio Perfeito em Subjogos:** A análise por indução retroativa começa pelo respondedor. No subjogo após qualquer oferta \(x\), aceitar dá \(1-x \geq 0\) e rejeitar dá \(0\). Portanto, o respondedor aceita qualquer oferta (mesmo a mais miserável). Antecipando isso, o proponente oferece \(x = 1\) (fica com tudo), pois sabe que o respondedor aceitará.

!!! warning "Teoria vs. Evidência"
    A previsão teórica — proponente oferece quase nada, respondedor aceita — é sistematicamente rejeitada em experimentos. Ofertas modais são 40-50% do bolo, e ofertas abaixo de 20% são frequentemente rejeitadas. Isso motivou modelos de preferências sociais (Fehr-Schmidt, Módulo 8) e de racionalidade limitada.

### Barganha de Rubinstein (ofertas alternadas)

O jogo do ultimato é extremo: uma única oferta, sem possibilidade de contraproposta. Na prática, a maioria das negociações envolve rodadas de ofertas e contraofertas, e o custo do atraso — salários não pagos durante uma greve, produção perdida, oportunidades desperdiçadas — é o que impele as partes ao acordo. O modelo de Rubinstein captura essa dinâmica com elegância e produz um resultado notavelmente preciso.

Dois jogadores alternam propostas com fator de desconto \(\delta \in (0,1)\). No período 1, o jogador 1 propõe; se 2 rejeita, no período 2 o jogador 2 propõe; e assim por diante. Rubinstein (1982) demonstrou que esse jogo, apesar de ter infinitas rodadas de ofertas e contraofertas, possui um **único EPS**, com divisão determinada exclusivamente pelos fatores de desconto dos dois jogadores:

\[
x_1^* = \frac{1 - \delta_2}{1 - \delta_1 \delta_2}, \qquad x_2^* = \frac{\delta_2(1 - \delta_1)}{1 - \delta_1 \delta_2}
\label{eq:9b.2} \tag{9b.2}
\]

Quando \(\delta_1 = \delta_2 = \delta\), a equação $\eqref{eq:9b.2}$ simplifica-se para:

\[
x_1^* = \frac{1}{1 + \delta} \quad \text{(share do proponente)}
\label{eq:9b.3} \tag{9b.3}
\]

A derivação do resultado de Rubinstein ilustra com precisão a força da indução retroativa: para que o jogador 2 aceite a proposta do jogador 1 no período 1, deve receber ao menos tanto quanto receberia sendo o proponente no período 2 (descontado por \(\delta_2\)). Mas o que o jogador 2 obteria como proponente no período 2 depende do que o jogador 1 aceitaria no período 3 (descontado por \(\delta_1\)). Esse encadeamento de condições de indiferença — repetido para todas as rodadas possíveis — determina unicamente a divisão do excedente. O resultado é notável: um jogo com infinitas rodadas possíveis tem um único equilíbrio, encontrado pela aplicação sistemática do princípio de racionalidade retrospectiva.

!!! idea "Intuição Econômica"
    **Em uma frase:** Na barganha de Rubinstein, quem é mais paciente (maior \(\delta\)) fica com a maior fatia — mas o proponente sempre tem uma ligeira vantagem.

    **Dois efeitos em ação:** O resultado de Rubinstein reflete a interação de dois determinantes do poder de barganha:

    1. **Vantagem do proponente** (*first-mover advantage*): mesmo com desconto simétrico (\(\delta_1 = \delta_2 = \delta\)), o jogador que faz a primeira proposta obtém \(1/(1+\delta) > 1/2\) — mais do que a metade. Essa vantagem vem do fato de que o respondedor enfrenta a escolha entre aceitar *agora* e esperar (perdendo \(\delta\) do valor pelo atraso). A vantagem é pequena quando ambos são pacientes (\(\delta \to 1 \implies 1/(1+\delta) \to 1/2\)) e grande quando são impacientes (\(\delta \to 0 \implies 1/(1+\delta) \to 1\), como no jogo do ultimato).

    2. **Vantagem da paciência** (*patience advantage*): quando \(\delta_1 \neq \delta_2\), o jogador mais paciente extrai mais do bolo, independentemente de quem propõe primeiro. Pela equação $\eqref{eq:9b.2}$, se \(\delta_1 > \delta_2\), o jogador 1 obtém um share maior. A paciência funciona como poder de barganha porque quem pode esperar mais sem custos elevados é mais difícil de pressionar.

    **Pense assim:** Numa negociação salarial entre o sindicato dos metalúrgicos e uma montadora, cada rodada sem acordo custa para ambos (trabalhadores perdem salário, empresa perde produção). Quem aguenta mais tempo sem acordo — quem tem mais "reservas" — consegue extrair mais valor.

    **Conexão com Nash Bargaining:** Rubinstein (1982) mostrou que o EPS de ofertas alternadas converge para a solução de barganha de Nash quando o intervalo entre ofertas vai a zero — uma fundamentação não cooperativa para o modelo cooperativo.

!!! box-mundo "Box Mundo 9b.3 — Brexit: barganha sequencial com prazo e paciência assimétrica"

    **Contexto:** A negociação do Brexit (2017–2020) entre o Reino Unido e a União Europeia é um caso notável de barganha sequencial em que a estrutura temporal e a paciência relativa das partes determinaram o resultado — precisamente como prevê o modelo de Rubinstein. O Artigo 50 do Tratado de Lisboa estabelecia um prazo de dois anos para a conclusão das negociações (extensível por unanimidade), criando uma barganha com horizonte finito e deadline conhecido.

    **Dados:** O processo de negociação durou de março de 2017 (ativação do Artigo 50) a dezembro de 2020 (acordo comercial final). O Reino Unido enfrentou três deadlines de saída (março de 2019, abril de 2019 e outubro de 2019), tendo solicitado duas extensões. O acordo final (Trade and Cooperation Agreement, TCA) foi fechado em 24 de dezembro de 2020, apenas sete dias antes do prazo. A análise do Institute for Government (2021) estimou que o custo anual do Brexit para o PIB britânico seria de 4–5% no longo prazo, enquanto o impacto sobre o PIB da UE-27 seria inferior a 0,5%.

    **Análise:** A assimetria de paciência era estrutural. Para o Reino Unido, o custo de não-acordo (*no-deal Brexit*) era alto: disrupção de cadeias de suprimento, tarifas da OMC sobre 43% das exportações, perda imediata de acesso ao mercado financeiro europeu. Para a UE, o custo era menor: o Reino Unido representava ~15% do comércio externo da UE, mas a UE representava ~45% do comércio do Reino Unido. Em termos do modelo de Rubinstein, \(\delta_{UK} < \delta_{UE}\) — a UE era mais paciente porque tinha menos a perder com o atraso. O resultado é previsto pela teoria: o jogador menos paciente (UK) fez concessões desproporcionais. O acordo final incluiu fronteira aduaneira no Mar da Irlanda (concessão britânica), acesso limitado ao mercado de serviços financeiros (antes pleno), e regime de pesca com quotas gradualmente reduzidas — termos significativamente mais próximos da posição inicial da UE do que da britânica. O prazo fixo (deadline) exacerbou a assimetria: à medida que o deadline se aproximava, o custo do atraso para o UK aumentava enquanto a UE podia simplesmente esperar — uma versão real do efeito da impaciência no modelo de Rubinstein.

    **Para refletir:** Como a existência de uma opção externa para o Reino Unido (acordos bilaterais com EUA, Austrália, Japão) alterou a dinâmica de barganha? O modelo de Rubinstein com opções externas prevê que essas opções só são relevantes se superiores ao payoff de equilíbrio sem elas — foram?

    **Fonte:** Sampson, Thomas. (2017). "Brexit: The Economics of International Disintegration." *Journal of Economic Perspectives*, 31(4), 163–184. Institute for Government. (2021). *The Brexit Effect: How Brexit Has Changed the UK's Approach to Trade*.

### Opções externas e poder de barganha

O modelo básico de Rubinstein supõe que as partes só podem alcançar um acordo entre si. Na prática, porém, a maioria dos negociadores possui **opções externas** (*outside options*): o trabalhador pode aceitar uma oferta de outra empresa; o sindicato pode decretar greve e recorrer ao fundo de greve; a empresa pode transferir a produção para outra planta. A presença de opções externas altera fundamentalmente o equilíbrio de barganha.

O **princípio da opção externa** (Binmore, Shaked e Sutton, 1989) estabelece que a opção externa de um jogador afeta o resultado da barganha somente se essa opção for suficientemente atraente — mais precisamente, se o payoff da opção externa exceder o que o jogador obteria sem ela no EPS de Rubinstein. Quando a opção externa é "boa o suficiente" para ser vinculante, o jogador recebe exatamente o valor da opção externa (e o outro fica com o resíduo). Quando a opção externa é inferior ao que o jogador obteria de qualquer forma pela barganha, ela é irrelevante para o equilíbrio.

Essa lógica tem implicações diretas para a economia do trabalho e para a análise de fusões. Na negociação salarial, o "salário reserva" do trabalhador — determinado pelo seguro-desemprego, por oportunidades alternativas de emprego e pela renda informal — funciona como opção externa. Políticas que elevam o salário reserva (como o seguro-desemprego mais generoso ou um mercado de trabalho aquecido) aumentam o poder de barganha dos trabalhadores. Em fusões e aquisições, a existência de um comprador alternativo ("white knight") eleva o preço que o primeiro comprador precisa oferecer — a opção externa do vendedor é vinculante e extrai valor do adquirente.

A paciência (\(\delta\)) e as opções externas são os dois determinantes fundamentais do poder de barganha. É instrutivo notar que ambos operam pelo mesmo canal: eles determinam o quanto o jogador perde ao *não* chegar a um acordo. Um jogador paciente perde pouco com o atraso; um jogador com boa opção externa perde pouco com o impasse. Em ambos os casos, a relutância em aceitar termos desfavoráveis confere poder. A aplicação ao mercado de trabalho no Capítulo 16 (modelos de salário de eficiência e barganha entre firma e sindicato) utiliza extensivamente essa lógica.

---

Os modelos de jogos repetidos e barganha desenvolvidos neste capítulo encontram aplicações diretas na economia brasileira. Os dois Boxes a seguir ilustram, respectivamente, como a lógica do Dilema dos Prisioneiros repetido explica a persistência da guerra fiscal entre estados e como o modelo de Rubinstein ilumina as negociações salariais na indústria automotiva.

!!! box-brasil "Box Brasil — A guerra fiscal do ICMS: uma corrida ao fundo"
    A competição entre estados brasileiros pela atração de investimentos via benefícios fiscais no **ICMS** é um dos exemplos mais claros do Dilema dos Prisioneiros na política econômica brasileira.

    **A estrutura do jogo**

    |  | Estado B: Não concede | Estado B: Concede |
    |:---|:---:|:---:|
    | **Estado A: Não concede** | \((100, 100)\) | \((60, 120)\) |
    | **Estado A: Concede** | \((120, 60)\) | \((70, 70)\) |

    Conceder incentivos é estratégia dominante. O resultado (70, 70) é Pareto-dominado por (100, 100).

    **Por que a cooperação falhou?**

    Usando os payoffs acima: \(\delta^* = (T-R)/(T-P) = (120-100)/(120-70) = 0{,}4\). Bastaria \(\delta \geq 0{,}4\) para sustentar cooperação com grim trigger — um limiar baixo! Então por que a guerra fiscal persiste?

    1. **Horizonte curto dos governadores**: mandatos de 4 anos geram \(\delta\) efetivo baixo (desconto político é altíssimo).
    2. **Confaz fraco**: o mecanismo de enforcement (unanimidade para novos benefícios) foi sistematicamente violado.
    3. **Assimetria entre estados**: estados menores ganham mais com o desvio, pois atraem investimentos proporcionalmente maiores.

    **A Reforma Tributária como mudança de regras do jogo**

    A EC 132/2023 (IBS com alíquota uniforme e cobrança no destino) não tenta sustentar cooperação no jogo existente — ela **redesenha o jogo** eliminando o instrumento (ICMS na origem) que permitia a concessão unilateral de benefícios.

---

!!! box-brasil "Box Brasil — Metalúrgicos vs. Montadoras: barganha à brasileira"
    As negociações salariais anuais entre o **Sindicato dos Metalúrgicos do ABC** e as montadoras (Volkswagen, Mercedes-Benz, Toyota) são um exemplo clássico de barganha com ofertas alternadas.

    **Estrutura da barganha**

    - O sindicato apresenta uma pauta de reivindicações (reajuste + PLR + benefícios).
    - A empresa contrapropõe.
    - Se não há acordo, pode haver greve (custo para ambos: trabalhadores perdem salários, empresa perde produção).
    - Rodadas se sucedem até o acordo.

    **Fatores que afetam o poder de barganha (\(\delta\))**

    | Fator | Efeito sobre o sindicato | Efeito sobre a empresa |
    |:------|:------------------------|:----------------------|
    | Fundo de greve | Aumenta \(\delta_{\text{sind}}\) | — |
    | Estoques altos | — | Aumenta \(\delta_{\text{emp}}\) |
    | Desemprego alto | Reduz \(\delta_{\text{sind}}\) | — |
    | Demanda aquecida | — | Reduz \(\delta_{\text{emp}}\) |

    **Dados recentes**

    Em 2024, o Sindicato dos Metalúrgicos do ABC negociou reajuste de **5,5%** (inflação + ganho real) com a Volkswagen, após duas rodadas de negociação — consistente com o modelo de Rubinstein onde o proponente com informação sobre o custo do atraso faz uma oferta próxima do EPS logo na primeira rodada.

    **Fonte**: DIEESE, Subsistema de Negociações Coletivas; Sindicato dos Metalúrgicos do ABC.

!!! box-brasil "Brasil na Prática — Acordo de Leniência e o Fim do Cartel"
    O programa de leniência do CADE (Lei 12.529/2011) é uma aplicação direta da teoria de jogos repetidos à política antitruste. O mecanismo funciona assim: a primeira empresa do cartel que denunciar os parceiros recebe imunidade administrativa e redução de 1/3 a 2/3 da multa criminal. As demais pagam multas de até 20% do faturamento.

    **Modelagem:** O cartel é um equilíbrio cooperativo sustentado por punição (folk theorem). O programa de leniência altera os payoffs do jogo: o ganho de desviar (denunciar) passa a superar o ganho de cooperar (manter o cartel), especialmente quando há risco de que outro membro denuncie primeiro. O resultado é uma corrida para denunciar — exatamente o que o regulador deseja.

    **Caso emblemático:** O cartel de cimentos (condenado em 2014) envolveu Votorantim, Nassau, Itabira, Cimpor e outras empresas. Multas totais: R$ 3,1 bilhões — a maior da história do CADE até então. A investigação revelou que o cartel operou por cerca de 20 anos, coordenando preços e dividindo mercados regionais. A Votorantim, identificada como líder do esquema, recebeu a maior multa individual: R$ 1,5 bilhão.

    **Conexão teórica:** O programa de leniência transforma um jogo repetido (onde cooperar = manter cartel é equilíbrio sustentável) em um jogo com incentivo unilateral a desviar (onde denunciar primeiro é estratégia dominante). É o dilema do prisioneiro aplicado à vida real — e o regulador explora exatamente a instabilidade do equilíbrio cooperativo para desmontá-lo.

    **Fonte:** CADE (2014). [Cade multa em R$ 3,1 bilhões o cartel do cimento](http://antigo.cade.gov.br/noticias/cade-multa-em-r-3-1-bilhoes-o-cartel-do-cimento).

---

??? code "R Interativo — Ultimatum Game: teoria vs. experimento (Adams, 2025, Cap. 8)"
    O jogo do ultimato é um dos mais estudados em economia experimental. A previsão teórica (oferta mínima, aceitação total) é sistematicamente violada: ofertas modais são 40-50% e ofertas abaixo de 20% são frequentemente rejeitadas.

    Andersen et al. (2011) realizaram experimentos na Índia com stakes variando de US\$ 0,50 a US\$ 200 (até 8 meses de salário local). Com stakes muito altos, as ofertas convergem para a previsão teórica — sugerindo que preferências por fairness têm um preço.

    <iframe src="/micro-book/graficos/cap09/webr-ultimatum.html" title="Figura 9b.3 — Ultimatum Game" class="graph-iframe" style="height:1100px;overflow:hidden" scrolling="no"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9b.3 — Simulação de um experimento de ultimatum game com modelo logit.** Altere os parâmetros da simulação e estime a probabilidade de aceitar em função da oferta.
    </div>

---

??? code "R Interativo — Dinâmica de preços e conluio em Perth (Adams, 2025, Cap. 7)"
    Wang (2009) e Clark e Roos (2019) documentaram padrões de preços cíclicos ("Edgeworth cycles") no mercado de gasolina de Perth, Austrália — evidência empírica da dinâmica cooperação/punição prevista pelos modelos de jogos repetidos.

    Este box simula os ciclos de Edgeworth: preços sobem gradualmente (fase cooperativa) e depois desabam (fase de punição/undercut), gerando o padrão "dente de serra".

    <iframe src="/micro-book/graficos/cap09/webr-gasoline.html" title="Figura 9b.4 — Dinâmica de preços e conluio" class="graph-iframe" style="height:1020px;overflow:hidden" scrolling="no"></iframe>

    <div class="caption-obj" markdown>
    **Figura 9b.4 — Simulação de ciclos de Edgeworth no mercado de gasolina.** Baseado em Adams (2025, Cap. 7) e dados de Perth.
    </div>

---

*Jogos repetidos e barganha revelam o poder do tempo. No próximo módulo, tiramos a última certeza: os jogadores nem sabem contra quem estão jogando. And now for something completely different.*
