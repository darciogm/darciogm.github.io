# Capítulo 15 — Sozinho, Feliz e Cobrando Caro

Se no Capítulo 14 vivíamos no paraíso da concorrência perfeita — milhares de firmas, ninguém mandando em nada —, agora entramos no lado sombrio do mercado: um único vendedor, zero concorrência e um sorriso no rosto de quem define o preço. O monopólio representa a antítese da concorrência perfeita. Enquanto no modelo competitivo cada firma é uma tomadora de preço, incapaz de influenciar individualmente as condições de mercado, o monopolista é o único ofertante e, portanto, enfrenta toda a curva de demanda do mercado. Essa posição privilegiada lhe confere **poder de mercado** — a capacidade de fixar preços acima do custo marginal e obter lucros econômicos persistentes.

A análise do monopólio não é meramente teórica: monopólios naturais regulados dominam setores fundamentais da economia brasileira — energia elétrica, saneamento, telecomunicações fixas —, e o exercício de poder de mercado é uma preocupação central da política antitruste em todo o mundo. A fusão que criou a Ambev, os contratos de concessão da ANEEL, o teto de preços da ANATEL — todos esses casos envolvem, em sua essência, a economia do monopólio apresentada neste capítulo. Compreender como o monopolista fixa preços, por que essa fixação gera ineficiência e quais instrumentos regulatórios podem mitigá-la é, portanto, indispensável tanto para o economista teórico quanto para o formulador de políticas públicas.

Este capítulo examina as causas do monopólio, a lógica de sua maximização de lucro, as perdas de eficiência decorrentes do poder de mercado, as estratégias de discriminação de preços e os mecanismos de regulação. Ao longo da exposição, utilizaremos intensivamente os conceitos de receita marginal, elasticidade-preço e excedente desenvolvidos nos capítulos anteriores — em particular, a relação entre preço, custo marginal e elasticidade que constituirá o fio condutor de toda a análise. No Capítulo 16, generalizaremos essa estrutura para mercados com poucos competidores — os oligopólios —, onde a interação estratégica entre firmas substitui o isolamento do monopolista. Besanko & Braeutigam (2014, Caps. 11–12) oferecem tratamento acessível da teoria do monopólio com aplicações a mercados regulados.

---

## 15.1 Barreiras à entrada

Se o monopólio é tão lucrativo, por que todo mundo não entra nesse mercado e acaba com a festa? Imagine uma fortaleza medieval: o castelo só sobrevive porque tem muralhas, fossos e portões levadiços. O monopólio funciona da mesma forma — ele só se sustenta porque existem **barreiras à entrada**. Sem elas, o monopólio seria uma posição transitória, rapidamente contestada por rivais ávidos por lucro — como veremos na Seção 15.10 ao discutir mercados contestáveis. É precisamente a existência de obstáculos à entrada que permite ao monopolista sustentar sua posição privilegiada no longo prazo.

Historicamente, a reflexão sobre barreiras à entrada remonta pelo menos a Joe Bain (1956), que as classificou em três categorias — vantagens absolutas de custo, economias de escala e diferenciação de produto. A taxonomia moderna, apresentada a seguir, preserva a essência dessa classificação enquanto incorpora contribuições posteriores de Stigler (1968) e da teoria dos jogos.

### Barreiras legais

O Estado pode conceder a uma firma o direito exclusivo de operar em um mercado. Exemplos incluem:

- **Patentes**: conferem ao inventor o monopólio temporário sobre a exploração de uma inovação. No Brasil, a Lei de Propriedade Industrial (Lei 9.279/1996) estabelece prazo de 20 anos para patentes de invenção. Esse prazo resulta de um trade-off deliberado de política pública: um período mais longo aumenta o incentivo à inovação (recompensando o inventor com lucros de monopólio), mas prolonga a ineficiência alocativa associada ao poder de mercado.
- **Concessões e licenças**: o poder público pode restringir o número de operadores em um mercado, como ocorre nos serviços de distribuição de energia elétrica e nas concessões rodoviárias.
- **Direitos autorais**: protegem obras intelectuais contra reprodução não autorizada, garantindo aos criadores o controle sobre a exploração comercial de suas obras.

### Barreiras naturais

Em alguns mercados, as condições tecnológicas tornam ineficiente a presença de mais de uma firma. Isso ocorre quando há **economias de escala** significativas ao longo de toda a faixa relevante de produção. Note que a barreira é "natural" no sentido de que decorre da estrutura de custos, não de uma decisão governamental ou de uma ação estratégica — nenhuma lei proíbe a entrada, mas a tecnologia a torna economicamente inviável.

!!! definition "Monopólio Natural"
    Um mercado constitui um **monopólio natural** quando a função de custo é **subaditiva**, isto é, quando uma única firma pode produzir qualquer quantidade a um custo total menor do que duas ou mais firmas produzindo conjuntamente a mesma quantidade:

    \[
    C(q) < C(q_1) + C(q_2), \quad \text{para todo } q_1, q_2 > 0 \text{ com } q_1 + q_2 = q
    \]

    No caso de um único produto, a subaditividade é implicada por economias de escala ao longo de toda a faixa relevante de produção — ou seja, o custo médio é decrescente.

Exemplos clássicos incluem redes de distribuição de água, gás, eletricidade e telecomunicações fixas, nas quais a duplicação da infraestrutura seria socialmente custosa. É importante distinguir monopólio natural de monopólio *de fato*: uma firma pode ser a única no mercado por razões históricas ou estratégicas sem que o mercado seja um monopólio natural. A subaditividade dos custos é condição necessária para caracterizar o monopólio natural.

!!! idea "Intuição Econômica"
    **Em uma frase:** Em um monopólio natural, uma única empresa atende todo o mercado a um custo menor do que duas ou mais fariam — duplicar a infraestrutura seria desperdício.

    **Pense assim:** Pense na rede de água encanada do seu bairro. Faz sentido ter uma empresa com uma rede de canos, não duas redes paralelas competindo na mesma rua. O custo fixo de enterrar a tubulação é tão alto que, quanto mais casas uma única rede atende, menor o custo por casa. Construir uma segunda rede seria jogar dinheiro fora — literalmente cavar buracos à toa.

    **Por que isso importa:** É por isso que setores como saneamento, distribuição de energia e ferrovias são regulados por agências como [ANEEL](https://www.aneel.gov.br) e [ANA](https://www.gov.br/ana), em vez de simplesmente liberados à concorrência.

### Barreiras estratégicas

Além das barreiras criadas pela natureza da tecnologia ou pela ação do Estado, as próprias firmas incumbentes podem erguer obstáculos deliberados à entrada de concorrentes. Essas barreiras estratégicas refletem o comportamento racional de uma firma que antecipa a possibilidade de entrada e age preventivamente para torná-la não lucrativa. A análise formal dessas estratégias envolve teoria dos jogos e será aprofundada no Capítulo 16; aqui, destacamos os principais mecanismos.

Firmas incumbentes podem adotar comportamentos deliberados para dificultar a entrada de rivais:

- **Excesso de capacidade instalada**: sinaliza que o incumbente pode expandir a produção rapidamente em resposta à entrada, tornando-a não lucrativa. Spence (1977) formalizou esse argumento mostrando que o investimento em capacidade funciona como um compromisso crível (*commitment*).
- **Preços predatórios**: fixar preços temporariamente abaixo do custo para expulsar ou dissuadir concorrentes (prática ilícita no direito concorrencial brasileiro, conforme a Lei 12.529/2011). A eficácia dessa estratégia depende da capacidade financeira do incumbente de sustentar prejuízos temporários.
- **Proliferação de marcas**: ocupar nichos de mercado para reduzir o espaço disponível para entrantes — estratégia documentada empiricamente no mercado americano de cereais matinais por Schmalensee (1978).
- **Controle de insumos essenciais**: adquirir ou controlar o acesso a recursos sem os quais rivais não podem operar.

!!! box-mundo "Box Mundo 15.1 — Patentes farmacêuticas nos EUA: o preço do monopólio legal"

    **Contexto:** A indústria farmacêutica dos Estados Unidos é o exemplo contemporâneo mais saliente de monopólio criado por barreiras legais. Patentes de 20 anos conferem às empresas farmacêuticas o direito exclusivo de comercializar novas moléculas, gerando margens de lucro que figuram entre as maiores de qualquer indústria. Além disso, o *Hatch-Waxman Act* (1984) criou extensões de patente que podem estender a exclusividade por até 5 anos adicionais, além de períodos de exclusividade de dados de 5 a 12 anos para biológicos.

    **Dados:** Segundo o *Congressional Budget Office* (CBO), o preço médio dos medicamentos de marca nos EUA é 3,4 vezes maior do que em outros países do G7 (CBO, 2022). Quando uma patente expira e genéricos entram no mercado, o preço cai tipicamente 80–90% dentro de dois anos — uma demonstração direta do efeito do poder de monopólio sobre os preços. Em 2022, os americanos gastaram US\$ 405 bilhões em medicamentos prescritos (CMS National Health Expenditure Data). Estratégias como *pay-for-delay* — acordos nos quais o detentor da patente paga ao fabricante de genéricos para atrasar a entrada — custaram aos consumidores americanos US\$ 3,5 bilhões por ano, segundo estimativa da FTC (2010).

    **Análise:** A patente farmacêutica ilustra o dilema central do monopólio legal: sem a promessa de lucros temporários de monopólio, empresas teriam menos incentivo para investir os bilhões necessários ao desenvolvimento de novos medicamentos (o custo médio de levar um fármaco ao mercado é estimado em US\$ 1,3 bilhão pelo *Tufts Center for the Study of Drug Development*). Mas a duração e amplitude da proteção patentária determinam o tamanho da perda de peso morto imposta à sociedade durante a vigência do monopólio. O debate sobre a duração ótima de patentes é, essencialmente, uma análise de custo-benefício entre incentivo à inovação (benefício dinâmico) e ineficiência alocativa (custo estático) — tema que retomaremos na Seção 15.10.

    **Fonte:** Congressional Budget Office (2022). *Prescription Drugs: Spending, Use, and Prices*. FTC (2010). *Pay-for-Delay: How Drug Company Pay-Offs Cost Consumers Billions*. CMS National Health Expenditure Data, 2022.

---

## 15.2 Maximização de lucro do monopolista

Agora que sabemos *por que* o monopolista reina sozinho, vem a pergunta que realmente interessa: o que ele faz com todo esse poder? Imagine que você é o único vendedor de guarda-chuvas em uma cidade onde chove todos os dias. Você cobra quanto quiser? Não exatamente — se exagerar no preço, ninguém compra. O monopolista vive esse dilema: ele tem poder, mas não é onipotente. A resposta exige uma análise cuidadosa da relação entre receita marginal, custo marginal e elasticidade da demanda — relação esta que se tornará um instrumento analítico recorrente ao longo do restante do livro.

Diferentemente da firma competitiva, que toma o preço como dado e escolhe apenas a quantidade, o monopolista reconhece que suas decisões de quantidade afetam o preço de mercado. Ao expandir a produção, ele enfrenta dois efeitos opostos sobre a receita: o *efeito quantidade* (vende mais unidades) e o *efeito preço* (precisa reduzir o preço de *todas* as unidades, inclusive as que já venderia ao preço mais alto). Essa tensão entre os dois efeitos é a essência do problema de monopólio e explica por que a receita marginal é sempre inferior ao preço.

### O problema do monopolista

O monopolista enfrenta toda a curva de demanda do mercado. Se a demanda inversa é \(p(q)\), o problema de maximização é:

\[
\max_q \; \pi(q) = p(q) \cdot q - C(q)
\label{eq:15.1} \tag{15.1} \]

A condição de primeira ordem é:

\[
\frac{d\pi}{dq} = \underbrace{p(q) + q \cdot p'(q)}_{\text{Receita Marginal (RMg)}} - \underbrace{C'(q)}_{\text{Custo Marginal (CMg)}} = 0
\label{eq:15.2} \tag{15.2} \]

Portanto, a regra de maximização é:

\[
\boxed{RMg(q^m) = CMg(q^m)}
\label{eq:15.3} \tag{15.3} \]

A condição de segunda ordem exige que \(\frac{d^2\pi}{dq^2} < 0\), ou seja, que a receita marginal corte o custo marginal "de cima para baixo". Geometricamente, essa condição garante que o ponto encontrado é um máximo (e não um mínimo) de lucro.

Note que a expressão \(RMg = p + q \cdot p'(q)\) tem uma interpretação econômica direta: o primeiro termo é a receita obtida pela unidade adicional vendida; o segundo (negativo, pois \(p'(q) < 0\) para demanda decrescente) é a perda de receita nas unidades que já seriam vendidas ao preço mais alto. Para uma firma competitiva, \(p'(q) = 0\) (a firma não afeta o preço) e \(RMg = p\). Para o monopolista, \(RMg < p\): cada unidade adicional vale menos que seu preço, porque deprime o preço de todas as unidades.

No gráfico interativo abaixo, ajuste os parâmetros da demanda e do custo marginal para visualizar como o equilíbrio de monopólio se modifica. Observe que o monopolista sempre escolhe a quantidade onde a curva de \(RMg\) cruza a de \(CMg\), e o preço é lido sobre a curva de demanda — acima do \(CMg\).

<iframe src="../graficos/cap15/monopolio.html" title="Figura 15.1 — Equilíbrio de monopólio" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 15.1 — Equilíbrio de monopólio.** Ajuste os parâmetros da demanda (\(a\), \(b\)) e do custo marginal (\(c\)) para visualizar o equilíbrio de monopólio, o lucro, o excedente do consumidor, a perda de peso morto e o índice de Lerner. Compare com o resultado competitivo.
</div>

### Receita marginal e elasticidade

A receita marginal pode ser expressa em termos da elasticidade-preço da demanda \(\varepsilon_{p}\) (definida como valor negativo, \(\varepsilon_p < 0\)):

\[
RMg = p\left(1 + \frac{1}{\varepsilon_p}\right) = p\left(1 - \frac{1}{|\varepsilon_p|}\right)
\label{eq:15.4} \tag{15.4} \]

Pela equação $\eqref{eq:15.4}$, como o monopolista opera onde \(RMg > 0\), ele necessariamente produz na faixa **elástica** da demanda (\(|\varepsilon_p| > 1\)). Na faixa inelástica, a receita marginal seria negativa, e o monopolista poderia aumentar a receita (e o lucro) simplesmente reduzindo a produção — uma situação que contradiz a otimização. Esse resultado, embora simples, é frequentemente esquecido por alunos e tem implicações práticas importantes: se um governo observa que a demanda por um bem fornecido por um monopolista é inelástica, pode concluir que o monopolista não está maximizando lucro — ou que há restrições regulatórias limitando seu preço.

### A regra de markup

A relação entre receita marginal e elasticidade nos conduz a um resultado fundamental: o monopolista não fixa preços arbitrariamente, mas obedece a uma regra de markup que conecta o preço cobrado ao custo marginal e à sensibilidade dos consumidores a variações de preço. Quanto menos sensíveis forem os consumidores — isto é, quanto mais inelástica a demanda —, maior a margem que o monopolista consegue extrair.

Da condição \(RMg = CMg\), obtemos:

\[
p\left(1 - \frac{1}{|\varepsilon_p|}\right) = CMg \implies p = \frac{CMg}{1 - \frac{1}{|\varepsilon_p|}}
\label{eq:15.5} \tag{15.5} \]

O monopolista aplica um **markup** sobre o custo marginal que é inversamente proporcional à elasticidade-preço da demanda. Quando \(|\varepsilon_p| \to \infty\) (demanda perfeitamente elástica), o markup desaparece e \(p \to CMg\) — recuperamos o resultado competitivo. Quando \(|\varepsilon_p|\) é baixo (demanda inelástica), o markup explode — o monopolista extrai margens cada vez maiores. É essa relação que fundamenta toda a análise empírica do poder de mercado.

!!! definition "Índice de Lerner"
    O **índice de Lerner** mede o poder de mercado de uma firma como a diferença percentual entre preço e custo marginal:

    \[
    L = \frac{p - CMg}{p}
    \label{eq:15.6} \tag{15.6} \]

    Para uma firma em concorrência perfeita, \(L = 0\). Para um monopolista, \(L = \frac{1}{|\varepsilon_p|}\). O índice varia entre 0 e 1.

!!! idea "Intuição Econômica"
    **Em uma frase:** O markup do monopolista é maior quando os consumidores têm poucas alternativas — quanto mais "preso" o cliente, mais caro o produto.

    **Pense assim:** Compare o preço de uma garrafa d'água no supermercado (R$ 2) com o preço no estádio de futebol (R$ 10). No estádio, você não pode sair para comprar em outro lugar — sua demanda é inelástica — e o vendedor explora isso cobrando um markup enorme. No supermercado, com dez marcas na prateleira, ninguém consegue cobrar muito acima do custo. O índice de Lerner mede exatamente esse "poder de espremer" o consumidor.

    **Por que isso importa:** O [CADE](https://www.gov.br/cade) usa medidas como o índice de Lerner para avaliar se fusões e aquisições criarão poder de mercado excessivo — como na análise da fusão que criou a Ambev.

!!! warning "⚠️ Erro Comum"

    **Achar que o monopolista pode operar na faixa inelástica da demanda.**

    Um erro frequente é esquecer que o monopolista maximizador de lucro **nunca** produz na região onde \(|\varepsilon_p| < 1\). Na faixa inelástica, a receita marginal é negativa: ao reduzir a produção, a firma aumenta a receita *e* reduz o custo — logo, o lucro sobe. O monopolista sempre opera onde \(|\varepsilon_p| > 1\). Se uma questão de prova apresenta uma demanda com \(|\varepsilon_p| < 1\) no ponto calculado, revise o cálculo: algo está errado, ou trata-se de uma solução de canto.

O exercício a seguir aplica as ferramentas recém-desenvolvidas a um problema numérico completo, ilustrando cada etapa do cálculo do equilíbrio de monopólio.

??? exercicio-resolvido "Exercício Resolvido 15.1 — Monopólio com demanda linear: preço, lucro e PPM"
    **Enunciado.** Um monopolista enfrenta demanda \(p = 80 - 2q\) e tem custo total \(C(q) = 200 + 8q\). (a) Encontre preço, quantidade e lucro de monopólio. (b) Calcule o índice de Lerner. (c) Calcule a perda de peso morto e o excedente total. (d) Compare com o resultado competitivo.

    ---

    **(a)** A receita marginal é \(RMg = 80 - 4q\). Igualando ao custo marginal \(CMg = 8\):

    \[
    80 - 4q = 8 \implies q^m = 18, \quad p^m = 80 - 36 = 44
    \]

    Lucro: \(\pi = 44 \times 18 - (200 + 8 \times 18) = 792 - 344 = 448\).

    **(b)** Índice de Lerner: \(L = (p - CMg)/p = (44 - 8)/44 = 36/44 \approx 0{,}818\).

    Verificação pela elasticidade: no ponto de monopólio, \(\varepsilon_p = (dq/dp)(p/q) = (-1/2)(44/18) \approx -1{,}222\). Logo \(L = 1/|\varepsilon_p| = 1/1{,}222 \approx 0{,}818\). ✓

    **(c)** Resultado competitivo: \(p^c = CMg = 8\), \(q^c = (80-8)/2 = 36\).

    \[
    PPM = \frac{1}{2}(p^m - CMg)(q^c - q^m) = \frac{1}{2}(44 - 8)(36 - 18) = \frac{1}{2} \times 36 \times 18 = 324
    \]

    Excedente total sob monopólio: \(W^m = EC^m + EP^m\).

    \(EC^m = \frac{1}{2}(80 - 44)(18) = \frac{1}{2} \times 36 \times 18 = 324\).

    O excedente do produtor é a área acima do CMg: \(EP^m = (p^m - CMg) \times q^m = (44 - 8)(18) = 648\).

    \(W^m = 324 + 648 = 972\).

    **(d)** Sob concorrência perfeita: \(EC^c = \frac{1}{2}(80-8)(36) = 1.296\), \(EP^c = 0\) (com CMg constante). \(W^c = 1.296\).

    \(PPM = W^c - W^m = 1.296 - 972 = 324\). ✓

    **Interpretação:** O monopolista captura R$ 648 de excedente, mas destrói R$ 324 de bem-estar social que ninguém captura — o triângulo de Harberger.

---

## 15.3 Demonstração: derivação do índice de Lerner

A derivação formal a seguir explicita a conexão algébrica entre o poder de mercado do monopolista — medido pelo índice de Lerner — e a elasticidade-preço da demanda que ele enfrenta. Embora o resultado já tenha sido antecipado na seção anterior, a demonstração rigorosa é instrutiva porque revela a estrutura lógica subjacente e prepara o terreno para generalizações em contextos de oligopólio (Capítulo 16), onde o índice de Lerner de cada firma dependerá não apenas da elasticidade de mercado, mas também de sua participação de mercado e do grau de colusão.

!!! proof "Demonstração"
    Seja \(p(q)\) a demanda inversa do mercado e \(C(q)\) a função de custo do monopolista. O problema de maximização de lucro é:

    \[
    \max_q \; \pi(q) = p(q) \cdot q - C(q)
    \]

    A condição de primeira ordem é:

    \[
    \frac{d\pi}{dq} = p(q) + q \cdot p'(q) - C'(q) = 0
    \]

    Reescrevendo:

    \[
    p + q \cdot p'(q) = CMg
    \]

    Multiplicamos e dividimos o segundo termo por \(p\):

    \[
    p + p \cdot \frac{q \cdot p'(q)}{p} = CMg
    \]

    Observe que a elasticidade-preço da demanda é definida como:

    \[
    \varepsilon_p = \frac{dq}{dp} \cdot \frac{p}{q}
    \]

    Portanto:

    \[
    \frac{q \cdot p'(q)}{p} = \frac{q}{p} \cdot \frac{dp}{dq} = \frac{1}{\varepsilon_p}
    \]

    Substituindo:

    \[
    p\left(1 + \frac{1}{\varepsilon_p}\right) = CMg
    \]

    Rearranjando:

    \[
    p - CMg = -\frac{p}{\varepsilon_p}
    \]

    Dividindo ambos os lados por \(p\):

    \[
    \frac{p - CMg}{p} = -\frac{1}{\varepsilon_p} = \frac{1}{|\varepsilon_p|}
    \]

    Portanto:

    \[
    \boxed{L = \frac{p - CMg}{p} = \frac{1}{|\varepsilon_p|}}
    \label{eq:15.7} \tag{15.7} \]

    O índice de Lerner é igual ao inverso do valor absoluto da elasticidade-preço da demanda. Quanto mais inelástica a demanda (menor \(|\varepsilon_p|\)), maior o poder de mercado. Em concorrência perfeita, a firma enfrenta demanda perfeitamente elástica (\(|\varepsilon_p| \to \infty\)), de modo que \(L = 0\). \(\blacksquare\)

---

## 15.4 Ineficiência do monopólio

Até aqui, contamos a história do monopólio pelo ângulo do vilão — e, convenhamos, para o monopolista a vida é boa: ele escolhe preço, quantidade e vai dormir tranquilo. Mas e o resto da sociedade? Alguém está pagando a conta dessa tranquilidade. Em que medida o poder de mercado do monopolista compromete a eficiência alocativa que os Teoremas do Bem-Estar (Capítulo 14) garantem para mercados competitivos? A resposta a essas perguntas fundamenta a justificativa econômica para a regulação e a política antitruste — e, como veremos, envolve não apenas o conhecido "triângulo de Harberger", mas também custos mais sutis associados ao *rent-seeking* e à ineficiência organizacional.

### Perda de peso morto

O monopolista produz menos e cobra mais do que o resultado competitivo. Essa distorção gera uma **perda de peso morto** (PPM) — uma redução no excedente total que não é capturada por nenhum agente. A PPM representa transações mutuamente benéficas que deixam de ocorrer: consumidores que estariam dispostos a pagar mais do que o custo marginal de produção, mas são excluídos pelo preço de monopólio.

Considere um mercado com demanda linear \(p = a - bq\) e custo marginal constante \(CMg = c\).

**Resultado competitivo** (\(p = CMg\)):

\[
q^c = \frac{a - c}{b}, \quad p^c = c
\]

**Resultado monopolístico** (\(RMg = CMg\)):

\[
RMg = a - 2bq = c \implies q^m = \frac{a - c}{2b}, \quad p^m = \frac{a + c}{2}
\label{eq:15.8} \tag{15.8} \]

Pela equação $\eqref{eq:15.8}$, o monopolista produz **metade** da quantidade competitiva e cobra um preço **acima** do custo marginal. Essa relação — com demanda linear, a produção de monopólio é exatamente metade da competitiva — é um resultado útil que merece ser lembrado; ele decorre do fato de que, com demanda linear, a curva de \(RMg\) tem o mesmo intercepto e o dobro da inclinação da curva de demanda.

### O triângulo de Harberger

A perda de peso morto corresponde à área do triângulo entre a curva de demanda e o custo marginal, entre \(q^m\) e \(q^c\):

\[
PPM = \frac{1}{2}(p^m - c)(q^c - q^m) = \frac{(a-c)^2}{8b}
\label{eq:15.9} \tag{15.9} \]

Arnold Harberger (1954) pioneirou a mensuração empírica dessa perda e estimou que a PPM nos Estados Unidos seria da ordem de 0,1% do PIB — um valor surpreendentemente pequeno que provocou intenso debate na profissão. Estimativas posteriores, incorporando *rent-seeking* (os recursos desperdiçados na tentativa de obter ou manter o monopólio, como atividades de lobby) e ineficiências organizacionais (*X-inefficiency* de Leibenstein, 1966 — a ideia de que a ausência de pressão competitiva permite à firma operar aquém de sua fronteira de custos), sugerem valores significativamente maiores. Cowling e Mueller (1978) estimaram que o custo social do monopólio poderia chegar a 4–13% do PIB quando o lucro do monopolista é incluído como custo social (na hipótese de que é inteiramente dissipado em *rent-seeking*).

Richard Posner (1975) formalizou esse argumento: se firmas gastam recursos para obter e manter poder de mercado (por exemplo, em lobby, litígios e barreiras estratégicas), o custo social total pode ser muito maior que o triângulo de Harberger — podendo, no limite, ser tão grande quanto o retângulo de lucro do monopolista, como veremos no Exercício Resolvido 15.2.

!!! example "Poder de mercado e o CADE"
    O Conselho Administrativo de Defesa Econômica (CADE) utiliza o índice de Lerner e medidas correlatas para avaliar poder de mercado em atos de concentração e investigações de conduta. No caso da fusão Ambev (1999), o CADE estimou que a empresa resultante deteria cerca de 70% do mercado de cervejas, com significativo poder de precificação. Mais recentemente, em 2022, o CADE aplicou multa de R$ 539 milhões ao Google por abuso de posição dominante no mercado de *ad tech* — um caso em que o poder de mercado decorre não de barreiras tecnológicas clássicas, mas de efeitos de rede e controle de dados. O índice de Lerner é uma ferramenta analítica central nessas investigações: um \(L\) elevado e persistente sinaliza poder de mercado que justifica intervenção regulatória. A [Tabela 15.1](#tabela-15-1) compara os resultados dos dois regimes.

<a id="tabela-15-1"></a>

| Variável | Concorrência Perfeita | Monopólio | Variação |
|---|---|---|---|
| **Preço** | \(p^c = c\) | \(p^m = \frac{a+c}{2}\) | \(\uparrow\) |
| **Quantidade** | \(q^c = \frac{a-c}{b}\) | \(q^m = \frac{a-c}{2b}\) | \(\downarrow\) |
| **Excedente do Consumidor** | \(\frac{(a-c)^2}{2b}\) | \(\frac{(a-c)^2}{8b}\) | \(\downarrow\) |
| **Excedente do Produtor** | \(0\) | \(\frac{(a-c)^2}{4b}\) | \(\uparrow\) |
| **Excedente Total** | \(\frac{(a-c)^2}{2b}\) | \(\frac{3(a-c)^2}{8b}\) | \(\downarrow\) |
| **Perda de Peso Morto** | \(0\) | \(\frac{(a-c)^2}{8b}\) | — |

<div class="caption-obj" markdown>
**Tabela 15.1 — Comparação concorrência perfeita versus monopólio.**
</div>

!!! tip "Interpretação"
    A passagem de concorrência perfeita para monopólio envolve duas transferências: (i) parte do excedente do consumidor é capturada pelo monopolista (retângulo de transferência); (ii) parte do excedente total simplesmente desaparece (triângulo de Harberger). A PPM representa uma perda **líquida** de bem-estar social.

!!! idea "Intuição Econômica"
    **Em uma frase:** O monopólio produz menos e cobra mais do que um mercado competitivo, e a diferença de bem-estar que se perde no caminho não vai para ninguém — simplesmente evapora.

    **Pense assim:** Imagine que, em vez de vários postos de gasolina no bairro, houvesse apenas um. Ele reduziria a quantidade vendida e aumentaria o preço. Parte do que os consumidores perdem vai para o bolso do dono do posto (lucro de monopólio), mas outra parte — os litros que deixaram de ser vendidos porque o preço ficou alto demais — é pura perda. É como se alguém queimasse dinheiro: nem o consumidor nem o produtor ficam com ele.

    **Por que isso importa:** A perda de peso morto do monopólio é o principal argumento econômico para a existência de órgãos como o CADE, que combatem concentração excessiva de mercado para proteger o bem-estar dos consumidores brasileiros.

!!! box-mundo "Box Mundo 15.2 — O custo social do monopólio: de Harberger (EUA) à OCDE"

    **Contexto:** Quanto custa o monopólio para a sociedade? A resposta depende criticamente do que se inclui na conta. Arnold Harberger (1954), em estudo seminal com dados de 73 indústrias manufatureiras dos EUA no período 1924–1928, inaugurou a tradição de mensuração empírica das perdas de eficiência do poder de mercado — e obteve um resultado que surpreendeu a profissão por sua modéstia.

    **Dados:** A estimativa original de Harberger foi de apenas 0,1% do PIB americano — tão pequena que levantou a questão de se o monopólio era realmente um problema econômico relevante. Entretanto, estimativas posteriores usando metodologias mais abrangentes chegaram a valores muito maiores. Cowling e Mueller (1978), utilizando dados de firmas individuais nos EUA (734 firmas) e no Reino Unido, estimaram perdas de 4–13% do PIB americano e 3–7% do PIB britânico, ao incluir o lucro de monopólio como custo social (seguindo a lógica de Posner de que os lucros de monopólio são dissipados em *rent-seeking*). Mais recentemente, o *OECD Competition Assessment Toolkit* (2019) estima que reformas pró-concorrência em mercados com poder de mercado significativo podem elevar o PIB em 0,5% a 1,5% nos países membros — cifras que indicam perdas correntes nessa magnitude.

    **Análise:** A discrepância entre as estimativas reflete diferenças conceituais profundas sobre o que constitui o "custo social" do monopólio. O triângulo de Harberger captura apenas a ineficiência alocativa estática (transações não realizadas). A abordagem de Posner/Cowling-Mueller adiciona os custos de *rent-seeking* — recursos reais desviados para obter ou manter poder de mercado, como lobby, litígios e publicidade persuasiva. A teoria da *X-inefficiency* de Leibenstein (1966) sugere ainda que, na ausência de pressão competitiva, as firmas operam acima de sua fronteira de custos mínimos, gerando desperdício interno. Essas três fontes de custo — alocativo, *rent-seeking* e organizacional — se somam e podem tornar o monopólio um problema econômico substancial.

    **Fonte:** Harberger, A. C. (1954). Monopoly and resource allocation. *AER*, 44(2), 77–87. Cowling, K.; Mueller, D. C. (1978). The social costs of monopoly power. *Economic Journal*, 88(352), 727–748. OECD (2019). *Competition Assessment Toolkit*.

O exercício a seguir formaliza o argumento de Posner sobre os custos de *rent-seeking*.

??? exercicio-resolvido "Exercício Resolvido 15.2 — Custo social do monopólio com rent-seeking"
    **Enunciado.** Em um mercado com demanda \(p = 120 - 3q\), um monopolista tem \(CMg = 30\). (a) Calcule o equilíbrio de monopólio e a PPM (triângulo de Harberger). (b) Se o monopolista gasta até a totalidade do lucro em atividades de *rent-seeking* para manter o monopólio, qual é o custo social máximo? (c) Compare com o excedente total sob concorrência perfeita.

    ---

    **(a)** \(RMg = 120 - 6q = 30 \implies q^m = 15\), \(p^m = 120 - 45 = 75\).

    Lucro: \(\pi^m = (75 - 30) \times 15 = 675\).

    Resultado competitivo: \(p^c = 30\), \(q^c = (120-30)/3 = 30\).

    \[
    PPM = \frac{1}{2}(75 - 30)(30 - 15) = \frac{1}{2} \times 45 \times 15 = 337{,}5
    \]

    **(b)** Segundo Posner (1975), se o monopolista dissipa todo o lucro em *rent-seeking*, o custo social total é:

    \[
    CS_{\text{total}} = PPM + \pi^m = 337{,}5 + 675 = 1.012{,}5
    \]

    **(c)** Excedente total sob concorrência perfeita:

    \[
    W^c = EC^c = \frac{1}{2}(120 - 30)(30) = 1.350
    \]

    O custo social máximo (1.012,5) representa 75% do excedente competitivo. Sob monopólio com *rent-seeking* total, o bem-estar social restante seria apenas \(EC^m = \frac{1}{2}(120-75)(15) = 337{,}5\) — exatamente 25% do excedente competitivo.

    **Interpretação:** O triângulo de Harberger sozinho subestima o custo social do monopólio. Quando incluímos o desperdício de recursos em *rent-seeking*, o custo pode ser até três vezes maior. Este é o argumento central de Posner para uma política antitruste vigorosa.

---

## 15.5 Estática comparativa do monopólio

Estabelecido o equilíbrio de monopólio, podemos agora investigar como ele se altera diante de mudanças nos parâmetros exógenos. Que efeito tem um imposto sobre o preço e a quantidade de monopólio? Como o monopolista responde a um deslocamento da demanda? Essas perguntas de estática comparativa são particularmente relevantes para a formulação de políticas públicas, pois revelam como instrumentos tributários e regulatórios interagem com o poder de mercado. Os resultados, como veremos, diferem qualitativamente do caso competitivo — o que implica que intuições desenvolvidas para mercados competitivos podem ser enganosas quando aplicadas a mercados com poder de mercado.

### Efeito de um imposto unitário

Suponha que o governo impõe um imposto unitário \(t\) sobre cada unidade produzida. O novo custo marginal efetivo é \(CMg + t\). Com demanda linear:

\[
q^m(t) = \frac{a - c - t}{2b}, \quad p^m(t) = \frac{a + c + t}{2}
\label{eq:15.10} \tag{15.10} \]

Observe que \(\frac{dp^m}{dt} = \frac{1}{2}\): o monopolista repassa apenas **metade** do imposto ao consumidor. Isso contrasta com a concorrência perfeita, na qual, com oferta perfeitamente elástica, o repasse é integral. A diferença tem implicações diretas para a política tributária: um imposto sobre um monopolista é parcialmente absorvido pelo lucro da firma, o que pode ser desejável do ponto de vista distributivo — o monopolista "paga" metade do imposto.

!!! note "Repasse imperfeito"
    O fato de o monopolista absorver parte do imposto decorre da curvatura da curva de demanda que ele enfrenta. A incidência do imposto depende crucialmente da forma funcional da demanda: com demanda isoelástica (\(q = Ap^{\varepsilon}\)), por exemplo, o repasse pode *exceder* 100% — o preço sobe mais do que o valor do imposto. Esse resultado aparentemente paradoxal ocorre porque a demanda isoelástica é mais convexa que a linear, fazendo com que a \(RMg\) se desloque mais do que proporcionalmente. A forma funcional da demanda, portanto, é crucial para a análise de incidência tributária em mercados com poder de mercado.

### Deslocamento da demanda

Um aumento na demanda (deslocamento paralelo de \(a\) para \(a + \Delta\)) eleva tanto o preço quanto a quantidade de monopólio:

\[
\Delta p^m = \frac{\Delta}{2}, \quad \Delta q^m = \frac{\Delta}{2b}
\]

O lucro do monopolista é crescente e convexo na demanda, o que implica que o monopolista tem incentivos fortes para investir em publicidade ou atividades que expandam a demanda. Essa convexidade do lucro na demanda é uma propriedade geral do monopólio (não restrita à demanda linear) e tem uma consequência importante: o monopolista valora aumentos de demanda mais do que proporcionalmente, o que explica os elevados gastos em publicidade observados em mercados monopolísticos ou altamente concentrados.

No gráfico interativo abaixo, experimente ajustar o slider do imposto \(t\) e observe como o equilíbrio de monopólio se desloca. Note que o preço sobe apenas metade do valor do imposto, enquanto a quantidade cai. Observe também o retângulo de receita fiscal e como a perda de peso morto se altera.

<iframe src="../graficos/cap15/estatica-comparativa.html" title="Figura 15.2 — Estática comparativa: efeito de um imposto sobre o monopólio" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 15.2 — Estática comparativa: efeito de um imposto sobre o monopólio.** Ajuste o imposto unitário \(t\) e os parâmetros da demanda para visualizar como o equilíbrio se desloca. Observe que o monopolista repassa apenas metade do imposto (com demanda linear) e compare com o resultado competitivo.
</div>

??? exercicio-resolvido "Exercício Resolvido 15.3 — Imposto sobre o monopolista"
    **Enunciado.** Um monopolista enfrenta demanda \(p = 60 - q\) e tem \(CMg = 12\). O governo impõe imposto unitário \(t = 8\). (a) Encontre \((p, q, \pi)\) antes e depois do imposto. (b) Que fração do imposto é repassada ao consumidor? (c) Calcule a variação no excedente do consumidor.

    ---

    **(a) Antes do imposto:**

    \(RMg = 60 - 2q = 12 \implies q^m = 24\), \(p^m = 36\). \(\pi = (36-12)(24) = 576\).

    **Depois do imposto:** CMg efetivo = \(12 + 8 = 20\).

    \(RMg = 60 - 2q = 20 \implies q^m(t) = 20\), \(p^m(t) = 40\). \(\pi = (40 - 20)(20) = 400\).

    **(b)** Repasse: \(\Delta p = 40 - 36 = 4\). Fração repassada: \(4/8 = 50\%\). ✓ (Resultado geral para demanda linear.)

    **(c)** \(EC_{\text{antes}} = \frac{1}{2}(60-36)(24) = 288\).

    \(EC_{\text{depois}} = \frac{1}{2}(60-40)(20) = 200\).

    \(\Delta EC = 200 - 288 = -88\).

    **Interpretação:** O consumidor perde R$ 88 de excedente. O monopolista absorve R$ 176 de perda de lucro (\(576 - 400\)). A receita fiscal é \(8 \times 20 = 160\). A soma \(88 + 176 = 264\) excede a receita fiscal de 160 em \(264 - 160 = 104\) — esta diferença é o aumento na perda de peso morto causado pelo imposto.

---

## 15.6 Qualidade do produto sob monopólio

Até este ponto, tratamos o produto do monopolista como dado — variando apenas preço e quantidade. Na prática, porém, o monopolista também decide sobre a **qualidade** do que oferece. Será que um monopolista investe adequadamente em qualidade, ou a ausência de pressão competitiva o leva a oferecer produtos inferiores ao que seria socialmente desejável? A resposta, como veremos, é surpreendentemente ambígua — e depende de detalhes da distribuição de preferências entre os consumidores.

O monopolista também escolhe a **qualidade** \(s\) do produto. Se a demanda é \(p(q, s)\) e o custo é \(C(q, s)\), o problema torna-se:

\[
\max_{q, s} \; \pi(q, s) = p(q, s) \cdot q - C(q, s)
\]

A condição para a escolha ótima de qualidade é:

\[
\frac{\partial p}{\partial s} \cdot q = \frac{\partial C}{\partial s}
\label{eq:15.11} \tag{15.11} \]

O monopolista iguala a receita marginal da qualidade ao custo marginal da qualidade. A receita marginal da qualidade é avaliada no **consumidor marginal** (o último a adquirir o bem), não no consumidor médio. Se o consumidor marginal valora a qualidade menos que o consumidor médio — o que é plausível quando os consumidores com maior disposição a pagar também valorizam mais a qualidade —, o monopolista subprovê qualidade em relação ao ótimo social. Intuitivamente, o monopolista ajusta a qualidade para agradar ao consumidor que está "na margem" de comprar ou não, não ao consumidor que já está disposto a pagar caro.

!!! note "Qualidade e bem-estar"
    Spence (1975) demonstrou que o monopolista provê qualidade eficiente quando o consumidor marginal tem a mesma valoração de qualidade que o consumidor médio. Em geral, não há resultado inequívoco: o monopolista pode oferecer qualidade excessiva ou insuficiente. Esse resultado contrasta com a intuição popular de que "monopólio implica qualidade ruim" — na verdade, a direção da distorção depende de como as preferências por qualidade se distribuem entre os consumidores.

!!! idea "Intuição Econômica"
    **Em uma frase:** O monopolista ajusta a qualidade pensando no cliente que está quase desistindo de comprar — não no cliente mais entusiasmado.

    **Pense assim:** Imagine uma operadora de TV a cabo monopolista decidindo quantos canais oferecer. Ela não pergunta "quantos canais o cinéfilo fanático quer?", mas "quantos canais preciso para convencer a última família a assinar?". Se as famílias que assinam mais facilmente (alta disposição a pagar) também são as que mais valorizam variedade de canais, a operadora oferecerá *menos* canais do que seria socialmente ótimo — porque está calibrando pelo consumidor marginal, menos exigente.

    **Por que isso importa:** Esse resultado é relevante para a regulação de serviços monopolísticos no Brasil: a ANATEL, ao regular planos de telecomunicações, precisa considerar não apenas preços, mas também padrões mínimos de qualidade — porque o monopolista não tem incentivos automáticos para fornecer a qualidade socialmente desejável.

---

## 15.7 Discriminação de preços

Você já se perguntou por que a mesma passagem de avião custa R$ 400 para quem compra com antecedência e R$ 2.000 para quem compra na véspera — sendo que os dois sentam no mesmo avião, comem o mesmo amendoim e chegam ao mesmo destino? A resposta é que o monopolista (ou quase-monopolista) aprendeu um truque poderoso: abandonar a prática de preço único. Se o monopolista consegue identificar — ou induzir a autorevelação de — diferentes disposições a pagar entre consumidores, ele pode explorar essa heterogeneidade para extrair mais excedente do que seria possível com um preço uniforme. Essa prática, conhecida como discriminação de preços, é onipresente no mundo real e assume formas sofisticadas que variam de passagens aéreas a planos de software, de ingressos de cinema a tarifas de eletricidade.

A discriminação de preços exige duas condições: (i) algum grau de poder de mercado e (ii) impossibilidade de revenda (arbitragem) entre consumidores. A segunda condição é crucial: se consumidores que pagam preço baixo pudessem revender para os que pagam preço alto, a discriminação seria impossível. A taxonomia clássica, devida a Pigou (1920), distingue três graus de discriminação conforme a informação disponível ao monopolista.

### 15.7.1 Discriminação de primeiro grau (perfeita)

Na discriminação perfeita, o monopolista cobra de cada consumidor exatamente sua **disposição a pagar**. Cada unidade é vendida a um preço diferente — é o caso limite em que o monopolista possui informação perfeita sobre as preferências de cada consumidor individual.

!!! definition "Discriminação de Primeiro Grau"
    Na **discriminação de preços de primeiro grau**, o monopolista extrai todo o excedente do consumidor, cobrando o preço máximo que cada consumidor está disposto a pagar por cada unidade.

Resultado:

- A quantidade produzida é **eficiente**: \(q = q^c\) (idêntica à concorrência perfeita).
- Não há perda de peso morto.
- Todo o excedente é capturado pelo produtor: \(EC = 0\), \(EP = \frac{(a-c)^2}{2b}\).

A discriminação perfeita é um caso limite teórico — na prática, o monopolista raramente conhece as disposições a pagar individuais. Sua importância analítica reside em dois pontos: primeiro, ela serve como benchmark contra o qual comparar as demais formas de discriminação; segundo, ela mostra que o poder de mercado *per se* não gera ineficiência alocativa — é a *uniformidade* do preço que gera a PPM. Se o monopolista pudesse cobrar preços diferentes de cada consumidor, a eficiência seria restaurada (embora a distribuição do excedente fosse radicalmente diferente).

### 15.7.2 Discriminação de segundo grau (não-linear)

A discriminação de primeiro grau é um caso limite que pressupõe informação perfeita sobre cada consumidor — uma hipótese heroica na maioria dos contextos reais. O que acontece quando o monopolista sabe que os consumidores diferem em suas preferências, mas não consegue observar diretamente o "tipo" de cada um? Nesse cenário, o monopolista recorre a uma estratégia engenhosa: em vez de atribuir preços a consumidores, ele oferece um menu de opções e deixa que os próprios consumidores se revelem por meio de suas escolhas. Esse é um caso particular do problema de desenho de mecanismos sob informação assimétrica, formalizado por Mirrlees (Nobel 1996) e Maskin (Nobel 2007).

Quando o monopolista não observa as características dos consumidores, ele pode oferecer um **menu de contratos** (combinações preço-quantidade) e permitir que os consumidores se **autosselecionem**. Consumidores com alta disposição a pagar escolhem o pacote premium; consumidores com baixa disposição escolhem o pacote básico.

A estrutura ótima envolve:

- O tipo de **alta valoração** recebe a quantidade eficiente, mas paga um preço que lhe deixa algum excedente (renda informacional).
- O tipo de **baixa valoração** recebe uma quantidade **distorcida para baixo** (abaixo do eficiente) e extrai exatamente zero de excedente.

Essa distorção no consumo do tipo baixo é o custo da **compatibilidade de incentivos**: é necessário tornar o pacote básico suficientemente pouco atrativo para que o tipo alto não queira "imitar" o tipo baixo e capturar renda informacional excessiva.

!!! tip "Exemplos práticos"
    - Passagens aéreas com classes tarifárias (econômica, executiva, primeira classe).
    - Versões de software (básica, profissional, enterprise).
    - Descontos por quantidade em supermercados.
    - Planos de streaming com e sem anúncios.

!!! box-brasil "Box Brasil 15.1 — Discriminação de preços nas passagens aéreas"
    O mercado brasileiro de aviação civil, dominado por três companhias (Latam, Gol e Azul, que juntas detêm mais de 98% do mercado doméstico segundo dados da [ANAC](https://www.anac.gov.br)), é um exemplo rico de discriminação de preços de segundo e terceiro grau.

    **Discriminação de segundo grau (autosseleção):**

    As companhias oferecem múltiplas classes tarifárias para o mesmo voo — desde tarifas promocionais sem direito a bagagem ou remarcação até tarifas flexíveis com reembolso integral. Passageiros corporativos, com alta disposição a pagar e demanda inelástica (viagens de última hora), autosselecionam-se para tarifas mais caras. Passageiros a lazer, com demanda elástica e flexibilidade de datas, escolhem as tarifas promocionais. Essa estrutura replica o menu de contratos descrito na teoria: o tipo de alta valoração paga mais, mas recebe serviços adicionais.

    **Discriminação de terceiro grau (segmentação observável):**

    Companhias oferecem tarifas diferenciadas para idosos (desconto de 5% obrigatório pela ANAC), estudantes e militares. A segmentação por antecedência de compra (preços mais baixos para compras com 30-60 dias de antecedência) também funciona como discriminação de terceiro grau, separando viajantes a lazer (antecedência) de viajantes corporativos (última hora).

    Segundo dados da ANAC, a tarifa aérea média doméstica por km variou entre R$ 0,35 e R$ 0,55 em 2023, mas a dispersão de preços dentro de um mesmo voo pode facilmente superar 300% — evidência direta de discriminação de preços.

### 15.7.3 Discriminação de terceiro grau (segmentação de mercados)

Na discriminação de terceiro grau, o monopolista divide os consumidores em **grupos observáveis** (por exemplo, por idade, localização, status profissional) e cobra preços diferentes de cada grupo. Diferentemente da discriminação de segundo grau, aqui a firma observa diretamente a que grupo cada consumidor pertence e condiciona o preço a essa observação.

Se há dois mercados com demandas \(p_1(q_1)\) e \(p_2(q_2)\), o monopolista resolve:

\[
\max_{q_1, q_2} \; p_1(q_1) \cdot q_1 + p_2(q_2) \cdot q_2 - C(q_1 + q_2)
\]

As condições de primeira ordem são:

\[
RMg_1(q_1) = RMg_2(q_2) = CMg(q_1 + q_2) \label{eq:15.12} \tag{15.12}
\]

A equação $\eqref{eq:15.12}$ mostra que o monopolista iguala as receitas marginais em todos os mercados ao custo marginal. O mercado com demanda **mais inelástica** paga o preço **mais alto**:

\[
\frac{p_1}{p_2} = \frac{1 - \frac{1}{|\varepsilon_2|}}{1 - \frac{1}{|\varepsilon_1|}}
\label{eq:15.13} \tag{15.13} \]

Essa equação formaliza a intuição de que o monopolista "espreme" mais os consumidores com poucas alternativas. A razão de preços entre mercados depende exclusivamente da razão de elasticidades — e não dos custos, que são comuns. É por isso que passagens aéreas para executivos custam mais do que para turistas: não porque custe mais transportar um executivo, mas porque ele é menos sensível ao preço.

!!! idea "Intuição Econômica"
    **Em uma frase:** Discriminar preços significa cobrar mais de quem está mais disposto a pagar e menos de quem é mais sensível ao preço.

    **Pense assim:** Pense nas passagens aéreas da Latam ou Gol. O executivo que compra na véspera paga R$ 2.000 porque *precisa* viajar (demanda inelástica). O estudante que compra com dois meses de antecedência paga R$ 400 porque tem flexibilidade (demanda elástica). A companhia aérea não está sendo "generosa" com o estudante — está maximizando lucro ao extrair mais de quem pode pagar mais e ainda assim vender para quem pagaria menos.

    **Por que isso importa:** A discriminação de preços pode, em alguns casos, aumentar a quantidade total vendida e até reduzir a perda de peso morto — o que complica o juízo de política concorrencial e exige análise caso a caso pelo CADE.

!!! box-mundo "Box Mundo 15.3 — Discriminação de preços nas ferrovias europeias"

    **Contexto:** O transporte ferroviário europeu oferece um exemplo notável de discriminação de preços sofisticada, combinando técnicas de segundo e terceiro grau em escala continental. Operadoras como a Deutsche Bahn (Alemanha), a SNCF (França) e a Eurostar (Londres–Paris–Bruxelas) praticam estratégias de precificação que espelham as do setor aéreo, com uma particularidade: as ferrovias europeias operam em um regime de concorrência limitada, protegidas pela infraestrutura fixa das linhas férreas (uma barreira natural clássica).

    **Dados:** Uma passagem Eurostar Londres–Paris pode variar de £39 (compra com 3 meses de antecedência, horário fora de pico) a £400+ (compra de última hora, horário de pico, classe business) — uma razão de preços superior a 10:1 para o mesmo trajeto. A Deutsche Bahn oferece o sistema *BahnCard*: uma tarifa em duas partes (Seção 15.8) na qual o passageiro paga uma anuidade (€59,90 para BahnCard 25; €244,90 para BahnCard 50) e recebe, em troca, desconto de 25% ou 50% em todas as viagens. Segundo dados da Deutsche Bahn (Relatório Anual 2023), mais de 5 milhões de passageiros possuem algum tipo de BahnCard — evidência de que a tarifa em duas partes é eficaz na extração de excedente de viajantes frequentes.

    **Análise:** A estrutura tarifária das ferrovias europeias combina discriminação de terceiro grau (descontos para jovens, idosos e grupos) com discriminação de segundo grau (autosseleção por antecedência de compra e classe de serviço). O sistema BahnCard é particularmente elegante do ponto de vista teórico: funciona exatamente como a tarifa em duas partes da Seção 15.8, onde a anuidade é a taxa de entrada \(T\) e o desconto reduz o preço marginal por viagem \(p\). Viajantes frequentes (alta demanda, tipo A) se autosselecionam para BahnCards mais caras, revelando sua alta disposição a pagar.

    **Fonte:** Eurostar Group Limited, *Annual Report 2023*. Deutsche Bahn AG, *Integrated Report 2023*. European Commission, DG MOVE, *Statistical Pocketbook: EU Transport in Figures 2023*.

No gráfico interativo abaixo, alterne entre os três graus de discriminação e observe como cada tipo afeta a extração de excedente e a eficiência alocativa.

<iframe src="../graficos/cap15/discriminacao-precos.html" title="Figura 15.3 — Discriminação de preços" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 15.3 — Discriminação de preços.** Alterne entre discriminação de 1º grau (perfeita), 2º grau (tarifa em duas partes) e 3º grau (dois mercados). Observe como cada tipo afeta a extração de excedente e a eficiência alocativa.
</div>

O exercício a seguir aplica a discriminação de terceiro grau a um problema com dois mercados.

??? exercicio-resolvido "Exercício Resolvido 15.4 — Discriminação de terceiro grau com dois mercados"
    **Enunciado.** Um monopolista vende em dois mercados: \(p_1 = 120 - 2q_1\) e \(p_2 = 80 - q_2\). O custo marginal é constante \(CMg = 20\). (a) Com discriminação de 3º grau, encontre preços e quantidades em cada mercado. (b) Calcule os índices de Lerner e relacione com as elasticidades. (c) Calcule o lucro total.

    ---

    **(a)** Receitas marginais: \(RMg_1 = 120 - 4q_1\) e \(RMg_2 = 80 - 2q_2\).

    Igualando ao CMg:

    \[
    120 - 4q_1 = 20 \implies q_1 = 25, \quad p_1 = 120 - 50 = 70
    \]

    \[
    80 - 2q_2 = 20 \implies q_2 = 30, \quad p_2 = 80 - 30 = 50
    \]

    **(b)** Lerner no mercado 1: \(L_1 = (70-20)/70 = 50/70 \approx 0{,}714\).

    Elasticidade: \(\varepsilon_1 = (-1/2)(70/25) = -1{,}4\), logo \(L_1 = 1/1{,}4 \approx 0{,}714\). ✓

    Lerner no mercado 2: \(L_2 = (50-20)/50 = 30/50 = 0{,}60\).

    Elasticidade: \(\varepsilon_2 = (-1)(50/30) = -1{,}667\), logo \(L_2 = 1/1{,}667 = 0{,}60\). ✓

    O mercado 1 tem demanda mais inelástica (\(|\varepsilon_1| = 1{,}4 < |\varepsilon_2| = 1{,}667\)) e paga o preço mais alto (\(p_1 = 70 > p_2 = 50\)). Isso confirma a regra: o monopolista cobra mais do segmento com demanda mais inelástica.

    **(c)** Lucro total:

    \[
    \pi = (70 - 20)(25) + (50 - 20)(30) = 1.250 + 900 = 2.150
    \]

??? exercicio-resolvido "Exercício Resolvido 15.5 — Comparação dos três regimes: concorrência, monopólio e discriminação perfeita"
    **Enunciado.** Considere demanda \(p = 50 - q\) e \(CMg = 10\) (constante, sem custos fixos). (a) Encontre \((p, q, \pi)\) sob: (i) concorrência perfeita; (ii) monopólio com preço único; (iii) discriminação de primeiro grau. (b) Para cada caso, calcule EC, EP e PPM.

    ---

    **(a)**

    **(i) Concorrência perfeita:** \(p = CMg = 10\), \(q^c = 40\). \(\pi = 0\).

    **(ii) Monopólio:** \(RMg = 50 - 2q = 10 \implies q^m = 20\), \(p^m = 30\). \(\pi = (30-10)(20) = 400\).

    **(iii) Discriminação perfeita:** \(q^{dp} = q^c = 40\) (quantidade eficiente). O monopolista cobra a disposição a pagar de cada consumidor. \(\pi = \frac{1}{2}(50-10)(40) = 800\).

    **(b)**

    | Regime | EC | EP | PPM | W = EC + EP |
    |---|---|---|---|---|
    | Concorrência | 800 | 0 | 0 | 800 |
    | Monopólio | 200 | 400 | 200 | 600 |
    | Disc. perfeita | 0 | 800 | 0 | 800 |

    **Interpretação:** A discriminação perfeita restaura a eficiência alocativa (\(PPM = 0\)), mas redistribui todo o excedente para o produtor. O excedente total é o mesmo que em concorrência perfeita (800), mas o consumidor não fica com nada. Isso mostra que eficiência e equidade são questões distintas — um tema central do Capítulo 14 (Teoremas do Bem-Estar).

---

## 15.8 Tarifas em duas partes

Se você já pagou mensalidade de academia e *depois* pagou por aula extra, ou comprou o cartão do Sam's Club para ter o "privilégio" de comprar lá dentro, você já foi vítima (voluntária) de uma tarifa em duas partes. Essa é uma das formas mais elegantes e difundidas de precificação não-linear. Diferentemente dos esquemas de discriminação discutidos na seção anterior, que exigem observar ou induzir a revelação de tipos, a tarifa em duas partes combina simplicidade operacional com capacidade de extração de excedente, razão pela qual é amplamente utilizada em setores que vão de telecomunicações a academias de ginástica, de parques de diversões a clubes de compras.

Uma tarifa em duas partes consiste em uma **taxa de entrada** (tarifa fixa \(T\)) e um **preço por unidade** (\(p\)). O gasto total do consumidor é \(G = T + p \cdot q\). O papel de cada componente é distinto: a taxa fixa extrai excedente inframarginal (que o consumidor obteria ao preço \(p\)); o preço por unidade governa a quantidade demandada e, portanto, a eficiência alocativa.

### Consumidores homogêneos

Se todos os consumidores são idênticos, a estratégia ótima é simples e elegante:

1. Fixar \(p = CMg\) (preço eficiente).
2. Fixar \(T = EC\) (capturar todo o excedente do consumidor).

Isso replica o resultado da discriminação de primeiro grau: quantidade eficiente e extração completa do excedente. A intuição é direta: o preço unitário garante eficiência (elimina a PPM) e a taxa fixa transfere todo o benefício para o produtor.

### Consumidores heterogêneos

Com consumidores heterogêneos, o problema é mais complexo e envolve o trade-off fundamental da discriminação de segundo grau: extrair mais de cada consumidor versus manter consumidores de baixa demanda no mercado. Se a taxa de entrada for muito alta, consumidores com baixa demanda deixam o mercado. O monopolista enfrenta um trade-off entre:

- Cobrar uma taxa alta e perder consumidores marginais.
- Cobrar uma taxa baixa e atender mais consumidores, mas extrair menos excedente de cada um.

A solução ótima tipicamente envolve \(p > CMg\) e \(T < EC\) do consumidor com menor demanda. O preço acima do custo marginal gera uma PPM residual — o custo da heterogeneidade informacional.

!!! tip "Exemplos de tarifas em duas partes"
    - Clubes de compras como o Sam's Club (anuidade + preço por produto).
    - Parques de diversões como a Disney (entrada + valor por brinquedo — ou entrada com tudo incluso, que é um caso limite).
    - Planos telefônicos (assinatura mensal + tarifa por minuto/dados).
    - Serviços de streaming (assinatura fixa com acesso ao catálogo).
    - Academias de ginástica (mensalidade + taxa por aula ou mensalidade fixa com acesso livre).

??? exercicio-resolvido "Exercício Resolvido 15.6 — Tarifa em duas partes com dois tipos de consumidores"
    **Enunciado.** Uma academia de ginástica (monopolista local) cobra tarifa em duas partes \((T, p)\) por aula. Tipo A: \(q_A = 30 - p\), 50 consumidores. Tipo B: \(q_B = 20 - p\), 50 consumidores. \(CMg = 2\) por aula. (a) Se a academia atende ambos os tipos, encontre \((T^*, p^*)\). (b) Se atende apenas o Tipo A, encontre \((T^*, p^*)\) e compare os lucros.

    ---

    **(a) Atendendo ambos os tipos:**

    A taxa fixa é limitada pelo excedente do Tipo B (o mais restrito): \(T = EC_B(p) = \frac{1}{2}(20-p)^2\).

    Lucro total: \(\Pi = 50 \times [\text{lucro por A}] + 50 \times [\text{lucro por B}]\), onde o lucro por consumidor é \(T + (p-2) \cdot q_i\).

    Após simplificação e otimização (derivando em relação a \(p\)):

    \[
    \frac{d\Pi}{dp} = 0 \implies p^* = 7
    \]

    Logo \(T^* = \frac{1}{2}(20-7)^2 = 84{,}50\). Quantidades: \(q_A = 23\), \(q_B = 13\).

    Lucro por A: \(84{,}50 + (7-2)(23) = 199{,}50\). Lucro por B: \(84{,}50 + (7-2)(13) = 149{,}50\).

    \(\Pi = 50 \times (199{,}50 + 149{,}50) = 17.450\).

    **(b) Atendendo apenas o Tipo A:**

    Maximizar extração sobre A: \(p^* = CMg = 2\), \(T^* = EC_A(2) = \frac{1}{2}(30-2)^2 = 392\).

    Verificação: Tipo B não participa, pois \(EC_B(2) = \frac{1}{2}(18)^2 = 162 < T = 392\). ✓

    \(\Pi = 50 \times 392 = 19.600\).

    **Resultado:** Atender apenas o Tipo A (\(\Pi = 19.600\)) é mais lucrativo do que atender ambos (\(\Pi = 17.450\)). O monopolista prefere excluir o Tipo B e extrair o máximo do Tipo A — ilustrando como a heterogeneidade de demanda pode levar à exclusão ineficiente de consumidores.

---

## 15.9 Regulação de monopólios

As seções anteriores documentaram os custos sociais do monopólio — perda de peso morto, distorção de preços e quantidades — e as estratégias que o monopolista utiliza para maximizar a extração de excedente. Diante dessas ineficiências, surge naturalmente a questão: o que a sociedade pode fazer? Em mercados onde o monopólio pode ser eliminado (por exemplo, removendo barreiras legais desnecessárias), a promoção da concorrência é o caminho mais direto. Mas em monopólios naturais — nos quais a tecnologia torna ineficiente a presença de múltiplas firmas — a regulação torna-se o instrumento central de política pública.

O dilema central da regulação é: como induzir a firma a produzir mais e cobrar menos, sem eliminar seus incentivos ao investimento e à eficiência? Como veremos, os diferentes regimes regulatórios representam soluções distintas para esse dilema, cada uma com seus trade-offs.

### Regulação pelo custo marginal (first-best)

A solução ideal seria impor \(p = CMg\). Entretanto, em um monopólio natural com custos médios decrescentes, \(CMg < CMe\), de modo que \(p = CMg\) gera **prejuízo**. A firma não cobre seus custos fixos e, a menos que receba um subsídio, sairá do mercado. O governo precisaria subsidiar a firma, o que acarreta distorções em outros mercados (custo dos fundos públicos). Estimativas típicas do custo marginal dos fundos públicos no Brasil variam de 0,20 a 0,50 — ou seja, cada R$ 1 de subsídio impõe um custo adicional de R$ 0,20 a R$ 0,50 em distorções tributárias em outros mercados.

### Regulação pelo custo médio (second-best)

A alternativa mais comum é impor \(p = CMe\), garantindo lucro zero. A firma produz mais do que o monopólio sem regulação, mas menos do que o first-best. Há uma PPM residual, menor que a do monopólio não regulado. Esse é o modelo conceitual por trás da regulação das distribuidoras de energia no Brasil pela ANEEL: nas revisões tarifárias periódicas, a agência calcula uma "receita requerida" que cobre os custos eficientes (não os custos reais, para preservar incentivos) e divide pelo volume esperado de energia, chegando a uma tarifa que, em princípio, garante lucro econômico zero.

### Regulação por teto de preços (price cap)

O regulador fixa um teto de preço que é reajustado periodicamente pela inflação menos um fator de produtividade:

\[
\Delta p \leq \text{inflação} - X
\]

O fator \(X\) captura ganhos de eficiência esperados. A firma retém ganhos de produtividade acima de \(X\) até a próxima revisão, o que incentiva a redução de custos. Entre as revisões, a firma é uma "maximizadora residual" — quanto mais cortar custos, maior seu lucro. Esse incentivo à eficiência é a principal vantagem do price cap sobre a regulação por taxa de retorno.

!!! note "Vantagem do price cap"
    O sistema de price cap, introduzido no Reino Unido por Stephen Littlechild (1983) para a privatização da British Telecom, possui vantagens informacionais sobre a regulação por taxa de retorno: o regulador não precisa conhecer detalhadamente a estrutura de custos da firma. Em contrapartida, pode induzir redução de qualidade se os padrões de serviço não forem adequadamente monitorados — razão pela qual reguladores como a ANATEL complementam o price cap com metas de qualidade.

### Regulação por taxa de retorno (rate of return)

O regulador permite que a firma obtenha uma taxa de retorno "justa" \(s\) sobre o capital investido \(K\):

\[
pq - wL - rK \leq (s - r)K
\label{eq:15.14} \tag{15.14} \]

Averch e Johnson (1962) demonstraram que esse esquema induz a firma a **sobreinvestir em capital** para inflar a base de remuneração — o chamado **efeito Averch-Johnson**. A firma substitui trabalho por capital além do socialmente ótimo, resultando em ineficiência produtiva. Intuitivamente, se a firma lucra proporcionalmente ao capital empregado, ela tem incentivo para empregar mais capital do que o necessário — como um taxista que compra um carro de luxo desnecessário se pudesse repassar o custo ao regulador. Esse resultado é um exemplo clássico de consequências não intencionais da regulação.

!!! info "🏅 Prêmio Nobel — Jean Tirole (2014)"

    **Jean Tirole** (1953–presente) é um economista francês. Obteve o PhD no MIT sob orientação de Eric Maskin e é professor na Toulouse School of Economics (TSE), que ajudou a transformar em um dos principais centros de pesquisa econômica do mundo.

    **Por que ganhou o Nobel:**
    Premiado por sua análise do poder de mercado e da regulação. Tirole desenvolveu a teoria moderna de regulação de monopólios sob informação assimétrica (com Jean-Jacques Laffont), mostrando como desenhar contratos regulatórios quando o regulador não conhece os custos da firma. Suas contribuições à organização industrial unificaram a teoria do monopólio, oligopólio e barreiras à entrada em um framework analítico coerente baseado na teoria dos jogos.

    **Conexão com este capítulo:**
    A análise de regulação de monopólio natural — regulação por custo marginal, custo médio e tarifas em duas partes — apresentada neste capítulo é o ponto de partida da agenda de pesquisa de Tirole. Sua contribuição foi mostrar que, na prática, o regulador enfrenta informação assimétrica sobre os custos da firma, o que torna o problema de regulação fundamentalmente um problema de desenho de mecanismos — conectando este capítulo diretamente ao Capítulo 19 (Informação Assimétrica).

!!! box-brasil "Box Brasil 15.2 — Monopólios naturais regulados: o setor elétrico e telecomunicações pós-privatização"
    O Brasil passou por extenso processo de privatização e regulação de monopólios naturais nos anos 1990. Dois casos emblemáticos ilustram os desafios da regulação:

    **Setor Elétrico**

    A reestruturação do setor elétrico brasileiro, iniciada em 1995 (Lei 8.987/1995 e Lei 9.074/1995), separou as atividades de geração, transmissão e distribuição. A distribuição de energia — um monopólio natural em cada área de concessão — é regulada pela ANEEL (Agência Nacional de Energia Elétrica), criada em 1996. A ANEEL realiza revisões tarifárias periódicas (a cada 4 ou 5 anos) utilizando o modelo de **empresa de referência** e aplica reajustes anuais baseados no IGP-M. Segundo dados da ANEEL, o Brasil possui 53 distribuidoras reguladas, atendendo mais de 90 milhões de unidades consumidoras. A tarifa média residencial brasileira, em 2024, situava-se entre R$ 0,60 e R$ 0,90 por kWh (com tributos), uma das mais altas do mundo em proporção à renda.

    **Telecomunicações**

    A privatização do Sistema Telebrás em 1998 transferiu ao setor privado o monopólio estatal de telecomunicações. A [ANATEL](https://www.anatel.gov.br) (Agência Nacional de Telecomunicações), criada pela Lei 9.472/1997, regula concessões e autorizações. Na telefonia fixa, as concessionárias originais (Oi, Telefônica/Vivo, Embratel) enfrentaram obrigações de universalização e controle tarifário (price cap com fator X de produtividade). A telefonia móvel, operando em regime de autorização, desenvolveu-se em um oligopólio com quatro operadoras principais (Vivo, Claro, TIM, Oi). A venda dos ativos móveis da Oi em 2022 para Vivo, Claro e TIM reduziu o mercado a três grandes operadoras, levantando preocupações concorrenciais analisadas pelo CADE.

    | Indicador | Setor Elétrico | Telecomunicações |
    |---|---|---|
    | Agência reguladora | ANEEL (1996) | ANATEL (1997) |
    | Modelo regulatório | Empresa de referência + price cap | Price cap com fator X |
    | Nº de distribuidoras/operadoras | 53 distribuidoras | 3 grandes operadoras (móvel) |
    | Universalização | ~99,8% de acesso | ~98% de cobertura 4G |
    | Principal desafio atual | Transição energética e tarifas | 5G e competição em banda larga |

    Ambos os setores ilustram o dilema fundamental da regulação de monopólios naturais: garantir eficiência produtiva e preços acessíveis sem eliminar os incentivos ao investimento. Para o contexto institucional e fiscal da regulação de monopólios naturais no Brasil, ver Giambiagi & Além (2016).

!!! box-brasil "🇧🇷 Box Brasil 15.3 — ANS e a regulação dos planos de saúde como controle de monopólio"

    **Contexto:** A **Agência Nacional de Saúde Suplementar (ANS)**, criada pela Lei n.º 9.961/2000, regula o mercado de planos de saúde no Brasil — um setor com características de oligopólio concentrado e fortes assimetrias de informação. Em 2024, o setor atendia cerca de 51 milhões de beneficiários (aproximadamente 25% da população), movimentando mais de R$ 300 bilhões em receitas anuais. As quatro maiores operadoras (Hapvida-NotreDame Intermédica, Bradesco Saúde, SulAmérica e Amil) concentram mais de 35% do mercado, e em muitas regiões uma ou duas operadoras detêm posição dominante — configurando monopólios ou duopólios locais.

    **Dados:** A ANS utiliza diversos instrumentos regulatórios que espelham os mecanismos discutidos neste capítulo: (i) **teto de reajuste** para planos individuais — análogo ao *price cap* (Seção 15.9), fixado anualmente pela ANS com base na variação de custos do setor (reajuste máximo de 6,91% em 2024); (ii) **rol de procedimentos obrigatórios** — que funciona como regulação de qualidade mínima, impedindo que operadoras reduzam custos eliminando coberturas essenciais; (iii) **ressarcimento ao SUS** — quando beneficiários de planos usam o sistema público, a operadora deve reembolsar o SUS, internalizando parte do custo social. A sinistralidade média do setor (razão entre despesas assistenciais e receitas de contraprestações) situou-se em torno de 85% em 2023, indicando margens operacionais comprimidas.

    **Análise:** O mercado de planos de saúde combina duas falhas de mercado estudadas neste livro: **poder de mercado** (Capítulo 15) e **informação assimétrica** (Capítulo 19). A concentração regional confere às operadoras poder de precificação, enquanto a complexidade dos contratos gera assimetria entre operadora e beneficiário. A regulação da ANS enfrenta o dilema clássico de Tirole: sem informação perfeita sobre os custos das operadoras, o regulador não consegue distinguir ineficiência operacional de custos genuinamente elevados. O teto de reajuste para planos individuais protege consumidores cativos, mas pode desestimular a entrada de novos competidores e levar à deterioração da qualidade — exatamente o trade-off previsto pela teoria de regulação por price cap.

    **Para refletir:** Os planos coletivos (empresariais e por adesão), que representam mais de 80% do mercado, não estão sujeitos ao teto de reajuste da ANS — seus preços são negociados livremente. Usando a teoria de discriminação de preços do Capítulo 15, analise: por que a ANS regula os reajustes individuais mas não os coletivos? A resposta envolve a diferença de poder de barganha (elasticidade da demanda) entre os dois segmentos.

No gráfico interativo abaixo, visualize como diferentes regimes regulatórios afetam preço, quantidade e bem-estar em um monopólio natural com custo médio decrescente. Alterne entre os três regimes e observe os trade-offs.

<iframe src="../graficos/cap15/regulacao-monopolio.html" title="Figura 15.4 — Regulação de monopólio natural" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 15.4 — Regulação de monopólio natural.** Alterne entre monopólio não regulado, regulação pelo custo marginal (first-best, com subsídio) e regulação pelo custo médio (second-best, lucro zero). Compare preços, quantidades e perda de peso morto em cada regime.
</div>

O exercício a seguir aplica os três regimes regulatórios a um caso numérico de monopólio natural.

??? exercicio-resolvido "Exercício Resolvido 15.7 — Regulação de monopólio natural"
    **Enunciado.** Uma distribuidora de água (monopólio natural) tem custo total \(C(q) = 500 + 10q\) e enfrenta demanda \(p = 60 - 0{,}5q\). (a) Calcule o equilíbrio sem regulação. (b) Calcule o resultado com regulação *first-best* (\(p = CMg\)) e mostre o prejuízo. (c) Calcule o resultado *second-best* (\(p = CMe\)).

    ---

    **(a) Monopólio não regulado:**

    \(RMg = 60 - q\), \(CMg = 10\).

    \[
    60 - q = 10 \implies q^m = 50, \quad p^m = 60 - 25 = 35
    \]

    \(\pi^m = (p^m - CMg) \times q^m - CF = (35-10)(50) - 500 = 1.250 - 500 = 750\).

    \[
    q^m = 50, \quad p^m = 35, \quad \pi^m = 750
    \]

    **(b) Regulação first-best (\(p = CMg = 10\)):**

    \[
    10 = 60 - 0{,}5q \implies q^{fb} = 100, \quad p^{fb} = 10
    \]

    \(\pi^{fb} = 10 \times 100 - (500 + 1.000) = 1.000 - 1.500 = -500\).

    O prejuízo de R$ 500 corresponde exatamente ao custo fixo: com \(p = CMg\), a receita cobre apenas o custo variável. O governo precisaria subsidiar R$ 500 para manter a firma no mercado.

    **(c) Regulação second-best (\(p = CMe\)):**

    \(CMe = 500/q + 10\). Igualando à demanda inversa:

    \[
    60 - 0{,}5q = \frac{500}{q} + 10 \implies 50 - 0{,}5q = \frac{500}{q}
    \]

    \[
    50q - 0{,}5q^2 = 500 \implies 0{,}5q^2 - 50q + 500 = 0 \implies q^2 - 100q + 1.000 = 0
    \]

    \[
    q = \frac{100 \pm \sqrt{10.000 - 4.000}}{2} = \frac{100 \pm \sqrt{6.000}}{2} = \frac{100 \pm 77{,}46}{2}
    \]

    Tomando a raiz maior (mais produção): \(q^{sb} \approx 88{,}7\), \(p^{sb} = 60 - 44{,}4 = 15{,}6\).

    Lucro: \(\pi^{sb} = 0\) (por construção). A PPM residual é a área do triângulo entre \(q^{sb}\) e \(q^{fb}\):

    \[
    PPM^{sb} = \frac{1}{2}(p^{sb} - CMg)(q^{fb} - q^{sb}) = \frac{1}{2}(15{,}6 - 10)(100 - 88{,}7) = \frac{1}{2}(5{,}6)(11{,}3) \approx 31{,}6
    \]

    Compare: \(PPM^m = \frac{1}{2}(35-10)(100-50) = 625\). A regulação *second-best* reduz a PPM de 625 para apenas 31,6 — uma melhoria de 95%.

    **Interpretação:** A regulação por custo médio é o modelo adotado pela ANEEL para distribuidoras de energia no Brasil. Ela garante lucro zero para a concessionária enquanto expande significativamente o acesso, a um custo de eficiência relativamente baixo.

---

## 15.10 Visões dinâmicas do monopólio

Hora de virar a mesa. Passamos o capítulo inteiro tratando o monopolista como o grande vilão da economia — e com razão: ele produz menos, cobra mais e destrói excedente. Mas e se o monopólio, visto com outros olhos, fosse também o motor que faz a economia avançar? A análise conduzida até aqui é predominantemente estática: comparamos o monopólio com a concorrência perfeita em um dado momento do tempo. Entretanto, quando adotamos uma perspectiva dinâmica — incorporando inovação, progresso tecnológico e entrada potencial —, o julgamento sobre os custos e benefícios do monopólio torna-se mais nuançado. Será que o monopólio é sempre prejudicial à sociedade, ou pode ele desempenhar um papel positivo como motor de inovação e progresso técnico? Essa questão, levantada originalmente por Joseph Schumpeter no contexto da Grande Depressão, permanece no centro dos debates contemporâneos sobre política antitruste — especialmente em setores tecnológicos dominados por grandes plataformas como Google, Amazon e Meta.

### Schumpeter e a destruição criativa

Joseph Schumpeter (1942) argumentou que o monopólio pode ser socialmente benéfico quando considerado em perspectiva dinâmica. Segundo essa visão:

- Lucros de monopólio são a **recompensa pela inovação** e constituem o incentivo fundamental para o progresso tecnológico. Sem a perspectiva de lucros extraordinários, as firmas não assumiriam os riscos e custos do investimento em pesquisa e desenvolvimento.
- A concorrência relevante não é a concorrência de preços estática, mas a **concorrência por inovação** — a "destruição criativa" pela qual novos produtos e processos tornam obsoletos os anteriores. O smartphone destruiu o mercado de câmeras fotográficas compactas; o streaming destruiu as videolocadoras; os aplicativos de transporte transformaram o mercado de táxis.
- Firmas com poder de mercado têm maiores recursos para investir em P&D e podem proteger os frutos da inovação por mais tempo, o que fortalece os incentivos para inovar.

A hipótese schumpeteriana gerou extensa literatura empírica, com resultados ambíguos. A relação entre concentração de mercado e inovação parece seguir uma curva em U invertido (Aghion et al., 2005): algum grau de poder de mercado estimula a inovação, mas poder excessivo a inibe. Em setores com poder de mercado moderado, as firmas inovam mais para escapar da concorrência; em setores altamente concentrados, o incentivo diminui porque o incumbente já é lucrativo.

### Mercados contestáveis

Baumol, Panzar e Willig (1982) propuseram a teoria dos **mercados contestáveis**: se a entrada e a saída do mercado são livres e sem custos irrecuperáveis (sunk costs), a mera **ameaça** de entrada é suficiente para disciplinar o monopolista. Mesmo um monopolista cobraria preços competitivos se a entrada fosse perfeitamente livre.

!!! definition "Mercado Contestável"
    Um mercado é **perfeitamente contestável** se: (i) não há custos irrecuperáveis de entrada e saída; (ii) entrantes potenciais têm acesso à mesma tecnologia do incumbente; (iii) consumidores respondem instantaneamente a diferenças de preço. Nessas condições, a ameaça de "hit-and-run" — entrada para capturar lucros seguida de saída — disciplina o incumbente.

Na prática, poucos mercados satisfazem essas condições rigorosas. Custos irrecuperáveis são a norma, não a exceção — fábricas, equipamentos especializados, marcas construídas ao longo de anos não podem ser recuperados à saída. Ainda assim, a teoria da contestabilidade fornece um benchmark útil e lembra que barreiras à entrada — não a estrutura de mercado per se — são o determinante fundamental do poder de mercado. Um mercado com uma única firma mas baixas barreiras à entrada pode ser mais competitivo do que um mercado com muitas firmas mas altas barreiras.

!!! idea "Intuição Econômica"
    **Em uma frase:** Para Schumpeter, os lucros de monopólio são o combustível da inovação — sem a promessa de lucros extraordinários, ninguém assume o risco de inventar algo novo.

    **Pense assim:** Imagine que desenvolver um novo medicamento custa R$ 5 bilhões e leva 10 anos. Se, ao final do processo, qualquer concorrente pudesse copiar a fórmula e vender a preço de custo, nenhuma empresa investiria na pesquisa. A patente — que cria um monopólio temporário — é a "cenoura" que justifica o investimento. A perda de peso morto durante a vigência da patente é o "preço" que a sociedade paga pela inovação futura.

    **Por que isso importa:** Esse argumento é central no debate sobre a duração de patentes farmacêuticas e sobre a regulação de big techs: punir poder de mercado de forma muito agressiva pode sufocar a inovação que gera bem-estar no longo prazo. A política antitruste ótima precisa equilibrar eficiência estática (eliminar PPM) e eficiência dinâmica (preservar incentivos à inovação).

??? exercicio-resolvido "Exercício Resolvido 15.8 — Inovação sob monopólio vs. concorrência (hipótese schumpeteriana)"
    **Enunciado.** Um monopolista farmacêutico pode investir \(I\) em P&D, reduzindo seu custo marginal de \(c_0 = 40\) para \(c_1 = 40 - \sqrt{I}\) (com \(I \leq 1.600\)). A demanda é \(p = 100 - q\). (a) Qual o investimento ótimo em P&D? (b) Se o mercado fosse competitivo e a inovação fosse imediatamente imitável (spillover total), qual seria o investimento? (c) Comente sobre a hipótese schumpeteriana.

    ---

    **(a)** Com CMg = \(40 - \sqrt{I}\), o monopolista resolve:

    \(RMg = 100 - 2q = 40 - \sqrt{I} \implies q^m = 30 + \frac{\sqrt{I}}{2}\).

    \(p^m = 100 - q^m = 70 - \frac{\sqrt{I}}{2}\).

    \(\pi = (p^m - CMg) \cdot q^m - I = \left(30 + \frac{\sqrt{I}}{2}\right)^2 - I\).

    Seja \(s = \sqrt{I}\):

    \(\pi(s) = \left(30 + \frac{s}{2}\right)^2 - s^2 = 900 + 30s + \frac{s^2}{4} - s^2 = 900 + 30s - \frac{3s^2}{4}\).

    \(\frac{d\pi}{ds} = 30 - \frac{3s}{2} = 0 \implies s^* = 20 \implies I^* = 400\).

    Resultado: CMg cai para 20, \(q^m = 40\), \(p^m = 60\), \(\pi = 1.200\) (líquido de I).

    **(b)** Sob concorrência com spillover total, qualquer redução de custo é imediatamente copiada. Como \(p = CMg\) e \(\pi = 0\), nenhuma firma recupera o investimento. Logo \(I^* = 0\).

    **(c)** Este resultado ilustra a hipótese schumpeteriana: o monopolista investe 400 em P&D (reduzindo o custo marginal pela metade), enquanto o mercado competitivo não investe nada. O poder de mercado é a "recompensa" que viabiliza a inovação. Contudo, o argumento depende criticamente da hipótese de spillover total; na prática, patentes e segredos industriais permitem que firmas competitivas também se apropriem de inovações, atenuando a vantagem schumpeteriana do monopólio.

---

Abrimos o capítulo com um único vendedor, zero concorrência e um sorriso no rosto. Ao longo da análise, vimos que esse sorriso tem consequências: preço acima do custo marginal, produção abaixo do socialmente desejável e uma perda de peso morto que ninguém captura. Mas também vimos que o monopólio não é um vilão unidimensional — Schumpeter nos lembrou que, sem a promessa de lucros extraordinários, talvez não houvesse iPhone, Netflix nem vacina de mRNA.

*O monopolista reina sozinho. Mas e quando há dois? Três? Poucos — e isso muda tudo. É o próximo capítulo.*

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. O monopolista maximiza lucro igualando receita marginal ao custo marginal. A receita marginal é menor que o preço porque:"
    - (a) O monopolista opera com custos mais altos que firmas competitivas
    - (b) Para vender uma unidade adicional, o monopolista deve reduzir o preço de todas as unidades, gerando um efeito negativo sobre a receita das unidades inframarginais
    - (c) O governo taxa a receita do monopolista
    - (d) A demanda pelo bem do monopolista é perfeitamente elástica

    ??? success "Resposta"
        **(b)** Diferentemente da firma competitiva (que é tomadora de preço), o monopolista enfrenta toda a curva de demanda. Vender mais exige reduzir o preço, o que diminui a receita das unidades já vendidas. Assim, $\text{RMg} = p + q \cdot dp/dq = p(1 + 1/\varepsilon_d) < p$. A alternativa (d) descreve concorrência perfeita, não monopólio.

??? question "2. O índice de Lerner mede o poder de mercado como:"
    - (a) $L = (p - \text{CMe})/p$
    - (b) $L = (p - \text{CMg})/p = -1/\varepsilon_d$
    - (c) $L = \text{lucro total}/\text{receita total}$
    - (d) $L = \text{CMg}/p$

    ??? success "Resposta"
        **(b)** O índice de Lerner $L = (p - \text{CMg})/p$ mede o markup percentual sobre o custo marginal. Em equilíbrio, $L = -1/\varepsilon_d$: quanto menos elástica a demanda, maior o poder de mercado. Em concorrência perfeita, $L = 0$ ($p = \text{CMg}$). A alternativa (a) usa custo médio em vez de marginal; (c) é uma medida de lucratividade, não de poder de mercado.

??? question "3. Na discriminação de preços de primeiro grau (perfeita), o monopolista:"
    - (a) Cobra o mesmo preço de todos os consumidores
    - (b) Cobra de cada consumidor exatamente sua disposição a pagar, extraindo todo o excedente do consumidor
    - (c) Divide os consumidores em dois grupos e cobra preços diferentes
    - (d) Reduz a quantidade abaixo do nível competitivo

    ??? success "Resposta"
        **(b)** Na discriminação perfeita, o monopolista conhece a disposição a pagar de cada consumidor e cobra preços personalizados. O excedente do consumidor é zero e todo o excedente vai para o monopolista. Curiosamente, a quantidade produzida é eficiente (igual à competitiva) — não há peso morto, embora a distribuição seja extremamente desigual. A alternativa (d) descreve o monopólio sem discriminação.

??? question "4. Um monopólio natural ocorre quando:"
    - (a) A firma detém uma patente sobre o produto
    - (b) O custo médio é decrescente em toda a faixa relevante de demanda, de modo que uma única firma atende o mercado a custo menor do que duas ou mais
    - (c) O governo concede exclusividade legal à firma
    - (d) A firma possui o único recurso natural necessário à produção

    ??? success "Resposta"
        **(b)** O monopólio natural surge de economias de escala extremas: subaditividade de custos na faixa relevante. Duplicar a infraestrutura (ex.: rede elétrica, saneamento) seria socialmente custoso. A alternativa (a) descreve monopólio por patente; (c) descreve monopólio legal; (d) descreve monopólio por controle de recurso — todos são fontes de monopólio, mas não 'natural'.

??? question "5. A regulação por preço-teto (price cap) de um monopólio natural, fixando $p = \text{CMe}$, resulta em:"
    - (a) Lucro econômico positivo para a firma
    - (b) Produção eficiente ao nível de custo marginal
    - (c) Lucro econômico zero (second-best), mas quantidade inferior ao ótimo de primeiro melhor ($p = \text{CMg}$)
    - (d) Prejuízo para a firma, exigindo subsídio

    ??? success "Resposta"
        **(c)** Fixar $p = \text{CMe}$ garante viabilidade financeira (lucro zero) mas a quantidade é menor que a de $p = \text{CMg}$. A alternativa (d) descreve o que ocorre quando se tenta impor $p = \text{CMg}$ em monopólio natural com custos médios decrescentes — nesse caso, $\text{CMg} < \text{CMe}$ e a firma tem prejuízo. A regulação por CMe é o second-best que evita esse problema.

---

## 📋 Resumo do Capítulo

- O monopólio surge quando barreiras à entrada (legais, naturais ou estratégicas) impedem a concorrência, permitindo que uma única firma fixe preços acima do custo marginal e obtenha lucros persistentes.
- O monopolista maximiza lucro igualando receita marginal ao custo marginal (RMg = CMg), operando sempre na faixa elástica da demanda. O markup sobre o custo marginal é inversamente proporcional à elasticidade-preço, conforme medido pelo índice de Lerner.
- O monopólio gera ineficiência alocativa: produz menos e cobra mais do que o resultado competitivo, criando uma perda de peso morto (triângulo de Harberger) que não é capturada por nenhum agente. O custo social total pode ser significativamente maior quando se incluem gastos com *rent-seeking*.
- A discriminação de preços (primeiro, segundo e terceiro graus) permite ao monopolista extrair mais excedente do consumidor, podendo, em alguns casos, aumentar a quantidade produzida e reduzir a perda de peso morto.
- A regulação de monopólios naturais enfrenta um dilema fundamental: a precificação pelo custo marginal gera prejuízos (first-best impraticável), enquanto a precificação pelo custo médio ou por teto de preços (price cap) representa soluções de second-best com trade-offs entre eficiência e incentivos ao investimento.
- As visões dinâmicas de Schumpeter (destruição criativa) e de Baumol (mercados contestáveis) relativizam os custos do monopólio, sugerindo que lucros de monopólio podem incentivar inovação e que a ameaça de entrada pode disciplinar o incumbente.

## 🔑 Conceitos-Chave

<a id="tabela-15-2"></a>

| Conceito | Definição |
|----------|-----------|
| Poder de mercado | Capacidade de uma firma fixar preços acima do custo marginal e obter lucros econômicos persistentes |
| Monopólio natural | Mercado em que a função de custo é subaditiva, de modo que uma única firma produz a qualquer quantidade a custo menor do que duas ou mais firmas |
| Barreiras à entrada | Fatores (legais, naturais ou estratégicos) que impedem a entrada de concorrentes e protegem os lucros do monopolista |
| Índice de Lerner | Medida de poder de mercado dada por \(L = (p - CMg)/p = 1/|\varepsilon_p|\); varia entre 0 (concorrência perfeita) e 1 |
| Perda de peso morto (triângulo de Harberger) | Redução no excedente total causada pela restrição de produção do monopolista, que não é capturada por nenhum agente |
| Discriminação de preços | Prática de cobrar preços diferentes de consumidores diferentes (ou por unidades diferentes), classificada em primeiro, segundo e terceiro graus |
| Tarifa em duas partes | Esquema de precificação com taxa fixa de entrada mais preço por unidade consumida |
| Regulação por price cap | Regime regulatório em que o preço é reajustado pela inflação menos um fator de produtividade (X), incentivando redução de custos |
| Efeito Averch-Johnson | Tendência de firmas reguladas por taxa de retorno a sobreinvestir em capital para inflar a base de remuneração |
| Mercado contestável | Mercado em que a ameaça de entrada e saída sem custos irrecuperáveis disciplina o incumbente, mesmo que haja apenas uma firma |

<div class="caption-obj" markdown>
**Tabela 15.2 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

<a id="ex-15-1"></a>
??? exercicio-proposto "Exercício 15.1"
    Considere um monopolista com custo total \(C(q) = 100 + 10q\) enfrentando demanda \(p = 50 - 2q\).

    a) Encontre o preço, a quantidade e o lucro de monopólio.

    b) Calcule o índice de Lerner e a elasticidade-preço da demanda no ponto de equilíbrio.

    c) Calcule a perda de peso morto e compare com o excedente total sob concorrência perfeita.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-15-1)

<a id="ex-15-2"></a>
??? exercicio-proposto "Exercício 15.2"
    Um monopolista atende dois mercados segmentados com demandas \(p_1 = 100 - q_1\) e \(p_2 = 60 - 2q_2\). O custo marginal é constante e igual a 20.

    a) Encontre os preços e quantidades ótimos em cada mercado com discriminação de terceiro grau.

    b) Calcule os índices de Lerner em cada mercado e relacione com as elasticidades.

    c) Compare o lucro com discriminação ao lucro sem discriminação (preço uniforme ótimo).

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-15-2)

<a id="ex-15-3"></a>
??? exercicio-proposto "Exercício 15.3"
    O governo impõe um imposto unitário \(t = 4\) sobre um monopolista com custo marginal constante \(c = 10\) e demanda \(p = 30 - q\).

    a) Calcule preço, quantidade e lucro antes e depois do imposto.

    b) Qual fração do imposto é repassada ao consumidor?

    c) Compare a receita fiscal com a variação na perda de peso morto.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-15-3)

<a id="ex-15-4"></a>
??? exercicio-proposto "Exercício 15.4"
    Um monopolista natural tem custo total \(C(q) = 1000 + 5q\). A demanda é \(p = 45 - q\).

    a) Calcule o resultado do monopólio não regulado.

    b) Calcule o resultado sob regulação de custo marginal (\(p = CMg\)). Mostre que a firma tem prejuízo.

    c) Calcule o resultado sob regulação de custo médio (\(p = CMe\)) e a PPM residual.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-15-4)

<a id="ex-15-5"></a>
??? exercicio-proposto "Exercício 15.5"
    Um monopolista pode adotar uma tarifa em duas partes \((T, p)\) para atender dois tipos de consumidores. O tipo 1 tem demanda \(q_1 = 20 - p\) e o tipo 2 tem demanda \(q_2 = 10 - p\). Há 100 consumidores de cada tipo. O custo marginal é \(c = 2\).

    a) Se o monopolista usa preço uniforme, qual é o preço ótimo?

    b) Se usa tarifa em duas partes atendendo ambos os tipos, encontre \((T^*, p^*)\).

    c) Se usa tarifa em duas partes atendendo apenas o tipo 1 (excluindo o tipo 2), encontre \((T^*, p^*)\) e compare os lucros.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-15-5)

<a id="ex-15-6"></a>
??? exercicio-proposto "Exercício 15.6"
    Um monopolista enfrenta a demanda \(p = 80 - 0{,}5q\) e tem custo total \(C(q) = 200 + 20q\).

    a) Encontre a quantidade, o preço e o lucro de monopólio.

    b) Calcule o índice de Lerner e verifique a relação \(L = 1/|\varepsilon_d|\).

    c) Se a demanda mudar para \(p = 80 - 2q\) (mantendo o mesmo custo), recalcule o equilíbrio de monopólio e compare o poder de mercado nos dois casos.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-15-6)

<a id="ex-15-7"></a>
??? exercicio-proposto "Exercício 15.7"
    Um monopolista pode praticar discriminação de preços. A demanda individual de cada consumidor é \(q = 10 - p\) e há 50 consumidores idênticos. O custo marginal é constante \(c = 2\).

    a) Calcule o lucro sob preço uniforme de monopólio (sem discriminação).

    b) Calcule o lucro sob discriminação de primeiro grau (preços personalizados perfeitos).

    c) Compare os excedentes do consumidor e do produtor nos dois casos. Há perda de peso morto sob discriminação perfeita?

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-15-7)

<a id="ex-15-8"></a>
??? exercicio-proposto "Exercício 15.8"
    Um monopolista natural opera com custo total \(C(q) = 500 + 2q\) e demanda \(p = 52 - q\).

    a) Calcule o resultado do monopólio não regulado (preço, quantidade, lucro).

    b) Calcule o resultado sob regulação de custo marginal (\(p = CMg\)). A firma é viável?

    c) Calcule o resultado sob regulação de custo médio (\(p = CMe\)) e determine o subsídio necessário (se houver) para viabilizar a firma em cada regime regulatório.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-15-8)

<a id="ex-15-9"></a>
??? exercicio-proposto "Exercício 15.9"
    Considere um monopolista com custo marginal constante \(c = 10\) e demanda \(p = 100 - 2q\).

    a) Calcule o equilíbrio de monopólio e a perda de peso morto (DWL).

    b) Calcule a DWL como fração da receita do monopolista e como fração do excedente total competitivo.

    c) Suponha que o custo marginal suba para \(c' = 30\). Recalcule a DWL e mostre como ela varia com o nível do custo marginal. Interprete.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-15-9)

<a id="ex-15-10"></a>
??? exercicio-proposto "Exercício 15.10"
    Um monopolista de parque de diversões enfrenta consumidores idênticos, cada um com demanda por brinquedos \(q = 24 - 2p\), onde \(p\) é o preço por brinquedo. O custo marginal de cada brinquedo é \(c = 2\). O monopolista usa uma tarifa em duas partes: cobra uma entrada fixa \(T\) e um preço por brinquedo \(p\).

    a) Encontre a tarifa ótima em duas partes \((T^*, p^*)\) e o lucro por consumidor.

    b) Compare com o lucro que o monopolista obteria usando apenas preço uniforme (sem entrada).

    c) Suponha agora que haja dois tipos de consumidores: tipo A com demanda \(q_A = 24 - 2p\) e tipo B com demanda \(q_B = 12 - 2p\), em proporções iguais. Encontre a tarifa em duas partes ótima que atenda ambos os tipos.

    [:material-arrow-right: Ver solução](../solucoes/cap15.md#ex-15-10)

---

## 🏆 Vem, ANPEC!

Pratique com questões reais do Exame Nacional da ANPEC (Associação Nacional dos Centros de Pós-Graduação em Economia). As questões seguem o formato oficial: cinco itens (0 a 4) a serem julgados como Verdadeiro (V) ou Falso (F).

??? question "ANPEC 2016 — Questão 08"
    Com relação a poder de mercado, monopólio e monopsônio, é correto afirmar que:

    **(0)** Se o custo marginal da empresa em monopólio for constante e igual a \$ 10, e a elasticidade-preço da demanda for igual a \(-2\), o preço do produto será \$ 20;

    **(1)** Quanto menos elástica for a curva de demanda de uma empresa, maior poder de monopólio ela terá;

    **(2)** O poder de monopsônio permite à empresa compradora adquirir o produto por um preço inferior ao competitivo;

    **(3)** Quanto menos elástica for a curva de oferta, maior será a diferença entre a despesa marginal e a despesa média, e maior será o poder de monopsônio do comprador;

    **(4)** Chama-se captura de renda ao processo pelo qual as empresas aplicam recursos produtivos em atividade de lobby para adquirir, manter ou exercer seu poder de monopólio.

    ??? success "Gabarito"
        **Gabarito oficial: V-V-V-V-V**

        **(0) VERDADEIRO.** Pela regra de markup: \(p = CMg/(1 - 1/|\varepsilon|) = 10/(1 - 1/2) = 10/0{,}5 = 20\).

        **(1) VERDADEIRO.** O índice de Lerner é \(L = 1/|\varepsilon|\). Quanto menos elástica (menor \(|\varepsilon|\)), maior o Lerner e maior o poder de monopólio.

        **(2) VERDADEIRO.** O monopsonista iguala a despesa marginal (que excede o preço de oferta) ao valor do produto marginal do insumo, contratando menos unidades a um preço inferior ao que prevaleceria em concorrência.

        **(3) VERDADEIRO.** Com oferta \(w = w(L)\), a despesa marginal é \(DM = w + L \cdot dw/dL\). A diferença \(DM - w = L \cdot dw/dL\) é maior quanto mais inclinada (menos elástica) for a curva de oferta, pois \(dw/dL\) é maior.

        **(4) VERDADEIRO.** O comportamento descrito — aplicar recursos em lobby para obter ou manter poder de monopólio — corresponde ao conceito de *rent-seeking* (busca/captura de rendas), introduzido por Tullock (1967) e formalizado por Krueger (1974).

??? question "ANPEC 2015 — Questão 09"
    Julgue as afirmações relativas à Teoria do Monopólio:

    **(0)** Uma firma monopolista, que opera com várias fábricas, aloca sua produção entre elas de forma a igualar o custo médio em cada uma das fábricas.

    **(1)** Uma firma capaz de discriminação de preços de terceiro grau obtém lucro maior ou igual, em comparação com a situação na qual ela não fosse capaz de discriminar.

    **(2)** Uma firma monopolista, que se depara com curva de demanda com elasticidade constante, é indiferente sobre a quantidade produzida.

    **(3)** Para obter eficiência econômica, o regulador de um monopólio natural deve escolher a alocação que minimiza o custo médio unitário da firma.

    **(4)** Se o monopolista for capaz de realizar discriminação de preços de primeiro grau, a alocação de recursos será eficiente em termos paretianos.

    ??? success "Gabarito"
        **Gabarito oficial: F-V-F-F-V**

        **(0) FALSO.** A firma multi-planta minimiza custos igualando os **custos marginais** (não os custos médios) entre fábricas: \(CMg_1(q_1) = CMg_2(q_2) = \ldots\). Essa é a condição de Lagrange para a minimização de custo total sujeita a uma meta de produção.

        **(1) VERDADEIRO.** A capacidade de discriminar nunca reduz o lucro, pois o monopolista pode sempre replicar o preço uniforme como caso especial (cobrando o mesmo preço em todos os segmentos). Logo, \(\pi_{\text{discriminação}} \geq \pi_{\text{uniforme}}\).

        **(2) FALSO.** Com demanda isoelástica (\(q = Ap^{\varepsilon}\)) e custo marginal positivo, a regra de markup \(p = CMg/(1 - 1/|\varepsilon|)\) determina univocamente o preço e a quantidade ótimos. O monopolista não é indiferente.

        **(3) FALSO.** Eficiência econômica requer \(p = CMg\) (*first-best*), que é a condição em que o benefício marginal do consumidor iguala o custo marginal da produção. Minimizar o custo médio gera uma alocação diferente e, em geral, ineficiente.

        **(4) VERDADEIRO.** Com discriminação perfeita, o monopolista produz a quantidade eficiente (\(q^c\), onde \(p = CMg\)), eliminando toda a perda de peso morto. A alocação é Pareto-eficiente, embora todo o excedente seja apropriado pelo produtor (\(EC = 0\)).

??? question "ANPEC 2018 — Questão 08"
    Com relação à análise de discriminação de preços, indique quais das afirmativas a seguir são verdadeiras e quais são falsas:

    **(0)** Na discriminação de preços de terceiro grau, a receita marginal deve ser igual para os diferentes grupos de consumidores e igual ao custo marginal;

    **(1)** Na discriminação de preços de terceiro grau, o preço mais elevado será cobrado dos consumidores com demanda mais elástica;

    **(2)** A discriminação de preços intertemporal cobra preços mais elevados dos consumidores mais impacientes, reduzindo o preço mais tarde para incentivar o consumo de massa;

    **(3)** A tarifa em duas partes é eficaz quando as demandas dos consumidores são relativamente homogêneas;

    **(4)** Quando as demandas são heterogêneas e estão positivamente correlacionadas, a prática do pacote pode ser uma técnica eficaz para a fixação de preços.

    ??? success "Gabarito"
        **Gabarito oficial: V-F-V-V-F**

        **(0) VERDADEIRO.** A condição de ótimo na discriminação de 3º grau é \(RMg_1 = RMg_2 = \ldots = CMg\). O monopolista iguala as receitas marginais de todos os segmentos ao custo marginal.

        **(1) FALSO.** O preço mais elevado é cobrado do grupo com demanda **mais inelástica** (menor \(|\varepsilon|\)), não mais elástica. Pela relação \(p_i = CMg/(1 - 1/|\varepsilon_i|)\), menor elasticidade implica maior preço.

        **(2) VERDADEIRO.** Na discriminação intertemporal, consumidores impacientes (alta disposição a pagar, demanda inelástica no tempo) compram imediatamente ao preço alto. O preço cai ao longo do tempo para capturar consumidores com menor disposição a pagar. Exemplos: livros em capa dura seguidos de edição de bolso, eletrônicos no lançamento.

        **(3) VERDADEIRO.** Com consumidores homogêneos, a tarifa em duas partes é particularmente eficaz: fixa-se \(p = CMg\) e \(T = EC\) do consumidor representativo, extraindo todo o excedente com eficiência alocativa plena.

        **(4) FALSO.** O *bundling* (venda em pacote) é mais eficaz quando as demandas dos bens estão **negativamente** correlacionadas, pois isso reduz a dispersão da disposição a pagar pelo pacote, permitindo melhor extração de excedente. Com correlação positiva, o pacote não reduz a heterogeneidade e o *bundling* é pouco eficaz.

---

## 🔬 Pesquisa em Ação

??? pesquisa "De Loecker, J., Eeckhout, J. & Unger, G. (2020). [The Rise of Market Power and the Macroeconomic Implications](https://doi.org/10.1093/qje/qjz041). *Quarterly Journal of Economics*, 135(2), 561–644."
    **DOI:** [10.1093/qje/qjz041](https://doi.org/10.1093/qje/qjz041)

    **Contexto.** O Capítulo 15 analisa o monopólio como estrutura de mercado, mas até que ponto o poder de mercado é um fenômeno relevante empiricamente? De Loecker, Eeckhout e Unger (2020) respondem a essa pergunta com uma análise abrangente do *markup* praticado pelas firmas nos Estados Unidos ao longo de seis décadas.

    **Metodologia.** Os autores estimam *markups* firma a firma usando dados contábeis (Compustat) e a abordagem de produção de Hall (1988), que infere o *markup* como a razão entre a elasticidade-produto de um insumo variável e a participação desse insumo na receita. A grande inovação é aplicar esse método a um painel de milhares de firmas de 1955 a 2016, permitindo documentar a evolução do poder de mercado agregado.

    **Resultados.** O *markup* médio na economia americana era relativamente estável em torno de 1,21 (21% acima do custo marginal) até 1980, mas subiu para 1,61 em 2016 — um aumento de 33%. Esse aumento é concentrado nas firmas do topo da distribuição: as 10% mais lucrativas elevaram seus *markups* de 1,5 para mais de 2,5. Os autores documentam que essa tendência está associada a menor participação do trabalho na renda, menor dinamismo empresarial e maior desigualdade.

    **Conexão com o capítulo.** O artigo fornece evidência empírica maciça sobre o índice de Lerner (Seção 15.3) em escala agregada. Os *markups* estimados podem ser diretamente interpretados como \(1/(1 - L)\), conectando a teoria do monopólio à mensuração empírica do poder de mercado. A tendência ascendente documentada sugere que o modelo de concorrência perfeita se torna progressivamente menos adequado como descrição da economia moderna.

??? pesquisa "Bergemann, D., Brooks, B. & Morris, S. (2015). [The Limits of Price Discrimination](https://doi.org/10.1257/aer.20130848). *American Economic Review*, 105(3), 921–957."
    **DOI:** [10.1257/aer.20130848](https://doi.org/10.1257/aer.20130848)

    **Contexto.** A Seção 15.7 classifica a discriminação de preços em três graus, mas essa taxonomia assume que sabemos exatamente quanta informação o monopolista possui sobre os consumidores. Bergemann, Brooks e Morris (2015) fazem uma pergunta mais fundamental: dada uma demanda de mercado, quais são os **limites** do que a discriminação de preços pode alcançar, considerando toda estrutura de informação possível?

    **Contribuição teórica.** Os autores mostram que, para qualquer segmentação de mercado (qualquer partição informacional dos consumidores), o resultado da discriminação de preços deve satisfazer duas restrições: (i) o lucro do monopolista deve ser pelo menos tão grande quanto o lucro de preço uniforme; (ii) o excedente do consumidor agregado não pode ser negativo. O resultado central é que **qualquer** par (lucro, excedente do consumidor) satisfazendo essas duas restrições é alcançável por alguma segmentação.

    **Resultados.** O artigo demonstra que os efeitos de bem-estar da discriminação de preços dependem crucialmente da informação disponível ao monopolista. A produção total pode subir, cair ou permanecer constante conforme a segmentação. Isso contrasta com o resultado clássico de Pigou (1920) para demandas lineares, em que a discriminação de 3º grau não altera a quantidade total.

    **Conexão com o capítulo.** O paper aprofunda a análise de discriminação de preços das Seções 15.7.1–15.7.3, mostrando que a distinção entre 1º, 2º e 3º grau é apenas uma parte de um espectro muito mais rico de possibilidades informacionais.

??? pesquisa "Posner, R. A. (1975). [The Social Costs of Monopoly and Regulation](https://doi.org/10.1086/260357). *Journal of Political Economy*, 83(4), 807–827."
    **DOI:** [10.1086/260357](https://doi.org/10.1086/260357)

    **Contexto.** A Seção 15.4 apresenta a perda de peso morto (triângulo de Harberger) como a medida convencional do custo social do monopólio. Posner (1975) argumenta que essa medida subestima dramaticamente o custo real, ao ignorar os recursos desperdiçados na *obtenção e manutenção* do poder de mercado.

    **Contribuição teórica.** Posner observa que, se firmas competem para obter uma posição de monopólio lucrativa (por exemplo, disputando uma concessão governamental, investindo em lobby ou em litígios para bloquear concorrentes), os recursos gastos nessa competição representam um custo social adicional. No limite, se a competição pelo monopólio dissipa todos os lucros esperados, o custo social total é a soma do triângulo de Harberger e do retângulo de lucro do monopolista — potencialmente muito maior que o triângulo sozinho.

    **Resultados.** Posner estima que, para setores regulados nos EUA, o custo social total (incluindo *rent-seeking*) pode ser várias vezes maior que o triângulo de Harberger. Ele argumenta, provocativamente, que a regulação governamental — ao criar monopólios legais e oportunidades de *rent-seeking* — pode gerar custos sociais tão grandes ou maiores que o monopólio não regulado.

    **Conexão com o capítulo.** O artigo fundamenta o Exercício Resolvido 15.2, que calcula o custo social total incluindo *rent-seeking*. A análise de Posner é essencial para entender por que estimativas empíricas do custo do monopólio variam tão amplamente (de 0,1% a 13% do PIB, conforme discutido no Box Mundo 15.2).

??? pesquisa "Borenstein, S. & Rose, N. L. (1994). [Competition and Price Dispersion in the U.S. Airline Industry](https://doi.org/10.1086/261950). *Journal of Political Economy*, 102(4), 653–683."
    **DOI:** [10.1086/261950](https://doi.org/10.1086/261950)

    **Contexto.** A Seção 15.7 e o Box Brasil 15.1 discutem a discriminação de preços no setor aéreo. Borenstein e Rose (1994) fornecem a primeira análise empírica rigorosa da relação entre concorrência e dispersão de preços no setor aéreo americano — uma relação que se revela mais complexa do que a teoria simples sugeriria.

    **Metodologia.** Os autores utilizam dados do *Databank 1A* do Departamento de Transportes dos EUA (DOT) com informações sobre tarifas individuais para milhares de rotas domésticas. A medida de dispersão de preços é a diferença entre o percentil 80 e o percentil 20 das tarifas em cada rota, normalizada pela tarifa mediana. A variável explicativa central é a concentração de mercado (índice de Herfindahl-Hirschman) em cada rota.

    **Resultados.** O resultado central é surpreendente: rotas mais competitivas apresentam *maior* dispersão de preços, não menor. A dispersão de preços aumenta cerca de 10% quando a concentração cai de monopólio para duopólio. Os autores interpretam isso como evidência de que a concorrência intensifica a discriminação de preços: em rotas competitivas, companhias aéreas oferecem tarifas promocionais agressivas para preencher assentos, enquanto mantêm tarifas altas para viajantes de última hora — gerando ampla dispersão.

    **Conexão com o capítulo.** O artigo desafia a intuição de que mais concorrência sempre reduz diferenças de preço. Ele mostra que a discriminação de preços (Seção 15.7) não é exclusividade do monopólio — firmas com algum poder de mercado em oligopólios também a praticam intensamente. Esse resultado antecipa temas do Capítulo 16 (Oligopólio) e conecta-se diretamente ao Box Brasil sobre passagens aéreas.

??? pesquisa "Wallsten, S. (2001). [An Econometric Analysis of Telecom Competition, Privatization, and Regulation in Africa and Latin America](https://doi.org/10.1111/1468-2354.t01-1-00106). *Journal of Industrial Economics*, 49(1), 1–19."
    **DOI:** [10.1111/1468-2354.t01-1-00106](https://doi.org/10.1111/1468-2354.t01-1-00106)

    **Contexto.** A Seção 15.8 discute a regulação de monopólios naturais em teoria. Wallsten (2001) fornece evidência empírica crucial sobre os efeitos reais da desregulamentação e privatização no setor de telecomunicações — um dos exemplos mais importantes de monopólio natural regulado do século XX.

    **Metodologia.** O autor utiliza dados em painel de 30 países da África e da América Latina entre 1984 e 1997, período em que muitas nações promoveram reformas regulatórias no setor de telecomunicações (privatização, criação de agências reguladoras independentes e abertura à competição). A estratégia empírica explora a variação temporal e entre países nessas reformas para identificar seus efeitos sobre investimento, acesso (linhas per capita), qualidade do serviço e tarifas.

    **Resultados.** A privatização combinada com a entrada de concorrentes aumentou significativamente o investimento em telecomunicações e o número de linhas telefônicas per capita. No entanto, a privatização *sem* introdução de competição — isto é, a mera transferência do monopólio estatal para um monopólio privado — teve efeitos muito menores ou nulos sobre o bem-estar dos consumidores. A criação de agências reguladoras independentes também se mostrou relevante para a credibilidade das reformas e a atração de investimento privado.

    **Conexão com o capítulo.** O artigo conecta-se diretamente à análise de regulação de monopólios naturais (Seção 15.8) e ao Box Brasil 15.2 sobre concessões de serviços públicos no Brasil. Ele ilustra empiricamente o trade-off entre eficiência alocativa e viabilidade financeira discutido nos Exercícios 15.4 e 15.8, mostrando que a estrutura regulatória — não apenas a propriedade — determina os resultados de bem-estar.

---

!!! tip "🤖 Exercício com IA"
    **IA.3 — Deadweight Loss do Monopólio**

    Peça à IA para calcular o deadweight loss de um monopólio com demanda $P = 100 - 2Q$ e $CMg = 20$. Depois peça para ela comparar com discriminação de preços de 1º grau. A IA distinguiu corretamente os excedentes? Desenhe os gráficos para confirmar.

    [:material-arrow-right: Ver exercício completo](../exercicios-ia.md#ia-3)

---

## 📚 Referências do Capítulo

- Aghion, Philippe, Nick Bloom, Richard Blundell, Rachel Griffith, e Peter Howitt. 2005. "[Competition and Innovation: An Inverted-U Relationship.](https://doi.org/10.1093/qje/120.2.701)" *Quarterly Journal of Economics* 120 (2): 701–728.
- Averch, Harvey, e Leland L. Johnson. 1962. "[Behavior of the Firm Under Regulatory Constraint.](https://doi.org/10.2307/1812181)" *American Economic Review* 52 (5): 1052–1069.
- Bain, Joe S. 1956. [*Barriers to New Competition*](https://books.google.com/books/about/Barriers_to_New_Competition.html?id=KyFCAAAAIAAJ). Cambridge: Harvard University Press.
- Baumol, William J., John C. Panzar, e Robert D. Willig. 1982. [*Contestable Markets and the Theory of Industry Structure*](https://books.google.com/books/about/Contestable_Markets_and_the_Theory_of_In.html?id=N2c6AAAAIAAJ). New York: Harcourt Brace Jovanovich.
- Bergemann, Dirk, Benjamin Brooks, e Stephen Morris. 2015. "[The Limits of Price Discrimination.](https://doi.org/10.1257/aer.20130848)" *American Economic Review* 105 (3): 921–957.
- Besanko, David, e Ronald Braeutigam. 2014. [*Microeconomics*](https://books.google.com.br/books?id=BeoengEACAAJ). 5ª ed. New York: Wiley. Caps. 11–12.
- Borenstein, Severin, e Nancy L. Rose. 1994. "[Competition and Price Dispersion in the U.S. Airline Industry.](https://doi.org/10.1086/261950)" *Journal of Political Economy* 102 (4): 653–683.
- Cowling, Keith, e Dennis C. Mueller. 1978. "[The Social Costs of Monopoly Power.](https://doi.org/10.2307/2231972)" *Economic Journal* 88 (352): 727–748.
- De Loecker, Jan, Jan Eeckhout, e Gabriel Unger. 2020. "[The Rise of Market Power and the Macroeconomic Implications.](https://doi.org/10.1093/qje/qjz041)" *Quarterly Journal of Economics* 135 (2): 561–644.
- Giambiagi, Fabio, e Ana Cláudia Além. 2016. [*Finanças Públicas: Teoria e Prática no Brasil*](https://books.google.com.br/books?id=Xqf-jwEACAAJ). 5ª ed. Rio de Janeiro: Elsevier.
- Harberger, Arnold C. 1954. "[Monopoly and Resource Allocation.](https://doi.org/10.2307/1923808)" *American Economic Review* 44 (2): 77–87.
- Leibenstein, Harvey. 1966. "[Allocative Efficiency vs. 'X-Efficiency'.](https://doi.org/10.2307/1823775)" *American Economic Review* 56 (3): 392–415.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 12.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage. Caps. 14–15.
- Posner, Richard A. 1975. "[The Social Costs of Monopoly and Regulation.](https://doi.org/10.1086/260357)" *Journal of Political Economy* 83 (4): 807–827.
- Spence, Michael. 1975. "[Monopoly, Quality, and Regulation.](https://doi.org/10.2307/3003237)" *Bell Journal of Economics* 6 (2): 417–429.
- Tirole, Jean. 1988. [*The Theory of Industrial Organization*](https://books.google.com/books/about/The_Theory_of_Industrial_Organization.html?id=HIjsF0XONF8C). Cambridge: MIT Press. Caps. 1–3.
- Varian, Hal R. 1992. [*Microeconomic Analysis*](https://books.google.com/books/about/Microeconomic_Analysis.html?id=m20iQAAACAAJ). 3ª ed. New York: W. W. Norton. Caps. 14, 24.
- Wallsten, Scott. 2001. "[An Econometric Analysis of Telecom Competition, Privatization, and Regulation in Africa and Latin America.](https://doi.org/10.1111/1468-2354.t01-1-00106)" *Journal of Industrial Economics* 49 (1): 1–19.
