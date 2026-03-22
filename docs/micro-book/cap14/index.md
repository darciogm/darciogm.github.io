# Capítulo 14 — Quando Tudo se Encaixa (ou Quase Isso): Equilíbrio Geral

No capítulo anterior, analisamos mercados isolados — o chamado equilíbrio parcial marshalliano. Mas os mercados não existem no vácuo: o preço do milho afeta a demanda por soja; o salário dos engenheiros influencia o custo de construção civil; uma política comercial que protege a indústria têxtil altera os preços relativos em toda a economia. A análise de **equilíbrio geral** busca compreender a interdependência simultânea de todos os mercados.

Este capítulo desenvolve a teoria walrasiana de equilíbrio geral — desde a intuição gráfica da Caixa de Edgeworth até a formalização matemática via funções de excesso de demanda e a prova de existência pelo Teorema do Ponto Fixo de Brouwer. Estabeleceremos os dois teoremas fundamentais do bem-estar, que conectam eficiência de Pareto e concorrência perfeita, e concluiremos com uma visão dos modelos computáveis de equilíbrio geral (CGE), que permitem aplicar essa teoria à avaliação de políticas públicas.

---

## 14.1 O Sistema de Preços Competitivo

### Interdependência de mercados

Em uma economia com \(n\) bens, os preços \(p_1, p_2, \ldots, p_n\) são determinados simultaneamente pela interação de todos os consumidores e produtores em todos os mercados. Uma mudança em qualquer mercado pode reverberar por toda a economia.

!!! definition "Equilíbrio geral competitivo"
    Um **equilíbrio geral competitivo** (ou equilíbrio walrasiano) é um vetor de preços \(\mathbf{p}^* = (p_1^*, p_2^*, \ldots, p_n^*)\) tal que todos os mercados se equilibram simultaneamente: para cada bem \(k\),

    \[
    \sum_{i=1}^{I} x_i^k(\mathbf{p}^*) = \sum_{j=1}^{J} y_j^k(\mathbf{p}^*) + \sum_{i=1}^{I} \omega_i^k
    \]

    onde \(x_i^k\) é a demanda do consumidor \(i\) pelo bem \(k\), \(y_j^k\) é a oferta líquida da firma \(j\) do bem \(k\), e \(\omega_i^k\) é a dotação inicial do consumidor \(i\) do bem \(k\).

### Homogeneidade e normalização

Uma observação aparentemente simples, mas com profundas implicações, é que em um sistema competitivo apenas os **preços relativos** importam. As funções de demanda e oferta são homogêneas de grau zero nos preços: se todos os preços dobram, as quantidades demandadas e ofertadas não se alteram. Isso permite normalizar os preços, fixando um bem como **numerário** com preço igual a 1:

\[
p_n = 1 \quad \Rightarrow \quad \text{sistema com } n-1 \text{ preços relativos a determinar}
\]

---

## 14.2 Modelo Gráfico: A Caixa de Edgeworth

A definição formal de equilíbrio geral competitivo — um vetor de preços que equilibra simultaneamente todos os mercados — pode parecer abstrata à primeira vista. Para desenvolver intuição antes de mergulhar na formalização matemática, começamos por um modelo gráfico simples e profundamente iluminador: a Caixa de Edgeworth. Trata-se de uma economia mínima, com apenas dois consumidores e dois bens, mas que já captura a essência das trocas voluntárias, da eficiência e do papel dos preços relativos.

### Construção

Considere uma economia de troca pura com dois consumidores (A e B) e dois bens (1 e 2). As dotações totais da economia são:

\[
\bar{x}_1 = \omega_A^1 + \omega_B^1, \qquad \bar{x}_2 = \omega_A^2 + \omega_B^2
\]

A **Caixa de Edgeworth** é um retângulo com dimensões \(\bar{x}_1 \times \bar{x}_2\). O consumidor A é medido a partir do canto inferior esquerdo e o consumidor B a partir do canto superior direito. Cada ponto na caixa representa uma alocação factível que esgota todos os recursos.

!!! definition "Caixa de Edgeworth"
    A **Caixa de Edgeworth** é uma representação gráfica de todas as alocações factíveis em uma economia de troca pura com dois consumidores e dois bens. Cada ponto no retângulo especifica simultaneamente as cestas de consumo de ambos os consumidores.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** A Caixa de Edgeworth é um mapa de todas as formas possíveis de dividir os recursos de uma economia entre duas pessoas.

    **Pense assim:** Imagine dois colegas de república dividindo o que sobrou na geladeira: 6 fatias de pizza e 4 latas de refrigerante. Qualquer combinação que dê o total — 4 fatias para um e 2 para outro, por exemplo — é um ponto na caixa. Movendo o ponto, você redistribui pizza e refrigerante entre os dois. A mágica da caixa é mostrar, num só diagrama, se existe uma redistribuição que deixe ambos mais felizes.

    **Por que isso importa:** A Caixa de Edgeworth é a ferramenta visual fundamental para entender trocas voluntárias, eficiência e os ganhos do comércio — inclusive entre países, como no acordo Mercosul-UE.

### Curvas de indiferença na caixa

As curvas de indiferença do consumidor A são desenhadas normalmente (convexas em relação à origem inferior esquerda). As curvas de indiferença do consumidor B são desenhadas invertidas (convexas em relação ao canto superior direito). Quando duas curvas de indiferença se tangenciam, as taxas marginais de substituição são iguais:

\[
TMS_A^{12} = TMS_B^{12}
\]

Nesse ponto, não há trocas mutuamente benéficas possíveis — a alocação é **eficiente no sentido de Pareto**.

---

### Gráfico interativo: Caixa de Edgeworth

Explore a Caixa de Edgeworth com dois consumidores e dois bens. Ajuste as dotações iniciais e os parâmetros de preferências Cobb-Douglas. Arraste o ponto de alocação X para verificar se ele representa uma melhoria de Pareto em relação à dotação inicial e se está sobre a curva de contrato (eficiência). As curvas de indiferença tracejadas passam pela dotação E; as contínuas passam pela alocação X.

<iframe src="../graficos/cap14/caixa-edgeworth.html" width="100%" style="border:none;border-radius:8px; min-height:400px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem; min-height:400px;" markdown>
**Figura 14.1** — Caixa de Edgeworth. Ajuste as dotações iniciais e os parâmetros de preferências Cobb-Douglas. Arraste o ponto de alocação para verificar melhorias de Pareto e eficiência sobre a curva de contrato.
</p>

---

## 14.3 Troca Pura: Curva de Contrato e Núcleo

A Caixa de Edgeworth nos permitiu visualizar alocações e curvas de indiferença. Agora, podemos formular a pergunta central da economia do bem-estar: entre todas as alocações possíveis, quais são "boas"? Mais precisamente, quais alocações não desperdiçam oportunidades de trocas mutuamente benéficas? O conceito de eficiência de Pareto fornece o critério, e a curva de contrato identifica o locus de todas as alocações eficientes.

### Eficiência de Pareto na troca

!!! definition "Eficiência de Pareto"
    Uma alocação é **eficiente no sentido de Pareto** (ou um **ótimo de Pareto**) se não existe outra alocação factível que melhore a situação de pelo menos um agente sem piorar a de nenhum outro.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Uma situação é eficiente no sentido de Pareto quando não dá mais para melhorar a vida de alguém sem prejudicar outra pessoa.

    **Pense assim:** Pense em uma partilha de bolo de aniversário. Se dá para refatiar o bolo de modo que alguém ganhe um pedaço maior sem que ninguém fique com um pedaço menor, a divisão original era ineficiente. Eficiência de Pareto é quando todo o bolo já foi distribuído da melhor forma possível — qualquer mudança que beneficie alguém necessariamente tira de outro.

    **Por que isso importa:** Eficiência de Pareto é o critério mínimo de "bom funcionamento" de uma economia, mas não diz nada sobre justiça — uma sociedade onde uma pessoa tem tudo e as demais nada pode ser Pareto-eficiente, o que mostra por que eficiência e equidade são questões distintas.

O conjunto de todas as alocações Pareto-eficientes na Caixa de Edgeworth forma a **curva de contrato** — o locus dos pontos de tangência entre as curvas de indiferença dos dois consumidores.

!!! definition "Curva de contrato"
    A **curva de contrato** é o conjunto de todas as alocações Pareto-eficientes na Caixa de Edgeworth. Formalmente, é o conjunto de alocações \((x_A, x_B)\) tais que:

    \[
    TMS_A^{12}(x_A) = TMS_B^{12}(x_B)
    \]

    sujeito à factibilidade \(x_A + x_B = \bar{x}\).

### O núcleo da economia

O **núcleo** é um subconjunto da curva de contrato: inclui apenas as alocações Pareto-eficientes que são individualmente racionais, ou seja, que dão a cada consumidor utilidade pelo menos tão alta quanto a obtida com suas dotações iniciais:

\[
U_A(x_A) \geq U_A(\omega_A) \quad \text{e} \quad U_B(x_B) \geq U_B(\omega_B)
\]

O equilíbrio walrasiano pertence ao núcleo. Além disso, à medida que a economia é "replicada" (duplicando o número de consumidores de cada tipo), o núcleo se contrai, convergindo para o equilíbrio walrasiano no limite — este é o **Teorema do Limite do Núcleo** de Debreu e Scarf. Esse resultado tem um significado profundo: em economias grandes, com muitos agentes, o poder de barganha individual se dilui e o resultado de mercado se aproxima do único resultado que nenhuma coalizão de agentes pode melhorar. É a versão mais rigorosa da ideia de que a concorrência elimina o poder de mercado.

---

## 14.4 Produção e Troca: Fronteira de Possibilidades de Produção

A análise da Caixa de Edgeworth tratou de uma economia de troca pura — os bens já existem e a única questão é como distribuí-los. Mas em economias reais, os bens precisam ser produzidos, e a alocação de insumos entre setores produtivos é uma decisão tão importante quanto a distribuição de bens entre consumidores. Ao introduzir produção no modelo, surge uma nova dimensão de eficiência e um novo instrumento gráfico fundamental: a **fronteira de possibilidades de produção** (FPP).

### Eficiência na produção

Quando introduzimos produção na análise, precisamos considerar a eficiência na alocação de insumos entre setores. Com dois insumos (trabalho L e capital K) e dois bens, podemos construir uma segunda Caixa de Edgeworth para a produção. O locus de tangências entre as isoquantas dos dois setores forma a **curva de contrato na produção**:

\[
TMST_1^{LK} = TMST_2^{LK}
\]

### Fronteira de possibilidades de produção (FPP)

A curva de contrato na produção mapeia-se na **fronteira de possibilidades de produção** (FPP), que mostra as combinações máximas dos dois bens que a economia pode produzir dados seus recursos.

A inclinação da FPP é a **taxa marginal de transformação** (TMT):

\[
TMT = -\frac{dX_2}{dX_1} = \frac{CMg_1}{CMg_2}
\]

### Eficiência no mix de produtos

A eficiência econômica plena requer que a TMT iguale a TMS comum aos consumidores:

\[
TMT = TMS_A^{12} = TMS_B^{12}
\]

Isso garante que a combinação de bens produzida é exatamente aquela que os consumidores desejam, dados os recursos disponíveis. Se, por exemplo, os consumidores estivessem dispostos a trocar 3 unidades do bem 2 por 1 do bem 1 (TMS = 3), mas a economia só precisasse sacrificar 1 unidade do bem 2 para produzir 1 do bem 1 (TMT = 1), seria eficiente produzir mais do bem 1 — pois o benefício para os consumidores superaria o custo de oportunidade. A igualdade TMT = TMS elimina essas oportunidades de melhoria.

---

## Tabela: Condições de Eficiência de Pareto

As seções anteriores identificaram três tipos de eficiência: na troca (entre consumidores), na produção (entre setores) e no mix de produtos (entre o que se produz e o que se deseja consumir). A eficiência de Pareto plena requer que todas as três sejam satisfeitas simultaneamente. A tabela abaixo sintetiza as condições marginais correspondentes em uma economia com dois consumidores (A, B), dois bens (1, 2) e dois insumos (L, K).

**Tabela 14.1** — Condições de eficiência de Pareto

| Tipo de eficiência | Condição marginal | Interpretação |
|---|---|---|
| **Eficiência na troca** | \(TMS_A^{12} = TMS_B^{12}\) | Os consumidores valorizam os bens na mesma proporção marginal; não há trocas mutuamente benéficas. |
| **Eficiência na produção** | \(TMST_1^{LK} = TMST_2^{LK}\) | Os insumos são alocados entre setores de modo que é impossível aumentar a produção de um bem sem reduzir a do outro. |
| **Eficiência no mix de produtos** | \(TMT^{12} = TMS_A^{12} = TMS_B^{12}\) | A combinação de bens produzida corresponde às preferências dos consumidores; o custo de oportunidade social iguala a valoração marginal. |

!!! note "Concorrência perfeita e eficiência"
    Em concorrência perfeita, o sistema de preços descentraliza automaticamente todas essas condições. Os consumidores igualam suas TMS à razão de preços (\(TMS = p_1/p_2\)); as firmas igualam suas TMST à razão de preços dos insumos (\(TMST = w/r\)); e a maximização de lucro garante que \(CMg_1/CMg_2 = p_1/p_2\). Portanto, \(TMS = TMT\).

---

### Gráfico interativo: Fronteira de Possibilidades de Produção (FPP)

Visualize a fronteira de possibilidades de produção e a taxa marginal de transformação (TMT). Ajuste a dotação de recursos para expandir ou contrair a FPP, e mova o ponto ao longo da fronteira para observar como o custo de oportunidade (TMT) varia. Pontos interiores são ineficientes; pontos exteriores são infactíveis.

<iframe src="../graficos/cap14/fpp.html" width="100%" style="border:none;border-radius:8px; min-height:400px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem; min-height:400px;" markdown>
**Figura 14.2** — Fronteira de possibilidades de produção (FPP). Ajuste a dotação de recursos e mova o ponto ao longo da fronteira para observar como o custo de oportunidade (TMT) varia.
</p>

---

## Box Brasil: Mercosul-UE e os Ganhos de Troca

!!! example "Box Brasil — Acordo Mercosul–União Europeia: equilíbrio geral em escala continental"
    Em dezembro de 2024, após 25 anos de negociação, o **Mercosul** e a **União Europeia** assinaram um acordo de parceria comercial que cria uma das maiores zonas de livre comércio do mundo, reunindo **718 milhões de pessoas** e um PIB conjunto de US$ 22,4 trilhões.

    **Os ganhos de troca na linguagem da Caixa de Edgeworth**

    O acordo pode ser interpretado como um movimento ao longo da "caixa de Edgeworth" entre dois blocos: o Mercosul (dotação abundante em commodities agrícolas e minerais) e a UE (dotação abundante em bens industrializados e serviços). Antes do acordo, tarifas de importação impediam que os preços relativos igualassem as TMS dos dois blocos — a alocação estava dentro da caixa, mas fora da curva de contrato. A eliminação de tarifas aproxima os preços relativos dos custos marginais, movendo a alocação em direção à eficiência de Pareto.

    **Estimativas de equilíbrio geral**

    Estudos do **[IPEA](https://www.ipea.gov.br)** utilizando modelos CGE estimam que o acordo elevará o PIB brasileiro em **0,46%** (US$ 9,3 bilhões) até 2040 e aumentará o fluxo comercial bilateral em **R$ 94,2 bilhões** — com R$ 52,1 bilhões em exportações brasileiras adicionais. As exportações do agronegócio brasileiro para a UE poderiam crescer até 26%.

    **Por que equilíbrio parcial subestima os ganhos?**

    Uma análise mercado a mercado (equilíbrio parcial) capturaria apenas os ganhos diretos da redução tarifária em cada setor. O modelo CGE captura adicionalmente: (i) realocação de trabalho e capital entre setores; (ii) efeitos sobre a taxa de câmbio real; (iii) ganhos de produtividade via maior concorrência e acesso a insumos importados mais baratos; (iv) efeitos sobre a receita do governo e consequentes ajustes fiscais.

    **Fonte**: IPEA; Ministério das Relações Exteriores; Agência Brasil (dez/2024).

---

## 14.5 O Primeiro Teorema do Bem-Estar

As condições de eficiência na troca, na produção e no mix de produtos — sintetizadas na tabela acima — são alcançadas simultaneamente pelo equilíbrio competitivo. Esse resultado não é óbvio: como é possível que milhões de agentes, cada um perseguindo seu próprio interesse, sem nenhuma coordenação central, cheguem a um resultado eficiente? O Primeiro Teorema do Bem-Estar formaliza essa intuição, constituindo o resultado mais importante de toda a teoria do equilíbrio geral.

!!! abstract "Primeiro Teorema do Bem-Estar"
    Se todos os consumidores e firmas são tomadores de preço, e se existe um mercado completo para cada bem, então o equilíbrio competitivo (walrasiano) é **eficiente no sentido de Pareto**.

Este é o resultado formal que dá substância à intuição da "mão invisível" de Adam Smith: sob concorrência perfeita, o interesse próprio dos agentes, guiado pelos preços de mercado, conduz a uma alocação eficiente sem necessidade de planejamento centralizado.

!!! proof "Demonstração"
    **Demonstração do Primeiro Teorema do Bem-Estar** (economia de troca pura)

    Considere uma economia com \(I\) consumidores e \(n\) bens. Seja \((\mathbf{x}^*, \mathbf{p}^*)\) um equilíbrio walrasiano, onde \(\mathbf{x}_i^*\) é a cesta escolhida pelo consumidor \(i\) e \(\mathbf{p}^*\) é o vetor de preços de equilíbrio.

    **Suposição:** As preferências de cada consumidor são localmente não saciadas (para qualquer cesta e qualquer vizinhança, existe uma cesta preferida naquela vizinhança).

    Suponha, por contradição, que \(\mathbf{x}^*\) não seja Pareto-eficiente. Então existe uma alocação factível \(\hat{\mathbf{x}} = (\hat{\mathbf{x}}_1, \ldots, \hat{\mathbf{x}}_I)\) tal que:

    \[
    \hat{\mathbf{x}}_i \succsim_i \mathbf{x}_i^* \quad \forall\, i, \qquad \text{e} \qquad \hat{\mathbf{x}}_j \succ_j \mathbf{x}_j^* \quad \text{para algum } j
    \]

    **Passo 1:** Se \(\hat{\mathbf{x}}_j \succ_j \mathbf{x}_j^*\), então \(\hat{\mathbf{x}}_j\) não pertence ao conjunto orçamentário de \(j\) no equilíbrio (caso contrário, \(j\) teria escolhido \(\hat{\mathbf{x}}_j\) em vez de \(\mathbf{x}_j^*\)). Portanto:

    \[
    \mathbf{p}^* \cdot \hat{\mathbf{x}}_j > \mathbf{p}^* \cdot \boldsymbol{\omega}_j \tag{1}
    \]

    **Passo 2:** Para todo \(i\) tal que \(\hat{\mathbf{x}}_i \succsim_i \mathbf{x}_i^*\), a não saciedade local implica que:

    \[
    \mathbf{p}^* \cdot \hat{\mathbf{x}}_i \geq \mathbf{p}^* \cdot \boldsymbol{\omega}_i \tag{2}
    \]

    (Se \(\hat{\mathbf{x}}_i\) custasse estritamente menos, por não saciedade local, existiria uma cesta ainda melhor e acessível, contradizendo a otimalidade de \(\mathbf{x}_i^*\).)

    **Passo 3:** Somando (1) e (2) sobre todos os consumidores:

    \[
    \sum_{i=1}^{I} \mathbf{p}^* \cdot \hat{\mathbf{x}}_i > \sum_{i=1}^{I} \mathbf{p}^* \cdot \boldsymbol{\omega}_i
    \]

    \[
    \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \hat{\mathbf{x}}_i \right) > \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \boldsymbol{\omega}_i \right)
    \]

    Mas factibilidade de \(\hat{\mathbf{x}}\) exige \(\sum_i \hat{\mathbf{x}}_i \leq \sum_i \boldsymbol{\omega}_i\). Com \(\mathbf{p}^* > 0\) (consequência da não saciedade local), isso implica:

    \[
    \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \hat{\mathbf{x}}_i \right) \leq \mathbf{p}^* \cdot \left( \sum_{i=1}^{I} \boldsymbol{\omega}_i \right)
    \]

    **Contradição.** Portanto, \(\mathbf{x}^*\) é Pareto-eficiente. \(\blacksquare\)

!!! tip "Hipóteses cruciais"
    O Primeiro Teorema requer: (i) comportamento tomador de preço; (ii) mercados completos (sem externalidades nem bens públicos); (iii) não saciedade local das preferências. A violação de qualquer uma dessas hipóteses abre espaço para **falhas de mercado** — tema dos próximos capítulos.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Quando os mercados funcionam bem (sem monopólios, externalidades ou informação assimétrica), o interesse próprio de cada agente leva, como que por mágica, a um resultado eficiente para todos.

    **Pense assim:** Ninguém coordena os milhares de caminhões que levam comida de Mato Grosso aos supermercados de São Paulo. Cada motorista, cada atacadista e cada varejista age por interesse próprio — mas o sistema de preços funciona como um "maestro invisível", sinalizando onde falta e onde sobra produto. O Primeiro Teorema formaliza essa ideia: se os preços são livres e ninguém tem poder de mercado, o resultado é eficiente.

    **Por que isso importa:** Esse teorema é o fundamento teórico para políticas pró-concorrência e contra monopólios — mas também alerta que, quando as hipóteses falham (externalidades, bens públicos), a intervenção governamental pode ser justificada.

---

## 14.6 O Segundo Teorema do Bem-Estar

O Primeiro Teorema nos diz que o equilíbrio competitivo é eficiente — mas *qual* equilíbrio eficiente? A curva de contrato contém infinitas alocações Pareto-eficientes, e algumas delas são altamente desiguais. O mercado seleciona um ponto específico na curva de contrato, determinado pelas dotações iniciais dos agentes. Se a sociedade considera a distribuição resultante injusta, será necessário sacrificar a eficiência para obter equidade? O Segundo Teorema do Bem-Estar responde a essa pergunta com um resultado surpreendentemente otimista.

!!! abstract "Segundo Teorema do Bem-Estar"
    Se as preferências dos consumidores são convexas e localmente não saciadas, e se os conjuntos de produção das firmas são convexos, então qualquer alocação Pareto-eficiente pode ser alcançada como um equilíbrio competitivo, desde que se realizem transferências lump-sum apropriadas das dotações iniciais.

### Importância normativa

O Segundo Teorema separa eficiência de equidade. Ele afirma que, em princípio, a sociedade pode escolher qualquer ponto da curva de contrato (qualquer distribuição de bem-estar) e implementá-lo via mercados competitivos, bastando redistribuir as dotações iniciais por meio de transferências fixas (*lump-sum*). Isso significa que:

1. A concorrência perfeita não está vinculada a uma única distribuição de renda.
2. Objetivos de equidade podem ser perseguidos sem sacrificar eficiência, desde que os instrumentos redistributivos sejam do tipo *lump-sum*.

!!! note "Limitação prática"
    Na prática, transferências *lump-sum* perfeitas são difíceis de implementar, pois requerem informação sobre características dos agentes que geralmente são privadas. A tributação factível (imposto de renda, IVA) introduz distorções e gera perda de peso morto — um *trade-off* entre eficiência e equidade que é central na economia do setor público.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** A sociedade pode escolher qualquer distribuição de bem-estar que considere justa e, em princípio, alcançá-la usando mercados competitivos — basta redistribuir as dotações iniciais.

    **Pense assim:** Imagine que o governo quer reduzir a desigualdade sem destruir a eficiência da economia. O Segundo Teorema diz que, em teoria, bastaria redistribuir a "riqueza inicial" (terra, capital) e depois deixar os mercados funcionarem livremente. É como reorganizar as fichas antes de começar o jogo, em vez de mudar as regras durante a partida. O problema é que, na prática, redistribuir sem distorcer é quase impossível — o Bolsa Família, por exemplo, é eficiente mas ainda gera algum custo administrativo.

    **Por que isso importa:** Esse teorema fundamenta a separação entre política de eficiência (deixar mercados funcionar) e política de equidade (redistribuir renda), e é a base teórica de programas de transferência de renda como o Bolsa Família.

---

## Box Brasil: A Reforma Tributária e os Teoremas do Bem-Estar

!!! example "Box Brasil — IBS + CBS: eficiência econômica à luz do equilíbrio geral"
    A **Reforma Tributária** brasileira (EC 132/2023, regulamentada pela LC 214/2025) é, do ponto de vista da teoria do equilíbrio geral, uma das maiores intervenções sobre o sistema de preços relativos já realizadas no país. Ela substitui cinco tributos sobre consumo (PIS, Cofins, IPI, ICMS e ISS) por dois: a **CBS** (federal) e o **IBS** (estadual/municipal), formando um IVA dual com alíquota estimada entre 26,5% e 28%.

    **Por que a reforma é um problema de equilíbrio geral?**

    O sistema tributário anterior introduzia distorções em múltiplos mercados simultaneamente: cumulatividade (tributo sobre tributo), guerra fiscal entre estados (alíquotas diferentes de ICMS), e tratamentos setoriais desiguais. Essas distorções violavam as condições de eficiência de Pareto — em particular, impediam que os preços relativos refletissem os custos marginais reais (condição \(\mathrm{TMT} = \mathrm{TMS}\)).

    A análise de equilíbrio parcial subestima os ganhos da reforma porque ignora os efeitos cruzados entre mercados. Quando o tributo sobre o setor têxtil muda, isso afeta o mercado de algodão, o de vestuário, o de mão de obra e assim por diante — exatamente o tipo de interdependência que o modelo walrasiano captura.

    **O que dizem os modelos CGE?**

    Estudos do IPEA, da FGV e do Ministério da Fazenda utilizando modelos de equilíbrio geral computável (Seção 14.10) estimam que a reforma pode elevar o **PIB potencial em até 10% a 20%** ao longo de 15 anos, primordialmente via ganhos de produtividade total dos fatores e aumento do estoque de capital. A reforma tributária aparece consistentemente como o cenário de maior ganho de bem-estar nos modelos CGE brasileiros — acima de acordos comerciais ou liberalização unilateral.

    **Conexão com o Segundo Teorema**

    O Segundo Teorema do Bem-Estar (Seção 14.6) afirma que qualquer alocação eficiente pode ser sustentada por mercados competitivos, desde que as transferências sejam *lump-sum*. A reforma tributária brasileira caminha nessa direção: ao substituir tributos cumulativos (distorcivos) por um IVA não cumulativo (menos distorcivo), ela aproxima o sistema tributário de uma transferência *lump-sum*, reduzindo a perda de peso morto. Não é uma transferência *lump-sum* perfeita — o IVA ainda distorce a margem consumo-lazer —, mas é substancialmente menos distorcivo que o sistema anterior.

    **Fonte**: Ministério da Fazenda; IFI/Senado, Estudo Especial nº 19 (2024); IBRE/FGV.

---

### Gráfico interativo: Equilíbrio Geral Walrasiano

Combine a Caixa de Edgeworth com uma linha de preços. Ajuste o preço relativo \(p_1/p_2\) para observar as demandas ótimas de cada agente e o excesso de demanda resultante. O equilíbrio walrasiano ocorre quando o excesso de demanda é zero -- o gráfico indica o preço de equilíbrio e sinaliza a direção de ajuste necessária.

<iframe src="../graficos/cap14/equilibrio-geral.html" width="100%" style="border:none;border-radius:8px; min-height:400px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem; min-height:400px;" markdown>
**Figura 14.3** — Equilíbrio geral walrasiano. Ajuste o preço relativo \(p_1/p_2\) para observar as demandas ótimas de cada agente e o excesso de demanda. O equilíbrio ocorre quando o excesso de demanda é zero.
</p>

---

## 14.7 Modelo Matemático de Troca

Até aqui, a análise de equilíbrio geral apoiou-se em argumentos gráficos (Caixa de Edgeworth) e na enunciação dos Teoremas do Bem-Estar. Agora, formalizamos o modelo matematicamente, introduzindo as funções de excesso de demanda e a Lei de Walras — ferramentas que nos permitirão, na seção seguinte, demonstrar a existência do equilíbrio walrasiano.

### Funções de excesso de demanda

Defina a **demanda líquida** (ou excesso de demanda) do consumidor \(i\) pelo bem \(k\) como:

\[
z_i^k(\mathbf{p}) = x_i^k(\mathbf{p}) - \omega_i^k
\]

O **excesso de demanda agregado** pelo bem \(k\) é:

\[
Z^k(\mathbf{p}) = \sum_{i=1}^{I} z_i^k(\mathbf{p}) = \sum_{i=1}^{I} x_i^k(\mathbf{p}) - \bar{\omega}^k
\]

O equilíbrio walrasiano requer \(Z^k(\mathbf{p}^*) = 0\) para todo \(k = 1, \ldots, n\) (ou, mais geralmente, \(Z^k(\mathbf{p}^*) \leq 0\) com igualdade se \(p_k^* > 0\)).

### Propriedades das funções de excesso de demanda

As funções de excesso de demanda agregado satisfazem:

1. **Homogeneidade de grau zero**: \(Z^k(\lambda \mathbf{p}) = Z^k(\mathbf{p})\) para todo \(\lambda > 0\).
2. **Continuidade**: sob hipóteses adequadas sobre preferências (contínuas, convexas, localmente não saciadas).
3. **Lei de Walras** (ver abaixo).

### Lei de Walras

!!! abstract "Lei de Walras"
    Para qualquer vetor de preços \(\mathbf{p}\), o valor total do excesso de demanda é identicamente zero:

    \[
    \sum_{k=1}^{n} p_k \cdot Z^k(\mathbf{p}) \equiv 0
    \]

A Lei de Walras decorre diretamente do fato de que cada consumidor satisfaz sua restrição orçamentária com igualdade (pela não saciedade local):

\[
\mathbf{p} \cdot \mathbf{x}_i(\mathbf{p}) = \mathbf{p} \cdot \boldsymbol{\omega}_i \quad \forall\, i
\]

Somando sobre todos os consumidores:

\[
\sum_{i} \mathbf{p} \cdot \mathbf{x}_i(\mathbf{p}) = \sum_{i} \mathbf{p} \cdot \boldsymbol{\omega}_i \quad \Longrightarrow \quad \mathbf{p} \cdot \mathbf{Z}(\mathbf{p}) = 0
\]

!!! tip "Consequência importante"
    A Lei de Walras implica que, em um sistema com \(n\) mercados, se \(n - 1\) deles estão em equilíbrio, o \(n\)-ésimo mercado também estará necessariamente em equilíbrio. Portanto, há apenas \(n - 1\) equações de equilíbrio independentes — exatamente o número de preços relativos a determinar (após normalização).

Essa consequência é profundamente significativa do ponto de vista prático. Ela significa que o "leiloeiro walrasiano" do Capítulo 13 não precisa verificar *todos* os mercados: basta equilibrar \(n-1\) deles, e o último se equilibra automaticamente. Também explica por que a normalização de um preço como numerário é legítima — ela não elimina informação, pois corresponde exatamente à equação redundante que a Lei de Walras garante.

---

## 14.8 Existência de Equilíbrio

A formalização da seção anterior nos forneceu as funções de excesso de demanda e a Lei de Walras. Mas uma questão fundamental permanece em aberto: existe de fato um vetor de preços que equilibra todos os mercados simultaneamente? Não é *a priori* evidente que um sistema de \(n-1\) equações não lineares interdependentes tenha solução. A demonstração de existência, devida a Arrow e Debreu (1954), é uma das mais célebres da economia matemática e utiliza um resultado da topologia: o Teorema do Ponto Fixo de Brouwer.

### O Teorema do Ponto Fixo de Brouwer

!!! abstract "Teorema do Ponto Fixo de Brouwer"
    Seja \(f: \Delta \to \Delta\) uma função contínua de um conjunto convexo e compacto \(\Delta \subset \mathbb{R}^n\) nele mesmo. Então existe pelo menos um ponto \(\mathbf{x}^* \in \Delta\) tal que:

    \[
    f(\mathbf{x}^*) = \mathbf{x}^*
    \]

### Aplicação à existência de equilíbrio

A ideia central é construir uma função que mapeia preços em preços e cujo ponto fixo corresponda a um equilíbrio walrasiano. Normalizamos os preços no **simplex unitário**:

\[
\Delta = \left\{ \mathbf{p} \in \mathbb{R}^n_+ : \sum_{k=1}^{n} p_k = 1 \right\}
\]

Definimos uma função de ajuste de preços \(g: \Delta \to \Delta\):

\[
g_k(\mathbf{p}) = \frac{p_k + \max\{0, Z^k(\mathbf{p})\}}{1 + \sum_{j=1}^{n} \max\{0, Z^j(\mathbf{p})\}}
\]

Esta função eleva o preço de bens com excesso de demanda positivo e reduz (relativamente) o de bens com excesso de oferta. Verifica-se que:

- \(g\) mapeia \(\Delta\) em \(\Delta\) (os novos preços são não negativos e somam 1).
- \(g\) é contínua (pois \(Z\) é contínua e \(\max\) preserva continuidade).

Pelo Teorema de Brouwer, existe \(\mathbf{p}^*\) tal que \(g(\mathbf{p}^*) = \mathbf{p}^*\). Pode-se mostrar, usando a Lei de Walras, que isso implica \(Z^k(\mathbf{p}^*) \leq 0\) para todo \(k\), com igualdade se \(p_k^* > 0\) — exatamente as condições de equilíbrio walrasiano.

!!! abstract "Teorema de Existência do Equilíbrio Walrasiano (Arrow-Debreu, 1954)"
    Se as preferências dos consumidores são contínuas, convexas e localmente não saciadas, e se as dotações agregadas são estritamente positivas, então existe pelo menos um equilíbrio walrasiano.

!!! note "Unicidade e estabilidade"
    O Teorema de Brouwer garante existência, mas não unicidade. Resultados de unicidade requerem condições adicionais sobre as funções de excesso de demanda (por exemplo, a condição de substitutibilidade bruta). Da mesma forma, a estabilidade do equilíbrio sob processos de ajuste *tâtonnement* requer hipóteses adicionais.

!!! info "🏅 Prêmio Nobel — Kenneth J. Arrow (1972) e Gérard Debreu (1983)"

    **Kenneth Joseph Arrow** (1921–2017) foi um economista americano, PhD pela Universidade de Columbia, professor em Stanford e Harvard. Dividiu o Nobel de 1972 com John Hicks.

    **Gérard Debreu** (1921–2004) foi um economista e matemático francês-americano. Formou-se na École Normale Supérieure de Paris e foi professor na UC Berkeley.

    **Por que ganharam o Nobel:**
    Arrow e Debreu provaram rigorosamente a existência de equilíbrio competitivo em uma economia com múltiplos mercados interdependentes (1954), usando o teorema do ponto fixo de Kakutani. Demonstraram também os dois Teoremas Fundamentais do Bem-Estar: que todo equilíbrio competitivo é Pareto-eficiente (1o TBE) e que qualquer alocação Pareto-eficiente pode ser descentralizada como equilíbrio competitivo via transferências lump-sum (2o TBE). Debreu axiomatizou a teoria do valor em *Theory of Value* (1959).

    **Conexão com este capítulo:**
    O modelo Arrow-Debreu é a estrutura formal que sustenta toda a análise de equilíbrio geral deste capítulo. A prova de existência do equilíbrio walrasiano, a Caixa de Edgeworth, os Teoremas do Bem-Estar e o conceito de mercados contingentes — todos são contribuições diretas ou derivações do framework desenvolvido por Arrow e Debreu.

---

## 14.9 Modelo Matemático de Produção e Troca

A demonstração de existência da seção anterior tratou de uma economia de troca pura. Como o modelo se generaliza quando incorporamos firmas que produzem bens a partir de insumos? A estrutura conceitual é a mesma — buscar um ponto fixo no mapeamento de preços —, mas a definição de equilíbrio precisa agora incluir as decisões de produção das firmas e a distribuição de seus lucros entre os consumidores acionistas.

### Extensão com produção

Quando incluímos firmas na economia, o modelo se generaliza. Com \(J\) firmas, cada firma \(j\) escolhe um plano de produção \(\mathbf{y}_j \in Y_j\) (seu conjunto de produção) para maximizar lucro:

\[
\max_{\mathbf{y}_j \in Y_j} \mathbf{p} \cdot \mathbf{y}_j
\]

Os consumidores possuem ações \(\theta_{ij}\) nas firmas, de modo que a renda do consumidor \(i\) inclui os lucros distribuídos:

\[
m_i(\mathbf{p}) = \mathbf{p} \cdot \boldsymbol{\omega}_i + \sum_{j=1}^{J} \theta_{ij} \cdot \pi_j(\mathbf{p})
\]

onde \(\pi_j(\mathbf{p}) = \mathbf{p} \cdot \mathbf{y}_j^*(\mathbf{p})\) é o lucro maximizado da firma \(j\).

### Equilíbrio com produção

!!! definition "Equilíbrio walrasiano com produção"
    Um equilíbrio walrasiano com produção é um vetor de preços \(\mathbf{p}^*\), alocações de consumo \(\{\mathbf{x}_i^*\}\) e planos de produção \(\{\mathbf{y}_j^*\}\) tais que:

    1. Cada consumidor \(i\) maximiza utilidade sujeito à restrição orçamentária ao preço \(\mathbf{p}^*\).
    2. Cada firma \(j\) maximiza lucro ao preço \(\mathbf{p}^*\).
    3. Todos os mercados se equilibram:

    \[
    \sum_{i=1}^{I} \mathbf{x}_i^* = \sum_{i=1}^{I} \boldsymbol{\omega}_i + \sum_{j=1}^{J} \mathbf{y}_j^*
    \]

A Lei de Walras generaliza-se naturalmente: o valor do excesso de demanda (agora incorporando produção) é identicamente zero. O teorema de existência de Arrow-Debreu aplica-se com hipóteses adicionais de convexidade sobre os conjuntos de produção.

---

## 14.10 Modelos Computáveis de Equilíbrio Geral (CGE)

A teoria walrasiana desenvolvida nas seções anteriores — com suas condições de equilíbrio, Teoremas do Bem-Estar e provas de existência — é matematicamente elegante, mas pode parecer distante da realidade de uma economia com milhares de setores, milhões de agentes e complexas interdependências. Como traduzir essa teoria em análises quantitativas capazes de avaliar o impacto de políticas públicas concretas, como a reforma tributária brasileira ou o acordo Mercosul-UE? A resposta está nos modelos computáveis de equilíbrio geral (CGE), que representam a ponte entre a teoria e a prática.

### Da teoria à prática

Os modelos de equilíbrio geral computável (CGE, do inglês *Computable General Equilibrium*) são implementações numéricas da teoria walrasiana. Eles especificam:

1. **Formas funcionais** para preferências (geralmente CES — elasticidade de substituição constante) e tecnologias (funções de produção Leontief, Cobb-Douglas ou CES aninhadas).
2. **Calibração** com dados de uma Matriz de Insumo-Produto ou de uma SAM (Matriz de Contabilidade Social).
3. **Solução numérica** do sistema de equações de equilíbrio via algoritmos iterativos.

### Estrutura típica

Um modelo CGE típico contém:

- Blocos de demanda: sistema de demanda derivado da maximização de utilidade.
- Blocos de oferta: funções de custo derivadas da minimização de custos.
- Condições de equilíbrio em mercados de bens, fatores e comércio exterior.
- Regras de fechamento: hipóteses sobre quais variáveis são endógenas e quais são exógenas (desemprego, balança comercial, receita do governo etc.).

### Tipos de análise

Modelos CGE são usados para simulações de **estática comparativa**: comparam o equilíbrio antes e depois de um choque de política (reforma tributária, acordo comercial, choque de preços de commodities). Os modelos **dinâmicos** incorporam acumulação de capital e crescimento.

!!! tip "Software"
    Os modelos CGE mais conhecidos utilizam o software GAMS (General Algebraic Modeling System) ou GEMPACK. Modelos globais como o GTAP (Global Trade Analysis Project) permitem análise de comércio internacional com desagregação por país e setor.

---

## Box Brasil: Modelos CGE Aplicados ao Brasil

!!! example "Box Brasil: Equilíbrio geral computável e políticas comerciais"
    O Brasil tem uma tradição relevante no desenvolvimento e aplicação de modelos de equilíbrio geral computável para avaliação de políticas públicas. Diversas instituições — como o IPEA (Instituto de Pesquisa Econômica Aplicada), a FGV (Fundação Getulio Vargas), a ESALQ/USP e universidades federais — mantêm modelos CGE calibrados para a economia brasileira.

    **Principais modelos brasileiros:**

    - **TERM-BR** (The Enormous Regional Model - Brasil): desenvolvido com base no modelo australiano TERM, é um CGE multiregional que desagrega a economia brasileira por unidade federativa. Utilizado para analisar impactos regionais de políticas fiscais e choques de infraestrutura.
    - **BeGreen**: modelo dinâmico CGE desenvolvido pelo CEDEPLAR/UFMG, voltado para análise ambiental e energética.
    - **Modelos GTAP com extensão brasileira**: utilizados para avaliar acordos comerciais como o Mercosul-União Europeia.

    **Análise de políticas comerciais:**

    Estudos do IPEA utilizando modelos CGE avaliaram os impactos de diferentes cenários de liberalização comercial sobre a economia brasileira. Resultados típicos incluem:

    | Cenário de política | PIB (var. %) | Exportações (var. %) | Importações (var. %) | Bem-estar (var. equiv., R\$ bi) |
    |---|---|---|---|---|
    | Acordo Mercosul-UE (cenário base) | +0,3 a +0,5 | +3,0 a +6,0 | +4,0 a +8,0 | +5 a +15 |
    | Liberalização unilateral (50% tarifas) | +0,5 a +1,2 | +5,0 a +10,0 | +8,0 a +15,0 | +10 a +25 |
    | Reforma tributária (IVA nacional) | +2,0 a +3,5 | +2,0 a +5,0 | +3,0 a +6,0 | +30 a +60 |

    *Nota: intervalos refletem diferentes especificações e fechamentos dos modelos.*

    **Lições dos modelos CGE para o Brasil:**

    1. **Efeitos setoriais heterogêneos**: A liberalização comercial tende a expandir setores com vantagem comparativa (agropecuária, mineração) e contrair setores protegidos (indústria automotiva, eletrônicos). O modelo CGE permite quantificar esses efeitos de recomposição setorial que a análise de equilíbrio parcial ignora.

    2. **Efeitos regionais**: Dada a heterogeneidade produtiva regional do Brasil, políticas comerciais afetam de forma desigual as unidades da federação. Modelos como o TERM-BR mostram que a liberalização comercial tende a beneficiar mais as regiões Centro-Oeste e Sul (agroexportadoras) e menos o Sudeste industrial.

    3. **Interações fiscais**: A reforma tributária é o cenário com maiores ganhos de bem-estar nos modelos CGE, pois o sistema tributário brasileiro introduz distorções que afetam múltiplos mercados simultaneamente — exatamente o tipo de fenômeno que a análise de equilíbrio geral captura e a parcial subestima.

    4. **Limitações**: Os modelos CGE baseiam-se em hipóteses de concorrência perfeita (na maioria das versões), retornos constantes de escala e pleno emprego de fatores. Extensões incorporando economias de escala, concorrência imperfeita e desemprego (modelos "novos CGE") são áreas ativas de pesquisa no Brasil.

## Resumo do Capítulo

- O **equilíbrio geral** analisa a interdependência simultânea de todos os mercados, em contraste com o equilíbrio parcial que estuda um mercado isolado. Um equilíbrio walrasiano é um vetor de preços $\mathbf{p}^*$ tal que todos os mercados se equilibram simultaneamente.
- A **Caixa de Edgeworth** é a ferramenta gráfica fundamental para visualizar trocas em uma economia com dois consumidores e dois bens. A **curva de contrato** conecta todas as alocações Pareto-eficientes, onde as taxas marginais de substituição dos dois consumidores são iguais.
- O **Primeiro Teorema do Bem-Estar** estabelece que todo equilíbrio walrasiano é eficiente de Pareto (sob as hipóteses de concorrência perfeita, ausência de externalidades e mercados completos). Esse resultado formaliza a "mão invisível" de Adam Smith.
- O **Segundo Teorema do Bem-Estar** afirma que qualquer alocação Pareto-eficiente pode ser sustentada como equilíbrio competitivo mediante redistribuição apropriada das dotações iniciais (transferências lump-sum), separando as questões de eficiência e equidade.
- A **existência** do equilíbrio walrasiano é demonstrada via o Teorema do Ponto Fixo de Brouwer, aplicado ao mapeamento de excesso de demanda. A **Lei de Walras** — a soma dos valores dos excessos de demanda é zero para quaisquer preços — é propriedade fundamental que permite normalizar um preço como numerário.
- Os **modelos computáveis de equilíbrio geral** (CGE) aplicam a teoria à avaliação quantitativa de políticas públicas, como reforma tributária, abertura comercial e infraestrutura, sendo amplamente utilizados no Brasil por instituições como IPEA e FGV.

## Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Equilíbrio geral walrasiano | Vetor de preços em que todos os mercados se equilibram simultaneamente: oferta iguala demanda em cada mercado. |
| Caixa de Edgeworth | Diagrama que representa todas as alocações possíveis de dois bens entre dois consumidores, dado o total fixo de recursos. |
| Curva de contrato | Conjunto de alocações Pareto-eficientes dentro da Caixa de Edgeworth, onde $\mathrm{TMS}_A = \mathrm{TMS}_B$. |
| Eficiência de Pareto | Alocação em que não é possível melhorar a situação de um agente sem piorar a de outro. |
| Primeiro Teorema do Bem-Estar | Todo equilíbrio competitivo é eficiente de Pareto (sob hipóteses padrão). |
| Segundo Teorema do Bem-Estar | Toda alocação Pareto-eficiente pode ser atingida como equilíbrio competitivo após redistribuição adequada das dotações. |
| Lei de Walras | A soma dos valores dos excessos de demanda é identicamente zero: $\sum_k p_k z_k(\mathbf{p}) \equiv 0$. |
| Numerário | Bem cujo preço é normalizado em 1; apenas preços relativos importam no equilíbrio geral. |
| Função de excesso de demanda | $z_k(\mathbf{p}) = D_k(\mathbf{p}) - S_k(\mathbf{p})$; no equilíbrio, $z_k(\mathbf{p}^*) = 0$ para todo $k$. |
| Modelos CGE | Modelos computáveis de equilíbrio geral que calibram e simulam numericamente os efeitos de políticas sobre toda a economia. |

---

## Exercícios Resolvidos

??? example "Exercício Resolvido 14.1 — Equilíbrio walrasiano na Caixa de Edgeworth"
    **Enunciado:** Considere uma economia de troca pura com dois consumidores (A e B) e dois bens. As dotações são \(\boldsymbol{\omega}_A = (8, 2)\) e \(\boldsymbol{\omega}_B = (2, 8)\). As funções de utilidade são \(U_A = x_1^A \cdot x_2^A\) e \(U_B = (x_1^B)^{1/3} \cdot (x_2^B)^{2/3}\). Encontre o equilíbrio walrasiano e verifique a eficiência de Pareto.

    **Dados:** \(\boldsymbol{\omega}_A = (8, 2)\), \(\boldsymbol{\omega}_B = (2, 8)\). Totais: \(\bar{x}_1 = 10\), \(\bar{x}_2 = 10\).

    **Resolução:**

    **Passo 1 — Demandas marshallianas**

    Normalizando \(p_2 = 1\) e denotando \(p = p_1\):

    *Consumidor A* (\(U_A = x_1 x_2\), Cobb-Douglas com \(\alpha = 1/2\)):

    \[
    x_1^A = \frac{I_A}{2p}, \qquad x_2^A = \frac{I_A}{2}, \qquad I_A = 8p + 2
    \]

    *Consumidor B* (\(U_B = x_1^{1/3} x_2^{2/3}\), Cobb-Douglas com \(\alpha = 1/3\)):

    \[
    x_1^B = \frac{I_B}{3p}, \qquad x_2^B = \frac{2I_B}{3}, \qquad I_B = 2p + 8
    \]

    **Passo 2 — Equilíbrio de mercado (bem 1)**

    \[
    \frac{8p + 2}{2p} + \frac{2p + 8}{3p} = 10
    \]

    Multiplicando por \(6p\):

    \[
    3(8p + 2) + 2(2p + 8) = 60p \implies 28p + 22 = 60p \implies p^* = \frac{22}{32} = \frac{11}{16}
    \]

    **Passo 3 — Alocações de equilíbrio**

    \[
    I_A = 8 \cdot \frac{11}{16} + 2 = \frac{120}{16} = \frac{15}{2}
    \]

    \[
    x_1^A = \frac{15/2}{2 \cdot 11/16} = \frac{15/2}{11/8} = \frac{60}{11} \approx 5{,}45, \qquad x_2^A = \frac{15}{4} = 3{,}75
    \]

    \[
    I_B = 2 \cdot \frac{11}{16} + 8 = \frac{150}{16} = \frac{75}{8}
    \]

    \[
    x_1^B = \frac{75/8}{3 \cdot 11/16} = \frac{75/8}{33/16} = \frac{50}{11} \approx 4{,}55, \qquad x_2^B = \frac{2 \cdot 75/8}{3} = \frac{25}{4} = 6{,}25
    \]

    Verificação: \(60/11 + 50/11 = 110/11 = 10\) ✓ e \(15/4 + 25/4 = 40/4 = 10\) ✓

    **Passo 4 — Verificação da Lei de Walras**

    A preços arbitrários \(p = 1\): \(I_A = 10\), \(I_B = 10\).

    \[
    Z^1 = \frac{10}{2} + \frac{10}{3} - 10 = \frac{-5}{3}, \qquad Z^2 = \frac{10}{2} + \frac{20}{3} - 10 = \frac{5}{3}
    \]

    \[
    p_1 Z^1 + p_2 Z^2 = 1 \cdot \left(-\frac{5}{3}\right) + 1 \cdot \frac{5}{3} = 0 \;\checkmark
    \]

    **Passo 5 — Verificação da eficiência de Pareto**

    \[
    TMS_A = \frac{x_2^A}{x_1^A} = \frac{15/4}{60/11} = \frac{15 \cdot 11}{4 \cdot 60} = \frac{11}{16} = p^* \;\checkmark
    \]

    \[
    TMS_B = \frac{(1/3)\,x_2^B}{(2/3)\,x_1^B} = \frac{x_2^B}{2\,x_1^B} = \frac{25/4}{2 \cdot 50/11} = \frac{25 \cdot 11}{4 \cdot 100} = \frac{11}{16} = p^* \;\checkmark
    \]

    **Resultado:** \(p^* = 11/16\), \(\mathbf{x}_A^* = (60/11,\; 15/4)\), \(\mathbf{x}_B^* = (50/11,\; 25/4)\). O equilíbrio é Pareto-eficiente: \(TMS_A = TMS_B = p^*\).

    **Interpretação econômica:** A troca melhora ambos os agentes: A, que tinha mais do bem 1 do que do bem 2, vende parte de sua dotação do bem 1 e compra bem 2. B faz o oposto. O Primeiro Teorema do Bem-Estar garante que o resultado é eficiente — não há recomposição das cestas que beneficie um sem prejudicar o outro. Na analogia com o comércio internacional, A é como o Brasil (abundante em commodities) e B como a UE (abundante em manufaturas): a troca beneficia ambos.

---

??? example "Exercício Resolvido 14.2 — Segundo Teorema e transferências lump-sum"
    **Enunciado:** Na mesma economia do ER 14.1, um planejador social deseja alcançar a alocação Pareto-eficiente \(\mathbf{x}_A = (5,\; 10/3)\), \(\mathbf{x}_B = (5,\; 20/3)\). Verifique que essa alocação é eficiente e determine a transferência *lump-sum* necessária.

    **Dados:** Mesmas preferências e dotações do ER 14.1. Alocação desejada: \(\mathbf{x}_A = (5,\; 10/3)\), \(\mathbf{x}_B = (5,\; 20/3)\).

    **Resolução:**

    **Passo 1 — Verificar eficiência de Pareto**

    \[
    TMS_A = \frac{x_2^A}{x_1^A} = \frac{10/3}{5} = \frac{2}{3}
    \]

    \[
    TMS_B = \frac{x_2^B}{2\,x_1^B} = \frac{20/3}{2 \cdot 5} = \frac{2}{3}
    \]

    \(TMS_A = TMS_B = 2/3\) ✓ — a alocação está na curva de contrato (Pareto-eficiente).

    **Passo 2 — Preço relativo que sustenta o equilíbrio**

    No equilíbrio competitivo: \(p_1/p_2 = TMS = 2/3\). Normalizando \(p_2 = 1\): \(p_1 = 2/3\).

    **Passo 3 — Renda necessária para cada consumidor**

    \[
    I_A^{\text{necessária}} = \frac{2}{3} \cdot 5 + 1 \cdot \frac{10}{3} = \frac{10}{3} + \frac{10}{3} = \frac{20}{3}
    \]

    \[
    I_B^{\text{necessária}} = \frac{2}{3} \cdot 5 + 1 \cdot \frac{20}{3} = \frac{10}{3} + \frac{20}{3} = 10
    \]

    **Passo 4 — Renda original ao novo preço**

    \[
    I_A^{\text{original}} = \frac{2}{3} \cdot 8 + 1 \cdot 2 = \frac{16}{3} + 2 = \frac{22}{3}
    \]

    \[
    I_B^{\text{original}} = \frac{2}{3} \cdot 2 + 1 \cdot 8 = \frac{4}{3} + 8 = \frac{28}{3}
    \]

    **Passo 5 — Transferência lump-sum**

    \[
    T_A = I_A^{\text{necessária}} - I_A^{\text{original}} = \frac{20}{3} - \frac{22}{3} = -\frac{2}{3}
    \]

    A paga uma transferência de \(2/3\) unidades do numerário para B. Após a transferência, os mercados competitivos geram exatamente a alocação desejada.

    **Resultado:** Transferência *lump-sum* de \(T = 2/3\) do consumidor A para o consumidor B, ao preço \(p^* = 2/3\).

    **Interpretação econômica:** O Segundo Teorema demonstra que eficiência e equidade são objetivos separáveis: basta redistribuir a riqueza inicial e deixar os mercados funcionarem. No Brasil, o **Bolsa Família** e o **BPC** (Benefício de Prestação Continuada) são exemplos de transferências diretas que buscam alterar a distribuição sem distorcer preços relativos — embora, na prática, nenhuma transferência seja perfeitamente *lump-sum* (sempre há custos administrativos e incentivos adversos).

---

## Exercícios

<a id="ex-14-1"></a>**Exercício 14.1.** Considere uma economia de troca pura com dois consumidores (A e B) e dois bens (1 e 2). As dotações são \(\boldsymbol{\omega}_A = (10, 2)\) e \(\boldsymbol{\omega}_B = (2, 8)\). As funções de utilidade são \(U_A = x_1^A \cdot x_2^A\) e \(U_B = x_1^B \cdot x_2^B\) (Cobb-Douglas com parâmetros iguais).

(a) Derive a curva de contrato.

(b) Encontre o equilíbrio walrasiano (preços e alocações), normalizando \(p_2 = 1\).

(c) Verifique a Lei de Walras.

(d) Verifique que o equilíbrio pertence ao núcleo.

[:material-arrow-right: Ver solução](../solucoes/cap14.md#ex-14-1)

---

<a id="ex-14-2"></a>**Exercício 14.2.** Em uma economia \(2 \times 2 \times 2\) (dois bens, dois consumidores, dois insumos), mostre que as seguintes condições são necessárias e suficientes para a eficiência de Pareto:

(a) \(TMS_A^{12} = TMS_B^{12}\) (eficiência na troca).

(b) \(TMST_1^{LK} = TMST_2^{LK}\) (eficiência na produção).

(c) \(TMT^{12} = TMS^{12}\) (eficiência no mix de produtos).

Explique por que cada condição é necessária, usando argumentos de contradição.

[:material-arrow-right: Ver solução](../solucoes/cap14.md#ex-14-2)

---

<a id="ex-14-3"></a>**Exercício 14.3.** Considere uma economia com três bens (\(k = 1, 2, 3\)) e funções de excesso de demanda:

\[
Z^1(\mathbf{p}) = 3\frac{p_2}{p_1} + 2\frac{p_3}{p_1} - 5
\]

\[
Z^2(\mathbf{p}) = -\frac{p_2}{p_1} + \frac{p_3}{p_1} + 1
\]

(a) Verifique que essas funções são homogêneas de grau zero.

(b) Use a Lei de Walras para derivar \(Z^3(\mathbf{p})\).

(c) Normalizando \(p_1 = 1\), encontre os preços de equilíbrio walrasiano.

[:material-arrow-right: Ver solução](../solucoes/cap14.md#ex-14-3)

---

<a id="ex-14-4"></a>**Exercício 14.4.** Apresente uma demonstração intuitiva (não formal) de por que o equilíbrio competitivo satisfaz as três condições de eficiência de Pareto listadas na tabela deste capítulo. Use o fato de que, em concorrência perfeita:

- Consumidores igualam \(TMS = p_1/p_2\)
- Produtores igualam \(TMST = w/r\)
- Maximização de lucro implica \(p = CMg\)

[:material-arrow-right: Ver solução](../solucoes/cap14.md#ex-14-4)

---

<a id="ex-14-5"></a>**Exercício 14.5.** Um país negocia um acordo de livre comércio que eliminará tarifas de importação sobre produtos industrializados. Usando a estrutura conceitual de equilíbrio geral:

(a) Explique por que a análise de equilíbrio parcial (mercado por mercado) pode subestimar ou superestimar os efeitos do acordo.

(b) Liste três canais pelos quais a eliminação de tarifas em um setor afeta outros setores da economia.

(c) Discuta como um modelo CGE capturaria esses efeitos intersetoriais e quais dados seriam necessários para calibrá-lo.

(d) Quais hipóteses do modelo CGE padrão (concorrência perfeita, retornos constantes, pleno emprego) são mais problemáticas para a análise da economia brasileira? Justifique.

[:material-arrow-right: Ver solução](../solucoes/cap14.md#ex-14-5)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2019 — Questão 10"
    Considere o modelo da Caixa de Edgeworth. O consumidor A tem utilidade linear \(U_A(X,Y) = X + Y\) e dotação inicial \(\mathbf{e}_A = (1, 9)\). O consumidor B tem utilidade Cobb-Douglas \(U_B(X,Y) = X^{1/2}Y^{1/2}\) e dotação inicial \(\mathbf{e}_B = (9, 1)\). Julgue como verdadeiros ou falsos os itens abaixo:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0 | O conjunto de alocações factíveis na Caixa de Edgeworth é \([0,10] \times [0,10]\). |
    | 1 | A curva de contrato é dada por \(Y = 10X/(20-X)\), com \(0 \leq X \leq 10\). |
    | 2 | O Equilíbrio de Walras é o par alocação-preço dado por \(\{(X_A,Y_A),(X_B,Y_B);(p,q)\} = \{(5,5),(5,5);(p,q)\}\), com \(p/q = 1\). |
    | 3 | O Equilíbrio de Walras é Pareto-eficiente. |
    | 4 | O valor do vetor de excesso de demanda é positivo. |

    ??? success "Gabarito"
        **Respostas: 10110**

        **Justificativa por item:**

        - **Item 0 — V:** Os totais da economia são \(\bar{X} = 1 + 9 = 10\) e \(\bar{Y} = 9 + 1 = 10\). A Caixa de Edgeworth tem dimensões \(10 \times 10\), e cada alocação factível é um ponto em \([0,10]^2\).
        - **Item 1 — F:** Com utilidade linear para A, \(TMS_A = 1\) em todos os pontos. Para B (Cobb-Douglas simétrica), \(TMS_B = Y_B/X_B\). A eficiência de Pareto requer \(TMS_A = TMS_B\), i.e., \(Y_B/X_B = 1 \implies Y_B = X_B\). Nas coordenadas de A: \(10 - Y = 10 - X \implies Y = X\). A curva de contrato é a diagonal \(Y = X\), e não a função \(Y = 10X/(20-X)\).
        - **Item 2 — V:** Com \(p/q = 1\): \(I_A = 1 + 9 = 10\), A é indiferente entre X e Y (utilidade linear), podendo escolher \((5, 5)\). Para B: \(I_B = 9 + 1 = 10\), \(X_B = 10/2 = 5\), \(Y_B = 10/2 = 5\). Mercados se equilibram: \(5 + 5 = 10\). É um equilíbrio walrasiano.
        - **Item 3 — V:** Pelo Primeiro Teorema do Bem-Estar, todo equilíbrio walrasiano é Pareto-eficiente. Verificação direta: \(TMS_B = 5/5 = 1 = TMS_A\).
        - **Item 4 — F:** No equilíbrio, o excesso de demanda é zero em todos os mercados (\(Z^X = Z^Y = 0\)). Pela Lei de Walras, \(p \cdot Z^X + q \cdot Z^Y = 0\) para quaisquer preços — e no equilíbrio ambos os termos são zero.

---

??? question "ANPEC 2018 — Questão 13"
    Em uma economia, o agente A possui as dez unidades do bem 1 e o agente B possui as dez unidades do bem 2. As funções utilidades de A e B são descritas por \(U_A = x_1^{1/2} \cdot x_2^{1/2}\) e \(U_B = x_1 \cdot x_2\), respectivamente. Em uma economia de trocas sob equilíbrio geral competitivo, tome o segundo bem como numerário, isto é, \(p_2 = \$1\), e denomine \(p\) o preço do outro bem. Avalie:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0 | Em equilíbrio, \(p = \$2\). |
    | 1 | A função de bem-estar utilitarista (benthamita) com pesos unitários para os dois agentes assume o valor \(W = 30\). |
    | 2 | A alocação final não é justa, pois embora eficiente, não é equitativa. |
    | 3 | É possível atingir via mercados competitivos a alocação eficiente \((x_1^A, x_2^A) = (2{,}5;\; 2{,}5)\), \((x_1^B, x_2^B) = (7{,}5;\; 7{,}5)\) se realocarmos metade da dotação inicial de A, transferindo-a para B. |
    | 4 | Utilizando a mesma função de bem-estar do item 1, a alocação final descrita no item 3 é socialmente preferível àquela descrita inicialmente. |

    ??? success "Gabarito"
        **Respostas: 01011**

        **Justificativa por item:**

        - **Item 0 — F:** Demandas de A: \(x_1^A = 10p/(2p) = 5\), \(x_2^A = 10p/2 = 5p\). Demandas de B: \(x_1^B = 10/(2p) = 5/p\), \(x_2^B = 10/2 = 5\). Equilíbrio no bem 1: \(5 + 5/p = 10 \implies p = 1\), e não \(p = 2\).
        - **Item 1 — V:** Com \(p = 1\): \(\mathbf{x}_A = (5, 5)\), \(\mathbf{x}_B = (5, 5)\). \(U_A = \sqrt{5}\cdot\sqrt{5} = 5\), \(U_B = 5 \cdot 5 = 25\). \(W = 5 + 25 = 30\).
        - **Item 2 — F:** A alocação \((5,5)\) para ambos os agentes é uma **divisão igualitária** dos bens. Ambos recebem cestas idênticas, portanto não há inveja: A avalia a cesta de B em \(U_A(5,5) = 5\), igual à própria utilidade, e B avalia a cesta de A em \(U_B(5,5) = 25\), igual à própria. A alocação é justa (equitativa e *envy-free*).
        - **Item 3 — V:** Transferindo metade da dotação de A para B: \(\boldsymbol{\omega}_A' = (5, 0)\), \(\boldsymbol{\omega}_B' = (5, 10)\). No equilíbrio com \(p = 1\): \(x_1^A = 5/2 = 2{,}5\), \(x_2^A = 5/2 = 2{,}5\); \(x_1^B = 15/2 = 7{,}5\), \(x_2^B = 15/2 = 7{,}5\). A alocação desejada é alcançada como equilíbrio competitivo — ilustração direta do Segundo Teorema do Bem-Estar.
        - **Item 4 — V:** Nova função de bem-estar: \(W' = U_A(2{,}5;\, 2{,}5) + U_B(7{,}5;\, 7{,}5) = 2{,}5 + 56{,}25 = 58{,}75 > 30 = W\). A nova alocação é socialmente preferível sob o critério utilitarista.

---

??? question "ANPEC 2015 — Questão 11"
    Com relação à Teoria do Equilíbrio Geral, indique as afirmativas corretas:

    **Itens:** (marque 0 para Falso, 1 para Verdadeiro)

    | Item | Afirmação |
    |------|-----------|
    | 0 | A Lei de Walras afirma que o valor da demanda agregada é zero para todas as escolhas de preços possíveis, e não apenas para os preços de equilíbrio. |
    | 1 | O pressuposto de que a função de demanda excedente agregada seja uma função contínua não é indispensável à demonstração da existência do equilíbrio nos modelos de equilíbrio geral. |
    | 2 | Mesmo que as demandas individuais sejam descontínuas, desde que os consumidores sejam pequenos, a função de demanda agregada será contínua. |
    | 3 | Pelo primeiro teorema do bem-estar, todos os equilíbrios em mercados competitivos serão Pareto-eficientes. |
    | 4 | Se as preferências não forem convexas, algumas alocações Pareto-eficientes não serão alcançadas por mercados competitivos. |

    ??? success "Gabarito"
        **Respostas: 00111**

        **Justificativa por item:**

        - **Item 0 — F:** A Lei de Walras afirma que o valor do **excesso de demanda** (não da "demanda agregada") é zero para todos os preços: \(\sum_k p_k Z^k(\mathbf{p}) \equiv 0\). O valor da demanda agregada \(\mathbf{p} \cdot \mathbf{x}(\mathbf{p})\) é igual ao valor das dotações \(\mathbf{p} \cdot \boldsymbol{\omega}\), que geralmente não é zero. A imprecisão no enunciado torna a afirmação falsa.
        - **Item 1 — F:** A continuidade da função de excesso de demanda agregada é essencial para a aplicação do Teorema do Ponto Fixo de Brouwer (Seção 14.8). Sem continuidade (ou pelo menos semi-continuidade superior no caso de correspondências, via Teorema de Kakutani), a existência de equilíbrio não pode ser demonstrada.
        - **Item 2 — V:** Resultado clássico de agregação (Aumann, 1966): com um grande número de consumidores "pequenos" (cada um com participação negligível no mercado), descontinuidades individuais nas demandas se "suavizam" na agregação, e a demanda agregada torna-se contínua — mesmo que cada demanda individual seja descontínua.
        - **Item 3 — V:** Este é o enunciado direto do Primeiro Teorema do Bem-Estar: sob tomada de preço, mercados completos e não saciedade local, todo equilíbrio competitivo é Pareto-eficiente.
        - **Item 4 — V:** O Segundo Teorema do Bem-Estar requer convexidade das preferências. Sem essa hipótese, pode não existir um hiperplano de suporte que separe os conjuntos preferidos, e certas alocações Pareto-eficientes não podem ser descentralizadas como equilíbrios competitivos.

---

## 🔬 Pesquisa em Ação

??? abstract "Dix-Carneiro, R. (2014). [Trade Liberalization and Labor Market Dynamics](https://doi.org/10.3982/ECTA10457). *Econometrica*, 82(3), 825–885."
    **Pergunta central:** Quando um país como o Brasil abre sua economia ao comércio internacional, trabalhadores precisam migrar de setores que perdem proteção tarifária para setores com vantagem comparativa. Quanto custa essa transição? A teoria de equilíbrio geral prevê realocação eficiente dos fatores, mas na prática a mobilidade é imperfeita. Dix-Carneiro investiga: qual é o custo real da transição setorial de trabalhadores e como ele afeta os ganhos líquidos da liberalização?

    **Método:** O artigo estima um modelo estrutural dinâmico de equilíbrio geral do mercado de trabalho brasileiro, com múltiplos setores, gerações sobrepostas, trabalhadores heterogêneos, acumulação de experiência setorial e custos de mudança de setor. O modelo é estimado com microdados brasileiros do mercado de trabalho formal, permitindo simular contrafactuais de política comercial.

    **Resultado principal:** Os custos medianos de mobilidade setorial variam de **1,4 a 2,7 vezes o salário anual** — são substanciais. As transições após liberalização comercial levam vários anos para se completar. Os ganhos agregados de bem-estar são significativamente reduzidos pelo processo de ajuste lento e custoso. Crucialmente, os efeitos de bem-estar dependem fortemente do setor inicial de emprego do trabalhador — trabalhadores em setores protegidos sofrem perdas persistentes.

    **Por que isso importa:** Para o Brasil, que passou por intensa liberalização nos anos 1990, o artigo quantifica os custos humanos da transição — algo que os modelos CGE estáticos da Seção 14.10 não capturam. Os resultados informam o debate sobre políticas de transição justa (*safety nets*) que acompanhem a abertura comercial.

    **Relevância para o capítulo:** O modelo de Dix-Carneiro é uma implementação sofisticada do equilíbrio geral walrasiano com produção (Seção 14.9): firmas maximizam lucro, trabalhadores maximizam utilidade intertemporal, e todos os mercados se equilibram. A diferença em relação ao modelo estático é a dimensão temporal — custos de ajuste impedem que a economia salte instantaneamente de um equilíbrio para outro. O artigo ilustra, com dados brasileiros, que os Teoremas do Bem-Estar descrevem propriedades do equilíbrio de longo prazo, mas a transição entre equilíbrios pode ser dolorosa.

??? abstract "Caliendo, L.; Parro, F. (2015). [Estimates of the Trade and Welfare Effects of NAFTA](https://doi.org/10.1093/restud/rdu035). *Review of Economic Studies*, 82(1), 1–44."
    **Pergunta central:** Quanto os países ganham (ou perdem) com acordos de livre comércio? A teoria de equilíbrio geral prevê ganhos de troca, mas quantificá-los requer um modelo que incorpore múltiplos setores, insumos intermediários e cadeias globais de valor. Caliendo e Parro desenvolvem tal modelo e o aplicam ao NAFTA para estimar os efeitos sobre comércio e bem-estar.

    **Método:** Os autores constroem um modelo ricardiano multisetorial de equilíbrio geral com comércio de bens intermediários, estimando elasticidades comerciais setoriais consistentes com modelos gravitacionais. O modelo é calibrado com dados de produção, comércio e tarifas dos EUA, México e Canadá.

    **Resultado principal:** O bem-estar do México aumentou **1,31%**, o dos EUA **0,08%** e o do Canadá caiu **0,06%** como resultado do NAFTA. Os efeitos são heterogêneos entre setores: os encadeamentos produtivos via insumos intermediários amplificam os ganhos comerciais em até 40% em relação a um modelo sem bens intermediários. A desagregação setorial é crucial — modelos com apenas um setor subestimam substancialmente os efeitos.

    **Por que isso importa:** O artigo é uma referência metodológica para avaliar acordos como o Mercosul-UE. A abordagem pode ser aplicada ao caso brasileiro para estimar os efeitos setoriais e regionais da abertura comercial, complementando os modelos CGE tradicionais (Seção 14.10) com maior rigor na estimação das elasticidades comerciais.

    **Relevância para o capítulo:** O modelo de Caliendo e Parro é uma implementação moderna do equilíbrio geral walrasiano com produção e comércio internacional: preços relativos se ajustam para equilibrar todos os mercados simultaneamente, e os ganhos de troca refletem a passagem de uma alocação ineficiente (com tarifas) para uma mais eficiente (sem tarifas). O artigo quantifica exatamente o que os Teoremas do Bem-Estar preveem qualitativamente: a remoção de distorções (tarifas) move a economia em direção à eficiência de Pareto.

## Referências do Capítulo

- Arrow, Kenneth J., e Gerard Debreu. 1954. ["Existence of an Equilibrium for a Competitive Economy."](https://doi.org/10.2307/1907353) *Econometrica* 22 (3): 265–290.
- Caliendo, Lorenzo, e Fernando Parro. 2015. ["Estimates of the Trade and Welfare Effects of NAFTA."](https://doi.org/10.1093/restud/rdv007) *Review of Economic Studies* 82 (1): 1–44.
- Debreu, Gerard. 1959. [*Theory of Value: An Axiomatic Analysis of Economic Equilibrium*](https://books.google.com/books?id=QkX10epC46cC). New York: Wiley.
- Dix-Carneiro, Rafael. 2014. ["Trade Liberalization and Labor Market Dynamics."](https://doi.org/10.3982/ECTA10457) *Econometrica* 82 (3): 825–885.
- Edgeworth, Francis Y. 1881. [*Mathematical Psychics*](https://books.google.com.br/books?id=CElYAAAAcAAJ). London: C. Kegan Paul.
- IFI/Senado Federal. 2024. ["Reforma Tributária: Contexto, Mudanças e Impactos."](https://www12.senado.leg.br/ifi/publicacoes-1/estudos-especiais/2024/marco/estudo-especial-no-19-reforma-tributaria-contexto-mudancas-e-impactos-mar-2024) Estudo Especial nº 19.
- [IPEA](https://www.ipea.gov.br). Diversos anos. *Modelos de Equilíbrio Geral Computável Aplicados ao Brasil*. Brasília: IPEA.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press.
- Varian, Hal R. 1992. [*Microeconomic Analysis*](https://books.google.com/books/about/Microeconomic_Analysis.html?id=m20iQAAACAAJ). 3ª ed. New York: W. W. Norton.
- Walras, Léon. 1874. [*Éléments d'économie politique pure*](https://books.google.com.br/books?id=crUEAAAAMAAJ). Lausanne: L. Corbaz.
