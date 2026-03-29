# 16.7–16.10 Colusão e Entrada

## 16.7 Vizinhos de Condomínio: Colusão Tácita {#167}

Nos modelos anteriores, as firmas se encontram uma vez, tomam suas decisões e nunca mais se veem — como estranhos que dividem um táxi e depois seguem caminhos separados. Mas firmas reais são mais parecidas com vizinhos de condomínio: cruzam-se no elevador todo dia, e sabem que a retaliação de hoje pode cobrar seu preço amanhã. Essa repetição abre a possibilidade de cooperação: firmas podem coordenar-se tacitamente para manter preços elevados, sustentando a cooperação pela ameaça de retaliação futura. Como esse mecanismo funciona, e sob que condições ele é sustentável?[^cheese-shop-colusao]

### Jogos repetidos e sustentação de colusão

Em um jogo de Bertrand repetido infinitamente, as firmas podem sustentar preços acima do custo marginal por meio de **estratégias de gatilho** (trigger strategies).

!!! definition "Estratégia de Gatilho (Grim Trigger)"
    Na **estratégia de gatilho**, cada firma cobra o preço de monopólio enquanto todas as rivais fizerem o mesmo. Se qualquer firma desviar, todas revertem permanentemente para o equilíbrio de Nash estático (preço competitivo).

### Condição de sustentabilidade

Considere o duopólio de Bertrand com fator de desconto \(\delta\). O lucro de monopólio dividido é \(\frac{\pi^m}{2}\) por período. Ao desviar, a firma obtém \(\pi^m\) no período corrente, mas zero daí em diante (punição).

A colusão é sustentável se:

\[
\underbrace{\frac{\pi^m/2}{1-\delta}}_{\text{valor de cooperar}} \geq \underbrace{\pi^m + \frac{0}{1-\delta}}_{\text{valor de desviar}}
\]

\[
\frac{1}{2(1-\delta)} \geq 1 \implies \delta \geq \frac{1}{2}
\label{eq:16.14} \tag{16.14} \]

Com \(n\) firmas simétricas, a condição torna-se:

\[
\delta \geq 1 - \frac{1}{n}
\label{eq:16.15} \tag{16.15} \]

Quanto maior o número de firmas, mais difícil sustentar a colusão.

!!! idea "Intuição Econômica"
    **Em uma frase:** Cartéis são tentadores mas instáveis — cada participante ganha mais se trair o acordo enquanto os outros cooperam.

    **Pense assim:** Imagine um grupo de feirantes combinando o preço do tomate. Cada um tem a tentação de baixar o preço escondido e roubar os clientes dos vizinhos. Quanto mais feirantes no acordo, mais fácil alguém furar sem ser notado — e o combinado desmorona.

    **Por que isso importa:** Programas de leniência do [CADE](https://www.gov.br/cade) exploram exatamente essa fragilidade: ao oferecer imunidade ao primeiro delator, transformam a tentação de trair o cartel em incentivo para denunciá-lo.

A [Tabela 16.1](#tabela-16-1) lista os principais fatores que facilitam a sustentação de acordos colusivos.

<a id="tabela-16-1"></a>

| Fator | Efeito sobre a colusão | Mecanismo |
|---|---|---|
| Poucas firmas | Facilita | Menor incentivo ao desvio |
| Interação frequente | Facilita | Retaliação mais rápida |
| Demanda estável | Facilita | Desvios são detectáveis |
| Produtos homogêneos | Ambíguo | Facilita detecção mas aumenta tentação |
| Simetria de custos | Facilita | Acordo mais fácil sobre preço |
| Transparência de preços | Facilita | Detecção rápida de desvios |
| Barreiras à entrada | Facilita | Impede erosão de lucros por entrantes |
| Contato multimercado | Facilita | Mais oportunidades de punição |

<div class="caption-obj" markdown>
**Tabela 16.1 — Fatores que facilitam a colusão.**
</div>

!!! tip "Colusão tácita e direito concorrencial"
    A colusão tácita — sustentada por interação repetida sem comunicação explícita — é extremamente difícil de combater com instrumentos tradicionais do direito antitruste. O CADE distingue entre **cartel** (acordo explícito, ilícito per se) e **paralelismo consciente** (comportamento coordenado sem acordo, que pode não ser ilícito). A análise de estrutura de mercado (concentração, barreiras, transparência) é utilizada para avaliar a probabilidade de coordenação tácita.

!!! box-brasil "Box Brasil: O cartel do metrô de São Paulo e o Programa de Leniência do CADE"
    Em 2013, o CADE condenou um cartel formado por grandes construtoras e fabricantes de equipamentos ferroviários que atuavam em licitações do Metrô de São Paulo e da CPTM. As empresas — incluindo Alstom, Bombardier, Mitsui, Siemens e CAF — coordenavam preços e dividiam lotes de licitações de trens e sistemas de sinalização por mais de uma década.

    **Mecanismo de colusão:**

    O cartel operava exatamente como prevê a teoria: as firmas estabeleciam reuniões periódicas para definir qual empresa "ganharia" cada licitação, com as demais apresentando propostas artificialmente superiores. A sustentação do acordo era facilitada por: (i) poucas firmas (oligopólio concentrado); (ii) interação repetida em múltiplas licitações ao longo dos anos; (iii) transparência — cada firma observava se as demais cumpriam o acordo; (iv) barreiras à entrada elevadas (exigências técnicas e certificações).

    **Programa de Leniência:**

    O caso foi descoberto graças ao **Programa de Leniência** do [CADE](https://www.gov.br/cade/pt-br/assuntos/noticias/cade-multa-em-r-535-1-milhoes-cartel-de-trens-e-metros), inspirado no modelo americano. A Siemens, primeira empresa a confessar a participação e fornecer provas, obteve imunidade total de multas. As demais firmas foram condenadas a multas que somaram mais de R$ 530 milhões. O programa de leniência funciona como um mecanismo de quebra da colusão: ao oferecer imunidade ao primeiro delator, reduz o fator de desconto efetivo e torna o desvio (delação) mais atrativo do que a cooperação com o cartel — exatamente o que a teoria dos jogos repetidos prevê.

!!! box-mundo "Box Mundo 16.2 — Colusão algorítmica: quando a IA aprende a fazer cartel"

    A revolução digital levanta uma questão perturbadora para a política antitruste: algoritmos de precificação baseados em IA podem aprender a coordenar preços *sem* instruções explícitas dos programadores?

    **A evidência experimental de Calvano et al. (2020):**

    Em "Artificial Intelligence, Algorithmic Pricing, and Collusion" (*American Economic Review*, 110(10), 3267–3297), Emilio Calvano e coautores demonstraram que algoritmos de *Q-learning* (uma forma de aprendizado por reforço), treinados em ambientes de oligopólio repetido, convergem de forma independente para preços **supra-competitivos** — sem comunicação entre si e sem que os programadores tenham codificado qualquer instrução de colusão. Mais surpreendente: os algoritmos desenvolvem espontaneamente **estratégias de punição** similares ao *grim trigger* — quando um rival baixa o preço, o algoritmo retalia por alguns períodos antes de retornar à cooperação. Isso é exatamente o que a teoria de jogos repetidos (Seção 16.7) prevê como mecanismo de sustentação da colusão.

    **Implicações para política antitruste:**

    - O direito concorrencial tradicional exige **acordo explícito** para configurar cartel. Se algoritmos coordenam preços sem comunicação, sem acordo e sem intenção humana, como enquadrar legalmente?
    - O CADE, a Comissão Europeia e a FTC americana estão ativamente debatendo se a "colusão algorítmica" configura ilícito antitruste.
    - Assad et al. (2024) documentaram que a adoção de algoritmos de precificação idênticos por postos de gasolina na Alemanha elevou preços em 9–28% — evidência de campo consistente com os resultados de laboratório de Calvano et al.

    **Conexão com a teoria:** Este caso demonstra que a condição de sustentabilidade da colusão (\(\delta \geq \frac{n-1}{n}\), Equação 16.14) é mais facilmente satisfeita por algoritmos: eles são infinitamente pacientes (\(\delta \approx 1\)), observam preços em tempo real e ajustam estratégias instantaneamente. O oligopólio algorítmico é o cenário mais favorável à colusão tácita que a teoria já concebeu.

    **Fonte:** Calvano, E., Calzolari, G., Denicolò, V. e Pastorello, S. (2020). ["Artificial Intelligence, Algorithmic Pricing, and Collusion."](https://doi.org/10.1257/aer.20190623) *AER*, 110(10), 3267–3297. Assad, S., Clark, R., Ershov, D. e Xu, L. (2024). ["Algorithmic Pricing and Competition: Empirical Evidence from the German Retail Gasoline Market."](https://doi.org/10.1086/726906) *Journal of Political Economy*, 132(3).

---

## 16.8 Redesenhando o Tabuleiro: Investimento, Entrada e Saída {#168}

Até aqui, tratamos o oligopólio como um jogo de tabuleiro com regras fixas — o número de jogadores, as peças disponíveis e o mapa já estavam dados, e as firmas só decidiam onde mover. Agora elevamos o nível: no longo prazo, as firmas podem redesenhar o próprio tabuleiro. Investir em capacidade, P&D, localização e publicidade, ou adotar posicionamentos que mudam as regras da competição futura — tudo isso é estratégia de longo prazo. Essas decisões alteram a estrutura do jogo e o comportamento de equilíbrio, e são frequentemente mais importantes do que as escolhas de curto prazo, pois definem as condições sob as quais a competição se desenrolará.

### Compromisso estratégico

Um investimento constitui um **compromisso** (commitment) se é irreversível ou custoso de reverter. Compromissos credíveis podem alterar as expectativas dos rivais e modificar o equilíbrio.

A taxonomia de Fudenberg e Tirole (1984) classifica os investimentos estratégicos em:

- **Top dog** ("cão grande"): investir agressivamente para intimidar rivais (ex.: excesso de capacidade para dissuadir entrada).
- **Puppy dog** ("cão manso"): investir pouco para sinalizar intenções pacíficas e evitar retaliação.
- **Fat cat** ("gato gordo"): investir para tornar-se menos agressivo e induzir acomodação do rival.
- **Lean and hungry** ("magro e faminto"): não investir para parecer mais agressivo e dissuadir rivais.

A estratégia ótima depende de dois fatores: (i) se o investimento torna a firma mais agressiva ou mais acomodada; (ii) se o objetivo é dissuadir a entrada ou acomodar-se com rivais existentes.

---

## 16.9 Fábrica Grande Antes do Rival Chegar: Dissuasão de Entrada {#169}

O conceito de compromisso estratégico adquire especial importância quando o incumbente enfrenta a possibilidade de entrada de um novo concorrente. Nesse contexto, a firma estabelecida pode investir de forma a tornar a entrada não lucrativa para o rival potencial — uma prática conhecida como dissuasão estratégica de entrada. A questão central, contudo, é se essa estratégia é ótima para o incumbente: investir em dissuasão tem custos, e em alguns casos pode ser mais lucrativo simplesmente acomodar a entrada.

### Sobrecapacidade como barreira

Spence (1977) e Dixit (1980) analisaram como o incumbente pode usar **investimento em capacidade** para dissuadir a entrada. No modelo de Dixit, o incumbente instala capacidade \(K\) antes que o entrante potencial decida se ingressa no mercado. Se \(K\) é suficientemente grande, a entrada torna-se não lucrativa porque o incumbente pode comprometer-se a produzir uma quantidade elevada.

A condição para dissuasão de entrada é:

\[
\pi_E(q_E^*, K) \leq f
\]

onde \(\pi_E\) é o lucro bruto do entrante no equilíbrio pós-entrada e \(f\) é o custo fixo de entrada. Se o custo de instalação de capacidade excede o ganho com a dissuasão, o incumbente pode preferir **acomodar** a entrada.

!!! note "Dissuasão vs. acomodação"
    A dissuasão de entrada nem sempre é ótima para o incumbente. Se o custo de instalar capacidade suficiente para bloquear a entrada excede a perda de lucro decorrente de compartilhar o mercado, o incumbente prefere acomodar a entrada. A decisão depende da magnitude do custo fixo do entrante, da elasticidade da demanda e da estrutura de custos.

---

## 16.10 Mostrar para Não Precisar Provar: Sinalização {#1610}

Às vezes, a melhor arma de uma firma não é o que ela produz, mas o que ela *mostra* saber. Em mercados com **informação assimétrica**, as ações observáveis de uma firma podem transmitir informação privada sobre suas características (custos, qualidade, intenções).

### Preço como sinal

Milgrom e Roberts (1982) mostraram que um incumbente com custos baixos pode sinalizar sua eficiência cobrando **preços baixos** — o chamado **preço-limite**. O preço baixo é um sinal crível porque um incumbente com custos altos não conseguiria sustentá-lo lucrativamente.

No equilíbrio separador:

- O incumbente eficiente cobra um preço suficientemente baixo para que a imitação pelo ineficiente seja não lucrativa.
- O entrante potencial infere corretamente o tipo do incumbente e desiste de entrar contra o eficiente.

O preço de sinalização é tipicamente **inferior** ao preço de monopólio de curto prazo: o incumbente sacrifica lucro corrente para preservar sua posição de mercado no longo prazo.

---

[^cheese-shop-colusao]: O sketch da *Cheese Shop* de Monty Python é uma demonstração involuntária do que acontece quando um cartel colapsa. O cliente pede queijo após queijo e a loja não tem *nenhum*. "Venezuelan Beaver Cheese?" — "Not today, sir, no." O cartel funciona assim: todos prometem manter os preços altos, mas quando você chega para comprar pelo preço combinado... *ninguém* está de fato cumprindo o acordo. A loja está vazia de queijos exatamente como o cartel está vazio de cooperação real. "It's certainly uncontaminated by cheese" — como um cartel não contaminado por cooperação.
