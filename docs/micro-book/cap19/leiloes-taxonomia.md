# 19.7–19.8 Leilões e Taxonomia

## 19.7 Quem Dá Mais? (E Quem Dá Demais): Leilões {#197}

Poucas situações capturam tão bem a tensão da informação assimétrica quanto um leilão. Cada participante carrega um número secreto na cabeça — quanto aquele objeto vale *para ele* — e precisa decidir quanto revelar sem saber o que os rivais estão pensando. É um jogo de nervos, estratégia e informação incompleta, tudo comprimido em poucos minutos (ou segundos, no caso de leilões digitais). O leilão é, assim, um mecanismo de mercado que opera sob assimetria de informação bilateral: cada licitante sabe algo que os outros não sabem. O desenho das regras do leilão determina quão eficientemente a informação dispersa se traduz em alocação e preço — e, como demonstrou William Vickrey (Nobel 1996), regras bem desenhadas podem induzir os participantes a revelar suas verdadeiras valorações.

!!! definition "Leilão"
    Mecanismo de mercado para alocação de bens em que os participantes submetem lances, e o bem é alocado (e o preço determinado) de acordo com regras predefinidas. O desenho de leilões é uma aplicação central da teoria de mecanismos.

### Tipos de leilões

A [Tabela 19.2](#tabela-19-2) descreve os quatro formatos clássicos de leilão.

<a id="tabela-19-2"></a>

| Tipo de Leilão | Descrição | Lance | Preço pago |
|----------------|-----------|-------|------------|
| **Inglês** (ascendente) | Preço sobe até restar um único licitante | Aberto, sequencial | Segundo maior valor |
| **Holandês** (descendente) | Preço cai até alguém aceitar | Fechado (estrategicamente) | Valor do lance aceito |
| **Primeiro preço** (selado) | Lances simultâneos em envelope fechado | Fechado, simultâneo | Maior lance |
| **Segundo preço** (Vickrey) | Lances simultâneos; vencedor paga o segundo maior lance | Fechado, simultâneo | Segundo maior lance |

<div class="caption-obj" markdown>
**Tabela 19.2 — Tipos de leilões.**
</div>

### O leilão de segundo preço (Vickrey)

No leilão de segundo preço, cada licitante tem uma **estratégia dominante**: ofertar sua verdadeira valoração. Esse resultado, devido a William Vickrey (1961), é notável por sua simplicidade e robustez — a estratégia ótima não depende de crenças sobre os outros licitantes.

!!! theorem "Proposição: Estratégia Dominante no Leilão de Vickrey"
    No leilão de segundo preço com valores privados independentes, é estratégia fracamente dominante para cada licitante ofertar \(b_i = v_i\) (lance igual à valoração verdadeira).

**Intuição da prova**: Considere dois possíveis desvios. Se \(b_i > v_i\) (lance acima da valoração), o licitante amplia os cenários em que vence — mas inclui cenários em que o segundo maior lance está entre \(v_i\) e \(b_i\), nos quais ele vence e paga mais do que a valoração (prejuízo). Se \(b_i < v_i\) (lance abaixo da valoração), o licitante perde oportunidades lucrativas — cenários em que o segundo maior lance estaria entre \(b_i\) e \(v_i\), nos quais ele teria vencido e pago menos que sua valoração (lucro perdido). Em ambos os casos, desviar de \(b_i = v_i\) não melhora o payoff esperado. A chave é que o lance não afeta o preço pago (que é o segundo maior lance), mas apenas a probabilidade de vencer — e essa probabilidade é otimizada quando o lance coincide com a valoração.

Esse resultado tem uma consequência prática poderosa: o leilão de Vickrey é **à prova de estratégia** (*strategy-proof*). Nenhum licitante precisa se preocupar com o que os outros farão, pois a estratégia ótima independe das ações alheias. Essa propriedade torna o Vickrey extremamente atrativo para o desenho de mecanismos — e é a razão pela qual variantes do segundo preço são amplamente usadas em plataformas digitais (como o leilão de anúncios do Google Ads, que historicamente utilizou um mecanismo de segundo preço generalizado).

### O Teorema da Equivalência de Receita

!!! theorem "Teorema da Equivalência de Receita (Revenue Equivalence Theorem)"
    Sob as seguintes condições: (i) valores privados independentes; (ii) licitantes neutros ao risco; (iii) distribuição de valorações simétrica e contínua; (iv) o licitante com valoração mínima obtém excedente zero — **todos os quatro formatos de leilão geram a mesma receita esperada para o vendedor**.

Esse resultado notável, devido a Vickrey (1961) e Myerson (1981), implica que, sob as condições do teorema, a escolha do formato de leilão é irrelevante para a receita. As diferenças surgem quando as condições são violadas:

- **Aversão ao risco dos licitantes**: favorece o leilão de primeiro preço. Licitantes avessos ao risco fazem menos *bid shading* (ofertam mais próximo de sua valoração) para reduzir a chance de perder, o que aumenta a receita esperada em relação ao segundo preço.
- **Valores correlacionados ou comuns**: favorece o leilão inglês (ascendente). A informação revelada durante o leilão — quando um licitante desiste, revela que sua estimativa é inferior ao preço corrente — reduz a incerteza e atenua a **maldição do vencedor** (*winner's curse*). Em um leilão selado, essa informação não é transmitida, e os licitantes fazem mais *bid shading* por precaução.
- **Assimetria entre licitantes**: viola a simetria do teorema. Quando um licitante possui vantagem informacional (como a Petrobras nos leilões do pré-sal), o formato afeta tanto a receita quanto a eficiência.
- **Colusão**: leilões selados são mais resistentes à colusão do que leilões ascendentes, onde os participantes podem observar e punir desvios.

A **maldição do vencedor** merece destaque especial, pois é um fenômeno empiricamente relevante e frequentemente mal compreendido. Em leilões de valor comum (onde o objeto tem o mesmo valor para todos, mas cada licitante tem apenas uma estimativa ruidosa desse valor), o vencedor tende a ser quem mais *superestimou* o valor — e, portanto, tende a pagar demais. Licitantes racionais antecipam isso e ajustam seus lances para baixo. Quanto mais licitantes participam, mais extrema é a estimativa do vencedor e maior deve ser o desconto — um resultado com implicações diretas para o desenho de leilões de concessão.

!!! info "🏅 Prêmio Nobel — Leonid Hurwicz, Eric S. Maskin e Roger B. Myerson (2007)"

    **Leonid Hurwicz** (1917–2008) foi um economista e matemático russo-americano, professor na Universidade de Minnesota. **Eric Stark Maskin** (1950–presente) é um economista americano, PhD em Harvard, professor em Harvard e no Institute for Advanced Study. **Roger Bruce Myerson** (1951–presente) é um economista americano, PhD em Harvard, professor na Universidade de Chicago.

    **Por que ganharam o Nobel:**
    Premiados por lançar as bases da teoria de desenho de mecanismos. Hurwicz formulou o problema: como desenhar instituições (mecanismos) que produzam resultados desejáveis quando os agentes possuem informação privada e agem em interesse próprio? Maskin estabeleceu condições para que um mecanismo implemente resultados socialmente desejáveis. Myerson provou o *princípio da revelação* — todo resultado alcançável por qualquer mecanismo pode ser replicado por um mecanismo de revelação direta — e aplicou a teoria ao desenho de leilões ótimos.

    **Conexão com este capítulo:**
    O princípio da revelação de Myerson e a teoria de leilões ótimos são apresentados neste capítulo como aplicações da informação assimétrica ao desenho de instituições.

!!! box-mundo "Box Mundo 19.3 — Leilões de espectro nos EUA: a revolução do desenho de mecanismos"

    **Contexto:** Os leilões de espectro eletromagnético conduzidos pela Federal Communications Commission (FCC) nos Estados Unidos são o caso mais celebrado de aplicação prática da teoria de leilões. Antes de 1994, a FCC alocava licenças de espectro por meio de "concursos de beleza" (critérios subjetivos) ou loterias aleatórias — métodos que não revelavam a valoração dos participantes e geravam alocações ineficientes. A partir de 1994, sob influência de economistas como Paul Milgrom e Robert Wilson (Nobel 2020), a FCC adotou o formato de *simultaneous ascending auction* (leilão simultâneo ascendente), especificamente desenhado para lidar com as complementaridades e a informação assimétrica inerentes ao espectro.

    **Dados:** Desde 1994, os leilões da FCC arrecadaram mais de US$ 230 bilhões para o governo federal americano (FCC, *Auctions Summary*, 2024). O maior leilão individual — o *Incentive Auction* de 2017, que reaproveitou espectro de TV para uso de telefonia móvel — arrecadou US$ 19,8 bilhões. O leilão C-band (2021), para faixas de 5G, arrecadou US$ 81 bilhões, o mais lucrativo da história. A eficiência alocativa melhorou dramaticamente: estudos do *NBER* estimam que os leilões simultâneos ascendentes alocam licenças a licitantes com valoração 15–30% maior do que os mecanismos anteriores.

    **Análise:** Os leilões da FCC ilustram vários conceitos deste capítulo. Primeiro, o Teorema da Equivalência de Receita (Seção 19.7) explica por que a FCC se preocupa menos com o formato exato e mais com as condições: número de participantes, barreiras à colusão, informação disponível. Segundo, a maldição do vencedor é uma preocupação real: como o espectro tem componente de valor comum (depende da demanda futura de telecomunicações), licitantes que superestimam o valor tendem a vencer e pagar caro demais. O formato ascendente atenua esse problema ao revelar informação durante o leilão. Terceiro, o desenho anti-colusão (preços de reserva, lotes anônimos, regras de atividade) mostra como a teoria de mecanismos se traduz em regras práticas.

    **Fonte:** FCC, *Auctions Summary*, 2024. Milgrom, P. (2004). *Putting Auction Theory to Work*. Cambridge University Press.

!!! example "Do pré-sal ao 5G: informação assimétrica e desenho de leilões"
    O Brasil tem sido um laboratório de formatos de leilão em setores estratégicos. Dois casos ilustram como o desenho do mecanismo afeta os resultados em presença de informação assimétrica.

    **Leilões do pré-sal ([ANP](https://www.gov.br/anp)):**

    Os blocos exploratórios do pré-sal são leiloados pela Agência Nacional do Petróleo (ANP) no formato de **partilha da produção**: o consórcio vencedor é aquele que oferece a maior parcela do "óleo-excedente" ao governo. Esse formato enfrenta o problema da **maldição do vencedor** (*winner's curse*): como o valor do bloco é parcialmente comum (depende das reservas geológicas), o licitante que vence tende a ser aquele que **superestimou** o valor do recurso. Licitantes sofisticados, como a Petrobras, ajustam seus lances para baixo — exatamente como prevê a teoria. Em 2025, o 3.º Ciclo de Oferta Permanente de Partilha arrecadou R$ 452 milhões em bônus de assinatura, com ágio médio de 91%.

    **Leilão do espectro 5G ([Anatel](https://www.gov.br/anatel), 2021):**

    O leilão das faixas de frequência para a tecnologia 5G utilizou formato de **lance selado de primeiro preço** com preço de reserva e arrecadou **R$ 4,8 bilhões**. O Teorema da Equivalência de Receita sugere que, sob condições ideais, o formato não deveria importar — mas as assimetrias de informação entre incumbentes (Vivo, Claro, TIM) e entrantes justificaram regras específicas, como lotes exclusivos para novos competidores.

    *Fonte: ANP, Boletim de Rodadas de Licitações, 2025; Anatel, Resultado do Leilão 5G, 2021.*

O exercício a seguir aplica a teoria de leilões a um caso numérico.

??? exercicio-resolvido "Exercício Resolvido 19.6 — Leilão de segundo preço (Vickrey)"
    **Enunciado:** Três colecionadores disputam uma obra de arte em um leilão de Vickrey. Suas valorações privadas são \(v_1 = 100\), \(v_2 = 80\), \(v_3 = 60\). (a) Qual é o lance ótimo de cada participante? (b) Quem vence e quanto paga? (c) Se as valorações fossem i.i.d. \(U[0, 120]\) (com \(n = 3\)), qual seria a estratégia de equilíbrio no leilão de primeiro preço?

    ---

    **(a)** No Vickrey, a estratégia dominante é \(b_i = v_i\): \(b_1 = 100\), \(b_2 = 80\), \(b_3 = 60\).

    **(b)** Licitante 1 vence (maior lance), paga o segundo maior lance: **R$ 80**. Excedente do vencedor: \(100 - 80 = 20\).

    **(c)** Com \(n = 3\) e \(v_i \sim U[0, 120]\), a estratégia de equilíbrio simétrico no primeiro preço é:

    \[
    \beta(v) = \frac{n-1}{n} \cdot v = \frac{2}{3} v
    \]

    Cada licitante oferta 2/3 de sua valoração (*bid shading*). Pelo Teorema da Equivalência de Receita, a receita esperada é a mesma nos dois formatos.

    **Interpretação:** No primeiro preço, os licitantes "escondem" parte de sua valoração para obter lucro. No segundo preço, revelam tudo porque o preço pago não depende do próprio lance. O resultado é o mesmo em expectativa — mas os caminhos são diferentes.

<iframe src="/micro-book/graficos/cap19/webr-leiloes.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 19.5 — Leilões: Vickrey vs. primeiro preço.** Compare estratégias, receitas e bid shading nos dois formatos. Verifique o Teorema da Equivalência de Receita com simulação Monte Carlo.

</div>

??? exercicio-resolvido "Exercício Resolvido 19.7 — Leilão de primeiro preço: estratégia de equilíbrio"
    **Enunciado:** Dois licitantes disputam um contrato de concessão em leilão de primeiro preço. Suas valorações são i.i.d. \(U[0, 1]\). (a) Derive a função de lance de equilíbrio simétrico. (b) Calcule a receita esperada do vendedor. (c) Verifique a equivalência de receita comparando com o leilão de Vickrey.

    ---

    **(a)** Com \(n = 2\) e \(v \sim U[0,1]\), no equilíbrio simétrico \(\beta(v) = \frac{n-1}{n} v = \frac{1}{2} v\).

    Derivação: cada licitante maximiza \((v - b) \cdot \Pr(\text{vencer})\). Com estratégia simétrica \(\beta(v) = \alpha v\), a probabilidade de vencer com lance \(b\) é \(\Pr(v_j < b/\alpha) = b/\alpha\). Maximizando \((v - b) \cdot b/\alpha\): CPO \(\Rightarrow v - 2b = 0 \Rightarrow b = v/2\). Logo \(\alpha = 1/2\). ✓

    **(b)** Receita = lance do vencedor = \(\frac{1}{2} \max(v_1, v_2)\). Com \(n = 2\) e \(U[0,1]\): \(\mathbb{E}[\max] = \frac{n}{n+1} = \frac{2}{3}\).

    Receita esperada = \(\frac{1}{2} \times \frac{2}{3} = \frac{1}{3}\).

    **(c)** No Vickrey: receita = segundo maior valor = \(\min(v_1, v_2)\). \(\mathbb{E}[\min] = \frac{1}{n+1} = \frac{1}{3}\). ✓ Equivalência verificada.

---

## 19.8 O Mapa da Ignorância: Taxonomia da Informação Assimétrica {#198}

Limões, seguros, diplomas, leilões — percorremos um desfile de problemas que, à primeira vista, parecem ter pouco em comum. Mas todos compartilham a mesma raiz: alguém sabe algo que o outro não sabe, e essa assimetria distorce o resultado. Para consolidar a compreensão desse rico arcabouço conceitual, é útil organizá-los em uma taxonomia que destaque as dimensões essenciais: o timing da assimetria (pré ou pós-contratual), a natureza da informação oculta (ação ou tipo) e os mecanismos disponíveis para atenuá-la.

Note que os problemas discutidos neste capítulo não são mutuamente exclusivos — na prática, muitas relações econômicas envolvem *simultaneamente* risco moral e seleção adversa. Um mercado de seguros, por exemplo, enfrenta seleção adversa (clientes de alto risco procuram mais cobertura) e risco moral (segurados protegidos se cuidam menos). Um contrato de trabalho lida com seleção adversa (o empregador não conhece a produtividade do candidato na contratação) e risco moral (não observa o esforço após a contratação). A interação entre os dois problemas gera complexidade adicional e é uma área ativa de pesquisa.

A [Tabela 19.3](#tabela-19-3) resume os principais tipos de problemas de informação assimétrica.

<a id="tabela-19-3"></a>

| Tipo de Assimetria | Timing | O que é oculto | Exemplos | Soluções de Mercado |
|---|---|---|---|---|
| **Risco moral** | Pós-contratual | Ação do agente | Seguro e prevenção; empregador e esforço; credor e devedor | Contratos de incentivo, monitoramento, franquias, bônus |
| **Seleção adversa** | Pré-contratual | Tipo/característica do agente | Carros usados; seguros (risco); crédito (qualidade) | Menu de contratos, triagem, sinalização, garantias |
| **Sinalização** | Pré-contratual | Tipo (revelado pela ação) | Educação; garantias; dividendos | Ações custosas com custo diferencial entre tipos |
| **Triagem (screening)** | Pré-contratual | Tipo (revelado pela escolha) | Classes tarifárias; menus de planos; versões de software | Menus autosseletivos, discriminação de 2.º grau |
| **Leilões** | Pré-contratual | Valoração dos licitantes | Arte, espectro, títulos, concessões | Formatos de leilão, preço de reserva |

<div class="caption-obj" markdown>
**Tabela 19.3 — Taxonomia dos problemas de informação assimétrica.**
</div>

!!! box-brasil "Box Brasil 19.1 — Crédito Consignado e Seleção Adversa"
    O **crédito consignado** — modalidade em que as parcelas são descontadas diretamente da folha de pagamento ou do benefício previdenciário — é um exemplo notável de como um desenho contratual pode reduzir drasticamente os problemas de informação assimétrica no mercado de crédito.

    **O problema:** No crédito pessoal convencional, o banco não observa perfeitamente o risco de inadimplência. Como resultado, cobra taxas que refletem o risco médio. Bons pagadores consideram a taxa elevada e desistem — seleção adversa clássica.

    **O mecanismo:** A vinculação do pagamento à folha atua em dois canais: (1) **redução do risco moral** — o tomador não pode escolher deixar de pagar; (2) **redução da seleção adversa** — o risco é drasticamente reduzido, tornando a diferença entre tipos menos relevante.

    **Evidência:** Em 2025, a taxa do consignado para servidores situava-se entre 1,3% e 1,8% ao mês (~17–24% a.a.), enquanto o crédito pessoal não consignado superava 80% a.a. — diferença que reflete a redução da assimetria de informação.

    **Expansão:** Regulamentado pela Lei n.º 10.820/2003, o crédito consignado atingiu saldo superior a R$ 600 bilhões, sendo estendido a aposentados, trabalhadores CLT e beneficiários de programas sociais.

    *Fonte: [BCB](https://www.bcb.gov.br), Relatório de Economia Bancária, 2024.*

!!! box-brasil "Box Brasil 19.2 — Proagro e Risco Moral no Seguro Agrícola"
    O **Programa de Garantia da Atividade Agropecuária (Proagro)**, criado em 1973 e regulamentado pelo Banco Central, é o principal instrumento público de seguro agrícola no Brasil. Ele cobre perdas de lavouras financiadas com crédito rural decorrentes de eventos climáticos adversos (seca, geada, granizo, chuva excessiva), pragas e doenças sem controle.

    **Contexto:** O Proagro cobria, em 2024, cerca de 560 mil operações anuais, com cobertura superior a R$ 15 bilhões em valores segurados. O programa é operacionalizado pelos agentes financeiros do Sistema Nacional de Crédito Rural (principalmente Banco do Brasil) e subvencionado pelo Tesouro Nacional. A adesão é voluntária para a maioria dos produtores, mas obrigatória para operações de crédito rural em regiões de maior risco.

    **Dados:** Estudos do BCB e da Embrapa apontam que a taxa de sinistralidade do Proagro oscilou entre 70% e 120% nas últimas décadas — ou seja, os pagamentos de indenização frequentemente superam os prêmios arrecadados. Em anos de seca severa (como 2012 no Nordeste e 2021 no Sul), a sinistralidade ultrapassou 150%.

    **Análise:** O Proagro ilustra classicamente o problema de **risco moral** no seguro: ao garantir cobertura contra perdas, o programa pode reduzir o incentivo do produtor a adotar práticas de mitigação de risco — como plantio em janelas ideais, uso de sementes resistentes à seca, irrigação e manejo integrado de pragas. Se o produtor sabe que será indenizado em caso de perda, o custo privado de ser descuidado diminui. Além disso, há risco moral na **dimensão de reporte**: produtores podem superestimar perdas em laudos de sinistro, especialmente quando a fiscalização é insuficiente. A elevada sinistralidade é evidência circunstancial (embora não conclusiva) de risco moral.

    **Mecanismos de mitigação:** O governo tem adotado medidas para atenuar o risco moral: (i) o **Proagro Mais** (desde 2004) exige uso do **Zoneamento Agrícola de Risco Climático (ZARC)** — um sistema que define janelas de plantio e cultivares recomendados por município, funcionando como requisito de precaução mínima; (ii) **monitoramento por sensoriamento remoto** (imagens de satélite) para verificar laudos de sinistro; (iii) **coparticipação** do produtor (franquia), que mantém "pele no jogo".

    **Para refletir:** O trade-off entre proteção ao agricultor familiar e incentivo à precaução é análogo ao trade-off entre seguro e incentivo discutido na Seção 19.3. Se o governo eliminasse o Proagro, muitos pequenos produtores não teriam acesso a crédito (pois os bancos exigem seguro como garantia). Mas se a cobertura é excessivamente generosa, a precaução diminui. Qual é o nível ótimo de coparticipação?

    *Fontes: [BCB](https://www.bcb.gov.br), Manual de Crédito Rural; [Embrapa](https://www.embrapa.br); MAPA, Relatório Proagro, 2024.*

!!! box-brasil "Box Brasil 19.3 — Cadastro Positivo e a redução da assimetria informacional no crédito"

    **Contexto:** O **Cadastro Positivo**, regulamentado pela Lei n.º 12.414/2011 e tornado automático pela Lei Complementar n.º 166/2019, é um banco de dados que registra o histórico de pagamentos de consumidores e empresas — não apenas as inadimplências (cadastro negativo, como SPC e Serasa), mas também os pagamentos realizados em dia. A inclusão automática, a partir de 2019, significou que todos os consumidores com CPF passaram a ter um perfil de crédito baseado em seu comportamento de pagamento, sem necessidade de adesão voluntária.

    **Dados:** Segundo dados do Banco Central e dos birôs de crédito (Serasa Experian, Boa Vista, Quod), o Cadastro Positivo incluiu automaticamente mais de 130 milhões de CPFs até 2024. Estimativas do BCB (*Relatório de Economia Bancária*, 2023) indicam que o Cadastro Positivo contribuiu para a redução do spread bancário em 2 a 5 pontos percentuais para tomadores com bom histórico, e para o aumento de 15–20% no volume de crédito concedido a consumidores que antes eram "invisíveis" ao sistema financeiro (sem histórico positivo ou negativo). A taxa média de juros do crédito pessoal caiu de 120% a.a. em 2019 para cerca de 85% a.a. em 2024, embora outros fatores (Selic, concorrência fintech) também contribuam.

    **Análise:** O Cadastro Positivo é uma solução institucional direta para o problema de seleção adversa no mercado de crédito (Seção 19.4). Sem informação sobre o histórico de pagamentos, o banco não distingue bons de maus pagadores e cobra uma taxa média que embute o risco de inadimplência dos piores tipos — exatamente o mecanismo de Akerlof. Bons pagadores consideram a taxa alta demais e desistem do crédito (ou buscam alternativas), configurando seleção adversa. O Cadastro Positivo funciona como um mecanismo de **revelação de tipos**: ao tornar observável o histórico de pagamentos, permite que bons pagadores sejam identificados e recompensados com taxas menores — reduzindo a assimetria de informação que sustenta spreads elevados. Em termos do modelo de Rothschild-Stiglitz (Seção 19.4.3), o Cadastro Positivo move o mercado de um equilíbrio separador ineficiente (com racionamento de crédito) para um equilíbrio mais próximo da informação completa.

    **Para refletir:** Se o Cadastro Positivo reduz a assimetria informacional, por que os spreads bancários no Brasil continuam entre os mais altos do mundo? A resposta envolve outras fontes de custo além da assimetria de informação: custos regulatórios, tributação (IOF), inadimplência estrutural, concentração bancária (Capítulo 15) e custos de recuperação judicial. A informação é necessária, mas não suficiente.

---

Começamos com um jogo de pôquer — ninguém vê as cartas dos outros — e terminamos com leilões que obrigam cada jogador a revelar o que sabe. Entre um extremo e outro, vimos mercados de limões colapsarem, seguradoras serem engolidas pelos piores clientes, e diplomas funcionarem como sinais caros de produtividade. A lição central é que a informação não é apenas um insumo da decisão — é uma variável estratégica que molda contratos, mercados e instituições inteiras.

*Informação assimétrica distorce mercados de dentro para fora. No próximo capítulo, as distorções vêm de fora: externalidades e bens públicos.*
