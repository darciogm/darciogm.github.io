# Capítulo 6 — Substitutos, Complementos e Relações Complicadas

> *"Nenhum bem é uma ilha: a demanda por cada produto depende dos preços de todos os outros."*

No capítulo anterior, analisamos como variações de preço e renda afetam a demanda por um bem individual, decompondo os efeitos substituição e renda. Agora, voltamos o olhar para as **relações entre bens**: como a variação no preço de um bem afeta a demanda por outro? Quando bens são substitutos? Quando são complementos? E como agregamos as demandas individuais para obter a demanda de mercado?

A relevância prática dessas perguntas é imediata. No Brasil, a decisão entre abastecer com gasolina ou etanol depende dos preços relativos em cada bomba; o consumo de carne bovina recua quando o frango barateia; a tributação seletiva sobre bebidas açucaradas redesenha a demanda por água mineral e sucos. Compreender essas relações cruzadas é essencial tanto para a política pública quanto para a estratégia empresarial.

Este capítulo encerra a Parte II do livro, fornecendo as ferramentas necessárias para a análise completa do lado da demanda.

---

## 6.1 O Caso com Dois Bens: Efeitos Cruzados de Preço

Comecemos pelo caso mais simples: uma economia com apenas dois bens. Mesmo nesse cenário estilizado, a análise dos efeitos cruzados de preço revela resultados surpreendentes — e nos prepara para as sutilezas que emergem quando há muitos bens.

Considere um consumidor que maximiza \(U(x_1, x_2)\) sujeito à restrição orçamentária \(p_1 x_1 + p_2 x_2 = I\). As funções de demanda marshalliana \(x_1^*(p_1, p_2, I)\) e \(x_2^*(p_1, p_2, I)\) dependem de ambos os preços. O **efeito cruzado de preço** é a derivada parcial:

\[
\frac{\partial x_1}{\partial p_2}
\]

Pela Equação de Slutsky (Capítulo 5), essa derivada pode ser decomposta:

\[
\frac{\partial x_1}{\partial p_2} = \underbrace{\frac{\partial h_1}{\partial p_2}}_{\text{efeito substituição cruzado}} - \underbrace{x_2 \frac{\partial x_1}{\partial I}}_{\text{efeito renda cruzado}}
\]

No caso de dois bens, a restrição orçamentária impõe relações fortes. Se o preço de \(x_2\) aumenta, o efeito substituição necessariamente empurra o consumidor na direção de \(x_1\) — no caso de dois bens, o efeito substituição cruzado é sempre não negativo:

\[
\frac{\partial h_1}{\partial p_2} \geq 0 \quad \text{(com dois bens)}
\]

Isso significa que, no sentido hicksiano, **dois bens são sempre substitutos líquidos** quando há apenas dois bens no modelo. A complementaridade só emerge com três ou mais bens.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Com apenas dois bens, eles são sempre substitutos líquidos — a complementaridade só emerge quando existe uma terceira opção.

    **Pense assim:** Se no cardápio do almoço só há arroz e macarrão, e o arroz fica mais caro (com compensação de renda), você necessariamente come mais macarrão — não tem para onde fugir. Só quando existe uma terceira opção (salada) é que dois bens podem ser complementares líquidos.

    **Por que isso importa:** Modelos com apenas dois bens podem ser enganosos para análise de política tributária: a complementaridade, que é fundamental para a regra de Ramsey de tributação ótima, simplesmente não aparece.

---

## 6.2 Substitutos e Complementos Brutos (Marshallianos)

O resultado da seção anterior — de que, com dois bens, a substituição líquida é o único fenômeno possível — é teoricamente importante, mas limita a riqueza da análise. Na prática, observamos relações de substituição e complementaridade o tempo todo: quando o preço do café sobe, a demanda por açúcar cai; quando o preço da gasolina sobe, a demanda por etanol cresce. Para capturar essas relações nos dados, precisamos de definições formais. A classificação mais intuitiva — e a que se observa diretamente nos dados — utiliza as derivadas cruzadas da demanda marshalliana.

!!! definition "Substitutos e complementos brutos"
    Dois bens \(i\) e \(j\) são:

    - **Substitutos brutos** se \(\frac{\partial x_i}{\partial p_j} > 0\): quando o preço de \(j\) sobe, a demanda por \(i\) aumenta.
    - **Complementos brutos** se \(\frac{\partial x_i}{\partial p_j} < 0\): quando o preço de \(j\) sobe, a demanda por \(i\) cai.
    - **Independentes** se \(\frac{\partial x_i}{\partial p_j} = 0\).

!!! note "Assimetria da classificação bruta"
    A classificação marshalliana **não é necessariamente simétrica**: pode ocorrer que \(\frac{\partial x_1}{\partial p_2} > 0\) enquanto \(\frac{\partial x_2}{\partial p_1} < 0\). Isso decorre da interferência do efeito renda, que contamina a relação cruzada de forma assimétrica. Essa é uma das razões pelas quais a classificação hicksiana é teoricamente preferida.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** Substitutos são bens que competem pela sua escolha; complementos são bens que andam juntos — e a classificação muda conforme você isole ou não o efeito renda.

    **Pense assim:** No posto de gasolina, gasolina e etanol são substitutos — se um encarece, você abastece com o outro. Já arroz e feijão são complementos: ninguém pede "só arroz" no prato feito. A classificação "bruta" (marshalliana) mistura o efeito renda; a "líquida" (hicksiana) isola a substituição pura. Dois bens podem parecer complementos nos dados, mas ser substitutos puros quando se desconta o empobrecimento.

    **Por que isso importa:** Saber se dois bens são substitutos ou complementos é essencial para prever os efeitos de impostos seletivos — por exemplo, tributar refrigerante aumenta a demanda por água mineral (substitutos), mas não por copos descartáveis (complementos).

**Exemplos para o contexto brasileiro:**

- **Carne bovina e frango**: substitutos brutos — quando a carne bovina encarece, a demanda por frango tende a subir. Dados do [CEPEA/ESALQ](https://www.cepea.esalq.usp.br) mostram que, entre 2019 e 2021, a arroba do boi gordo subiu cerca de 80% em termos reais, período em que o consumo per capita de frango cresceu significativamente.
- **Automóvel e gasolina**: complementos brutos — se o preço do automóvel sobe, as vendas caem e, consequentemente, a demanda por gasolina também.
- **Arroz e feijão**: complementos brutos — o par arroz-feijão forma a base da alimentação brasileira e o consumo tende a se mover na mesma direção. Segundo a POF/[IBGE](https://www.ibge.gov.br) 2017-2018, o arroz e feijão estão presentes em mais de 70% dos domicílios brasileiros.

---

## 6.3 Substitutos e Complementos Líquidos (Hicksianos)

A classificação marshalliana, embora direta e empiricamente acessível, apresenta um problema fundamental: ela mistura o efeito substituição (a verdadeira relação de substituibilidade ou complementaridade entre bens) com o efeito renda (o empobrecimento ou enriquecimento causado pela variação de preço). Essa contaminação pode distorcer a classificação, fazendo bens que são genuinamente substitutos parecerem complementos nos dados brutos. Para obter uma classificação teoricamente mais limpa, utilizamos as derivadas cruzadas da **demanda hicksiana** (compensada), que capturam apenas o efeito substituição, isolando o efeito renda.

!!! definition "Substitutos e complementos líquidos (hicksianos)"
    Dois bens \(i\) e \(j\) são:

    - **Substitutos líquidos** (ou substitutos hicksianos) se \(\frac{\partial h_i}{\partial p_j} > 0\).
    - **Complementos líquidos** (ou complementos hicksianos) se \(\frac{\partial h_i}{\partial p_j} < 0\).

Uma vantagem crucial da classificação hicksiana é a **simetria**: pela propriedade da matriz de Slutsky,

\[
\frac{\partial h_i}{\partial p_j} = \frac{\partial h_j}{\partial p_i}
\]

Logo, se o bem \(i\) é substituto líquido de \(j\), então \(j\) é necessariamente substituto líquido de \(i\). Não há ambiguidade.

!!! tip "Quando a classificação bruta e líquida divergem"
    A classificação bruta e líquida podem divergir quando o efeito renda é grande o suficiente para dominar o efeito substituição. Por exemplo, dois bens podem ser substitutos líquidos mas complementos brutos se o aumento no preço de um deles causar uma queda de renda real tão grande que reduza a demanda de ambos.

### 6.3.1 Relação entre as classificações

Mas qual é exatamente a relação entre as duas classificações? Quando elas concordam e quando divergem? A Equação de Slutsky nos fornece a resposta precisa. Da Equação de Slutsky:

\[
\frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial I}
\]

Se \(x_i\) é um bem normal (\(\frac{\partial x_i}{\partial I} > 0\)), o efeito renda cruzado é negativo (o aumento de \(p_j\) reduz o poder de compra, diminuindo a demanda por \(x_i\)). Assim, o efeito bruto é menor que o efeito líquido:

\[
\frac{\partial x_i}{\partial p_j} < \frac{\partial h_i}{\partial p_j}
\]

Dois bens podem ser substitutos líquidos mas complementos brutos se o efeito renda negativo exceder o efeito substituição positivo.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** A classificação hicksiana (líquida) é a "verdadeira" relação de substituição entre bens, porque remove a contaminação do efeito renda.

    **Pense assim:** Imagine que o preço do plano de saúde sobe. Nos dados brutos, você pode observar que as famílias também reduzem o consumo de educação privada — parecendo complementos. Mas, na verdade, ambos caíram porque a família ficou mais pobre (efeito renda). Isolando esse empobrecimento (análise hicksiana), descobre-se que saúde e educação privada na verdade competem pelo mesmo orçamento — são substitutos líquidos.

    **Por que isso importa:** Políticas que subsidiam um bem (como isenção de IR para planos de saúde) podem afetar a demanda por outros bens de formas que só a decomposição de Slutsky revela corretamente.

---

### Gráfico interativo: Substitutos e Complementos

O gráfico abaixo permite explorar os efeitos cruzados de preço com a função de utilidade CES. Ajuste o preço de \(p_2\) e o parâmetro \(\rho\) para visualizar como a demanda por \(x_1\) responde a variações no preço do outro bem, alternando entre substitutos e complementos.

<iframe src="../graficos/cap06/substitutos-complementos.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;" markdown>
**Figura 6.1** — Substitutos e Complementos: Efeitos Cruzados de Preço. Ajuste o preço de \(p_2\) e o parâmetro \(\rho\) para visualizar como a demanda por \(x_1\) responde a variações no preço do outro bem.
</p>

---

## 6.4 Substituibilidade com Muitos Bens

Até aqui, trabalhamos predominantemente com dois bens — um cenário que, embora didático, impõe restrições fortes sobre as relações de substituição e complementaridade. No mundo real, os consumidores escolhem entre centenas de bens, e as relações cruzadas formam uma teia complexa. O que muda quando passamos de dois para muitos bens? A resposta envolve a **matriz de substituição de Slutsky**, uma ferramenta que organiza todos os efeitos cruzados em uma única estrutura algébrica.

Com \(n > 2\) bens, a análise se torna mais rica e complexa. A **matriz de substituição de Slutsky** \(\mathbf{S}\), com elementos:

\[
s_{ij} = \frac{\partial h_i}{\partial p_j}, \quad i, j = 1, \ldots, n
\]

é simétrica (\(s_{ij} = s_{ji}\)) e negativa semidefinida. Os elementos diagonais são necessariamente não positivos:

\[
s_{ii} = \frac{\partial h_i}{\partial p_i} \leq 0
\]

mas os elementos fora da diagonal podem ter qualquer sinal. No entanto, nem todos podem ser negativos:

!!! abstract "Teorema: Predominância da substituibilidade líquida"
    Para cada bem \(i\), a soma ponderada dos efeitos substituição cruzados (com pesos iguais aos preços) é não negativa. Mais precisamente, pela homogeneidade de grau zero da demanda hicksiana:

    \[
    \sum_{j=1}^n p_j \frac{\partial h_i}{\partial p_j} = 0
    \]

    Como \(\frac{\partial h_i}{\partial p_i} \leq 0\), pelo menos alguns dos termos cruzados devem ser positivos. Logo, **todo bem deve ter pelo menos um substituto líquido**.

Essa propriedade implica que, embora a complementaridade líquida exista, a substituibilidade é o fenômeno "dominante" no sentido de que não pode haver um bem que seja complemento líquido de todos os outros. Intuitivamente, se o preço de um bem sobe (mantendo a utilidade constante), o consumidor precisa redistribuir seu consumo em direção a *algum* outro bem — a substituição é, em certo sentido, inevitável.

---

## 6.5 Bens Compostos (Teorema do Bem Composto de Hicks)

A seção anterior revelou que, com muitos bens, a matriz de Slutsky contém \(n^2\) elementos — e estimá-los todos empiricamente exigiria uma quantidade enorme de dados. Como proceder na prática? Uma estratégia poderosa é agregar bens em categorias, reduzindo a dimensionalidade do problema. Mas essa agregação é legítima do ponto de vista teórico? Sob que condições podemos tratar um grupo de bens como se fosse um único bem? Em modelos aplicados, frequentemente trabalhamos com centenas ou milhares de bens. Para tornar a análise tratável, agrupamos bens em categorias. O **Teorema do Bem Composto de Hicks** fornece a justificativa teórica para essa prática.

!!! abstract "Teorema do Bem Composto de Hicks"
    Se um grupo de bens tem seus preços variando na mesma proporção, então esse grupo pode ser tratado como um único **bem composto**, cujo "preço" é um índice dos preços do grupo e cuja "quantidade" é o gasto real com o grupo.

    Formalmente: se \(p_j = \alpha \bar{p}_j\) para todo \(j \in G\) (onde \(\bar{p}_j\) é o preço-base e \(\alpha\) varia), então o grupo \(G\) pode ser representado por um bem composto \(y = \sum_{j \in G} \bar{p}_j x_j\), com preço \(\alpha\).

!!! proof "Demonstração: Teorema do Bem Composto de Hicks"
    **Passo 1: Configuração.**

    Considere \(n\) bens, divididos em dois grupos: o bem 1 (ou grupo de interesse) e o grupo \(G = \{2, 3, \ldots, n\}\). Suponha que os preços dos bens em \(G\) variem proporcionalmente:

    \[
    p_j = \alpha \bar{p}_j, \quad j \in G
    \]

    onde \(\bar{p}_j\) são preços-base fixos e \(\alpha > 0\) é um escalar.

    **Passo 2: Restrição orçamentária.**

    A restrição orçamentária do consumidor é:

    \[
    p_1 x_1 + \sum_{j \in G} p_j x_j = I
    \]

    Substituindo \(p_j = \alpha \bar{p}_j\):

    \[
    p_1 x_1 + \alpha \sum_{j \in G} \bar{p}_j x_j = I
    \]

    **Passo 3: Definição do bem composto.**

    Definamos o bem composto \(y \equiv \sum_{j \in G} \bar{p}_j x_j\), que representa o gasto real (a preços-base) com os bens do grupo \(G\). A restrição orçamentária torna-se:

    \[
    p_1 x_1 + \alpha \cdot y = I
    \]

    que tem exatamente a forma de uma restrição com dois bens: \(x_1\) ao preço \(p_1\) e \(y\) ao preço \(\alpha\).

    **Passo 4: Otimização em dois estágios.**

    O consumidor pode otimizar em dois estágios:

    1. *Estágio interno*: para um dado nível de gasto com o grupo \(G\), \(M_G = \alpha y\), o consumidor aloca otimamente esse gasto entre os bens do grupo, dado que seus preços relativos \(\bar{p}_j / \bar{p}_k\) são fixos (pois todos variam proporcionalmente). Isso gera uma função de utilidade indireta para o grupo, \(\tilde{U}(y)\).

    2. *Estágio externo*: o consumidor escolhe entre \(x_1\) e \(y\) maximizando uma utilidade que depende apenas de \(x_1\) e \(y\), sujeito a \(p_1 x_1 + \alpha y = I\).

    **Passo 5: Conclusão.**

    Como a alocação interna ao grupo \(G\) depende apenas dos preços relativos dentro do grupo (que são fixos), ela pode ser tratada separadamente. No estágio externo, o grupo inteiro se comporta como um único bem com quantidade \(y\) e preço \(\alpha\). Toda a teoria de dois bens — incluindo efeitos substituição e renda — aplica-se entre \(x_1\) e o bem composto \(y\). \(\blacksquare\)

!!! tip "Aplicação prática"
    O Teorema do Bem Composto justifica o uso frequente, em exercícios e modelos aplicados, de um "bem 1" versus "todos os outros bens" (representados pelo gasto restante). Para que a agregação seja válida, é necessário que os preços relativos dentro do grupo permaneçam aproximadamente constantes. Quando um choque afeta apenas um subgrupo (por exemplo, uma seca que encarece frutas mas não cereais), o teorema perde validade para o grupo "alimentos" como um todo.

!!! example "Box Brasil: Preços administrados e o Bem Composto no IPCA"
    O IPCA, calculado pelo IBGE, distingue entre **preços livres** (cerca de 75% do índice) e **preços administrados** (cerca de 25%), que incluem combustíveis, energia elétrica, planos de saúde e tarifas de transporte público. Os preços administrados são reajustados por fórmulas contratuais vinculadas a índices como o IGP-M ou o IPCA do período anterior.

    Essa distinção ilustra quando o Teorema do Bem Composto **funciona** e quando **falha**:

    - **Funciona (aproximadamente):** dentro do grupo "alimentos in natura", os preços tendem a flutuar em resposta a choques climáticos comuns (seca, geada), mantendo os preços relativos razoavelmente estáveis. Podemos tratá-los como um bem composto "alimentos".
    - **Falha:** quando a Petrobras reajusta o preço da gasolina (preço administrado) enquanto os preços de alimentos e serviços seguem trajetórias distintas, os preços relativos entre os grupos mudam substancialmente. Nesse caso, não se pode agregar "gasolina + alimentos" em um único bem composto.

    Segundo dados do [BCB](https://www.bcb.gov.br), entre 2000 e 2023 os preços administrados acumularam alta de cerca de 530%, enquanto os preços livres subiram cerca de 350% — uma divergência persistente que viola a hipótese de proporcionalidade e exige análise desagregada.

---

### Gráfico interativo: Bem Composto de Hicks

O gráfico abaixo ilustra o Teorema do Bem Composto. O eixo horizontal mede o bem 1 (\(x_1\)) e o eixo vertical mede o bem composto (\(y\)), que agrega os demais bens cujos preços variam proporcionalmente. Ajuste \(\alpha\) para simular variações proporcionais nos preços do grupo composto.

<iframe src="../graficos/cap06/bem-composto.html" width="100%" style="border:none;border-radius:8px;"></iframe>

<p style="text-align:center; font-size:0.85rem; color:#666; margin-top:0.3rem;" markdown>
**Figura 6.2** — Teorema do Bem Composto de Hicks. O eixo horizontal mede o bem 1 (\(x_1\)) e o eixo vertical mede o bem composto (\(y\)). Ajuste \(\alpha\) para simular variações proporcionais nos preços do grupo composto.
</p>

---

## 6.6 Produção Doméstica, Atributos dos Bens e Preços Implícitos

Até este ponto, tratamos os bens como objetos homogêneos de desejo: o consumidor deseja "arroz", "transporte" ou "moradia". Mas, na realidade, por que alguém deseja um apartamento? Pela metragem? Pela localização? Pela vista? A resposta, naturalmente, é "por tudo isso junto" — o que sugere que talvez os bens não sejam a unidade fundamental de análise. Dois modelos influentes exploram essa ideia, reformulando a teoria do consumidor de maneiras complementares.

### 6.6.1 O modelo de Lancaster

A teoria tradicional assume que o consumidor obtém utilidade diretamente dos bens. Kelvin **Lancaster** (1966) propôs uma reformulação provocativa: os bens são desejados não por si mesmos, mas pelos **atributos** (ou **características**) que contêm. Um automóvel não é consumido como "automóvel", mas como um conjunto de atributos — potência, conforto, eficiência, status — que o veículo incorpora.

!!! definition "Modelo de Lancaster"
    Cada bem \(j\) contém quantidades fixas de \(m\) atributos, representadas pela matriz de tecnologia de consumo \(\mathbf{B} = [b_{kj}]\), onde \(b_{kj}\) é a quantidade do atributo \(k\) contida em uma unidade do bem \(j\). A utilidade depende dos atributos:

    \[
    U = U(z_1, z_2, \ldots, z_m)
    \]

    onde cada atributo é "produzido" pelo consumo dos bens:

    \[
    z_k = \sum_{j=1}^n b_{kj} x_j, \quad k = 1, \ldots, m
    \]

    O consumidor maximiza \(U(\mathbf{z})\) sujeito a \(\mathbf{z} = \mathbf{B} \mathbf{x}\), \(\mathbf{p} \cdot \mathbf{x} \leq I\) e \(\mathbf{x} \geq 0\).

Esse modelo gera **preços implícitos** (ou **preços hedônicos**) para os atributos. Se o número de atributos for menor que o de bens (\(m < n\)), o consumidor pode calcular o "custo" de cada unidade de atributo combinando bens de modo eficiente. Em certo sentido, Lancaster transforma o problema do consumidor em um problema de programação linear: encontrar a combinação de bens que fornece os atributos desejados ao menor custo.

!!! info "🏅 Prêmio Nobel — Daniel McFadden (2000)"

    **Daniel Little McFadden** (1937–presente) é um economista americano. Obteve o PhD na Universidade de Minnesota e foi professor em Yale, MIT e UC Berkeley. Dividiu o Nobel com James Heckman.

    **Por que ganhou o Nobel:**
    Premiado por desenvolver a teoria e os métodos para análise de escolha discreta. McFadden formulou o modelo logit condicional, que permite estimar a probabilidade de um indivíduo escolher entre alternativas discretas (modos de transporte, localização residencial, marcas) com base nos atributos de cada alternativa — conectando a teoria microeconômica da utilidade aleatória à estimação econométrica.

    **Conexão com este capítulo:**
    O modelo de Lancaster — em que consumidores valorizam atributos dos bens, não os bens em si — é a base teórica dos modelos de escolha discreta de McFadden. A abordagem de preços hedônicos discutida neste capítulo é uma aplicação direta: decompor o preço de um bem (imóvel, automóvel) em contribuições de seus atributos é exatamente o que os métodos de McFadden operacionalizam econometricamente.

### 6.6.2 Implicações

A reformulação de Lancaster pode parecer uma complicação desnecessária — afinal, por que não trabalhar diretamente com bens? A resposta é que o modelo de Lancaster explica fenômenos que a teoria tradicional não captura com facilidade:

- **Introdução de novos bens**: um novo produto é simplesmente uma nova coluna na matriz \(\mathbf{B}\). Se ele oferece uma combinação de atributos mais eficiente (menor custo por unidade de atributo), substitui bens existentes.
- **Diferenciação de produto**: marcas diferentes do "mesmo" bem oferecem combinações distintas de atributos (sabor, durabilidade, status).
- **Preços hedônicos**: o preço de um imóvel, por exemplo, pode ser decomposto em preços implícitos de localização, metragem, número de quartos e outros atributos.

!!! example "Box Brasil: Preços hedônicos no mercado imobiliário"
    O índice FipeZap, calculado pela Fipe em parceria com o portal Zap Imóveis, acompanha os preços de venda e aluguel de imóveis residenciais em mais de 50 cidades brasileiras. A metodologia utiliza modelos de **preços hedônicos** — uma aplicação direta do modelo de Lancaster — para decompor o preço do imóvel nos preços implícitos de seus atributos: localização (bairro, proximidade do metrô), área útil, número de quartos e vagas de garagem.

    O índice FipeZap de março de 2024 registrava preço médio de venda de R$ 9.082/m² em São Paulo e R$ 11.032/m² no Rio de Janeiro. A diferença não reflete apenas metragem, mas o "preço implícito" de atributos locacionais — bairros como Leblon (RJ) ou Vila Nova Conceição (SP) embutem um prêmio por amenidades urbanas (proximidade de parques, serviços, segurança).

    A CBIC (Câmara Brasileira da Indústria da Construção) utiliza abordagens semelhantes para analisar o custo de construção por componente, separando o preço do insumo (cimento, aço, mão de obra) do atributo que ele confere ao imóvel.

### 6.6.3 Modelo de produção doméstica de Becker

Enquanto Lancaster enfatiza os atributos dos bens, Gary **Becker** (1965) chamou atenção para um recurso escasso que a teoria tradicional ignora: o *tempo*. Becker propôs que as famílias são unidades produtivas que combinam bens de mercado com tempo para gerar **commodities domésticas** que geram utilidade. Por exemplo, uma refeição exige ingredientes (bens) e tempo de preparo (trabalho doméstico). Formalmente:

\[
z_k = f_k(x_k, t_k)
\]

onde \(x_k\) são bens de mercado e \(t_k\) é o tempo dedicado à atividade \(k\). O consumidor maximiza \(U(z_1, \ldots, z_m)\) sujeito a restrições de orçamento monetário e de tempo total.

O preço implícito de cada commodity doméstica incorpora tanto o custo dos bens quanto o custo de oportunidade do tempo, o que explica, por exemplo, por que famílias de renda mais alta tendem a consumir mais refeições fora do domicílio — o custo de oportunidade do tempo de preparo é elevado. No Brasil, esse fenômeno é claramente documentado pela POF: a parcela do orçamento destinada à alimentação fora do domicílio cresce monotonicamente com a renda, passando de cerca de 14% nas classes mais baixas para mais de 40% nas classes mais altas. O modelo de Becker captura essa regularidade de forma natural — não porque os ricos "gostam mais" de comer fora, mas porque seu tempo vale mais.

---

## 6.7 Agregação da Demanda: Do Individual ao Mercado

Até aqui, toda a análise concentrou-se no consumidor individual. Mas os mercados são compostos por milhões de consumidores, cada um com preferências, renda e comportamento próprios. Como passamos da demanda individual para a demanda de mercado? A resposta parece trivial — basta somar —, mas as consequências dessa agregação são profundas e nem sempre intuitivas. A demanda de mercado herda todas as propriedades da demanda individual? Podemos nos comportar como se existisse um "consumidor representativo"?

### 6.7.1 Demanda de mercado

A **demanda de mercado** é obtida pela soma horizontal das demandas individuais. Se há \(H\) consumidores, cada um com demanda \(x_i^h(p_1, \ldots, p_n, I^h)\), a demanda de mercado pelo bem \(i\) é:

\[
X_i(p_1, \ldots, p_n, I^1, \ldots, I^H) = \sum_{h=1}^H x_i^h(p_1, \ldots, p_n, I^h)
\]

### 6.7.2 Condições para uma demanda de mercado "bem-comportada"

A soma horizontal parece inocente, mas esconde uma armadilha. A simples soma de demandas individuais racionais não garante que a demanda agregada se comporte como se fosse gerada por um "consumidor representativo". Sob que condições podemos ignorar a distribuição de renda e trabalhar apenas com a renda total? Para isso, são necessárias condições adicionais:

!!! definition "Condição de Gorman"
    A demanda de mercado pode ser escrita como função de preços e renda **agregada** \(I = \sum_h I^h\) se, e somente se, todas as curvas de Engel individuais forem lineares e paralelas. Isso ocorre quando as preferências são **quase-homotéticas** (preferências homotéticas mais uma translação) ou, de modo mais geral, quando as funções de utilidade indireta têm a forma de Gorman:

    \[
    V^h(\mathbf{p}, I^h) = a(\mathbf{p}) + b(\mathbf{p}) \cdot I^h
    \]

    onde \(a(\mathbf{p})\) e \(b(\mathbf{p})\) são comuns a todos os consumidores.

Quando a condição de Gorman não é satisfeita, a demanda de mercado depende da **distribuição de renda**, não apenas da renda total. Isso tem implicações profundas para a política econômica: transferências de renda (como o Bolsa Família / Auxílio Brasil) alteram a demanda agregada mesmo que a renda total permaneça constante.

!!! example "Box Brasil: Distribuição de renda e demanda agregada"
    O programa Bolsa Família, que em 2024 atendia cerca de 21 milhões de famílias, ilustra por que a condição de Gorman importa na prática. As famílias beneficiárias têm propensões marginais a consumir alimentos, gás de cozinha e vestuário muito superiores às das famílias de renda mais alta. Segundo dados da POF/IBGE 2017-2018, famílias com renda per capita de até 1 salário mínimo destinam cerca de 22% do orçamento a alimentação, enquanto famílias com renda acima de 15 salários mínimos destinam cerca de 7,6%.

    Se as curvas de Engel fossem lineares e paralelas (condição de Gorman), transferir R$ 1 de uma família rica para uma pobre não alteraria a demanda agregada por nenhum bem — apenas a composição individual mudaria. Mas como as curvas de Engel diferem entre classes de renda, a redistribuição aumenta a demanda agregada por alimentos básicos e reduz a demanda por bens de luxo, mesmo com renda total constante. A elasticidade-renda da demanda por alimentos é substancialmente maior nas classes de renda mais baixa.

!!! idea "Intuição Econômica 💡"
    **Em uma frase:** A demanda de mercado não depende só da renda total do país, mas de como essa renda é distribuída entre as famílias.

    **Pense assim:** Se o Brasil tem um PIB de R$ 10 trilhões, a demanda agregada por arroz e feijão seria muito diferente caso essa renda estivesse dividida igualmente entre todos ou concentrada em poucos milionários. Famílias de baixa renda gastam proporcionalmente mais com alimentos básicos. Por isso, programas como o Bolsa Família alteram a composição da demanda agregada mesmo sem mudar a renda total — redistribuir é realocar demanda.

    **Por que isso importa:** Ignorar a distribuição de renda ao prever a demanda de mercado pode levar a erros graves em planejamento de produção agrícola, política tributária e avaliação de programas sociais.

### 6.7.3 Propriedades da demanda de mercado

Quando a condição de Gorman não é satisfeita — e a evidência empírica sugere que raramente o é —, a demanda de mercado perde a elegância da teoria individual. Ainda assim, mesmo sem um consumidor representativo, a demanda de mercado preserva algumas propriedades:

1. **Homogeneidade de grau zero** em preços e rendas (se cada demanda individual for homogênea de grau zero).
2. **Agregação de Engel**: \(\sum_i w_i \varepsilon_{X_i, I} = 1\), onde \(w_i\) é a parcela orçamentária agregada.
3. **A Lei da Demanda vale "em média"**: embora bens de Giffen possam existir individualmente, eles tendem a desaparecer na agregação, pois diferentes consumidores estão em pontos distintos de suas curvas de Engel.

!!! note "Suavização pela agregação"
    A agregação tende a "suavizar" irregularidades individuais. Mesmo que consumidores individuais tenham demandas com descontinuidades (por exemplo, escolhas discretas entre marcas), a demanda de mercado pode ser bem aproximada por uma função contínua e diferenciável, desde que haja heterogeneidade suficiente entre consumidores.

---

## Tabela 6.1 — Classificação de Pares de Bens no Contexto Brasileiro

Para consolidar as classificações discutidas nas seções anteriores, a tabela a seguir reúne pares de bens relevantes para o consumidor brasileiro, distinguindo entre a relação bruta (marshalliana) e a relação líquida (hicksiana). Note como, em alguns casos, as duas classificações divergem — reflexo direto do efeito renda que a Equação de Slutsky separa.

| Par de Bens | Relação Bruta (Marshalliana) | Relação Líquida (Hicksiana) | Observações |
|:---|:---:|:---:|:---|
| Gasolina e Etanol | Substitutos | Substitutos | Frota *flex-fuel*; forte substituição |
| Arroz e Feijão | Complementos | Complementos | Consumo conjunto arraigado na cultura alimentar |
| Carne bovina e Frango | Substitutos | Substitutos | Substituição intensificada em períodos de alta da carne bovina |
| Transporte público e Automóvel | Substitutos | Substitutos | Em grandes centros, congestionamento modera a substituição |
| Café e Açúcar | Complementos | Complementos | Padrão de consumo conjunto, especialmente em classes C e D |
| Cerveja e Refrigerante | Substitutos fracos | Substitutos | Elasticidade cruzada positiva, mas moderada |
| Smartphone e Plano de dados | Complementos | Complementos | Forte complementaridade no consumo digital |
| Carne bovina e Sal | Complementos fracos | Independentes | Complementaridade bruta por efeito renda, não por substituição |
| Educação privada e Plano de saúde | Ambíguo | Substitutos fracos | Competem pelo orçamento; líquidos: substitutos via renda disponível |
| Manteiga e Margarina | Substitutos | Substitutos | Clássico par de substitutos; elasticidade cruzada elevada |

*Fontes: estimativas baseadas em POF/IBGE (2017-2018); estudos setoriais ABRAS; literatura aplicada brasileira.*

!!! note "Divergência entre classificações"
    Note o caso de carne bovina e sal: embora sejam complementos brutos (o sal é usado para temperar a carne), quando isolamos o efeito substituição, a relação é praticamente nula — a "complementaridade" observada nos dados marshallianos decorre em grande parte do efeito renda (famílias mais ricas consomem mais de ambos).

---

Para ilustrar concretamente as relações de substituição e complementaridade discutidas neste capítulo, apresentamos a seguir dois estudos de caso detalhados do mercado brasileiro — o primeiro sobre combustíveis (substituição quase pura) e o segundo sobre bebidas (um mosaico de relações cruzadas).

## Box Brasil: Gasolina versus Etanol — Substitutos na Bomba

!!! example "Gasolina versus etanol: substitutos na bomba"
    O Brasil possui a maior frota *flex-fuel* do mundo: segundo a Anfavea, mais de 90% dos automóveis leves vendidos desde 2010 são bicombustíveis. Isso torna a escolha entre gasolina e etanol um caso quase puro de substituição, em que o consumidor compara preços a cada abastecimento.

    **A regra dos 70%:** como o etanol possui menor conteúdo energético que a gasolina (cerca de 70%), o consumidor racional abastece com etanol quando seu preço é inferior a 70% do preço da gasolina. Dados do levantamento semanal da [ANP](https://www.gov.br/anp) (Agência Nacional do Petróleo) mostram que essa regra é amplamente seguida na prática.

    **Variação regional:** em março de 2024, segundo a ANP, o preço médio do etanol variava de R$ 3,49/litro em São Paulo (estado produtor de cana-de-açúcar) a R$ 5,19/litro no Amapá. Enquanto isso, a gasolina variava de R$ 5,72/litro (SP) a R$ 7,10/litro (AC). A razão etanol/gasolina ficava em torno de 61% em SP (favorável ao etanol) e 73% no AP (desfavorável).

    **Elasticidade-preço cruzada:** estudos aplicados ao mercado brasileiro estimam elasticidades-preço cruzadas (bruta) entre gasolina e etanol na faixa de \(+0{,}50\) a \(+0{,}80\) — valores muito elevados, consistentes com o alto grau de substituição proporcionado pela tecnologia flex. Essa é uma das maiores elasticidades cruzadas observadas em mercados reais.

    **Implicação para política tributária:** a tributação diferenciada entre gasolina e etanol (a gasolina possui alíquota de ICMS e CIDE mais elevadas) afeta diretamente a composição da demanda por combustíveis. A reforma tributária (EC 132/2023) e a regulamentação do imposto seletivo sobre combustíveis fósseis podem alterar substancialmente esses preços relativos.

    *Fontes: ANP — Levantamento de Preços de Combustíveis; Anfavea — Anuário Estatístico; CEPEA/ESALQ — Indicador do Etanol.*

---

## Box Brasil: Substitutos e Complementos no Mercado de Bebidas Brasileiro

!!! example "Substitutos e complementos no mercado de bebidas brasileiro"
    O mercado brasileiro de bebidas é um laboratório natural para o estudo de relações cruzadas de demanda. Com faturamento superior a R$ 120 bilhões anuais e elevada penetração em todas as classes sociais, as categorias de cerveja, refrigerante e água mineral apresentam interações de preço particularmente reveladoras.

    **Estrutura do mercado:**

    | Categoria | Participação no volume (%) | Tributação efetiva (IPI + ICMS) |
    |:---|:---:|:---:|
    | Cerveja | 38% | 40–55% |
    | Refrigerante | 30% | 30–45% |
    | Água mineral | 22% | 15–25% |
    | Sucos e outros | 10% | 20–35% |

    *Fonte: ABRAS / Euromonitor (estimativas para o mercado brasileiro).*

    **Relações de substituição e complementaridade:**

    - **Cerveja e refrigerante**: estudos com dados de scanner de supermercados encontram elasticidade-preço cruzada (bruta) entre \(+0{,}05\) e \(+0{,}15\) — substituição fraca. Após a decomposição de Slutsky, a substituição líquida é ligeiramente mais forte (\(+0{,}12\) a \(+0{,}22\)), indicando que parte do efeito observado é mascarado pelo efeito renda negativo (ambos são bens normais).

    - **Cerveja e petiscos (amendoim, batata frita)**: complementos brutos com elasticidade cruzada entre \(-0{,}20\) e \(-0{,}35\). O consumo conjunto é fortemente influenciado por ocasiões sociais, especialmente em bares.

    - **Refrigerante e água mineral**: a substituição tem crescido ao longo da última década, impulsionada por mudanças em preferências de saúde. Estimativas recentes sugerem elasticidade cruzada bruta entre \(+0{,}15\) e \(+0{,}30\).

    **Impacto de tributação:**

    A proposta de imposto seletivo sobre bebidas açucaradas (*sugar tax*), debatida no contexto da reforma tributária brasileira (EC 132/2023), fornece uma aplicação direta. Usando as elasticidades estimadas:

    - Um imposto que elevasse o preço do refrigerante em 20% reduziria sua demanda em aproximadamente 12% (usando \(\varepsilon_{p} \approx -0{,}60\)).
    - A demanda por água mineral subiria entre 3% e 6% (efeito substituição cruzado).
    - A demanda por cerveja teria variação ambígua, com efeito substituição positivo parcialmente compensado pelo efeito renda negativo.

    O Teorema do Bem Composto de Hicks pode ser aplicado aqui: se os preços de cerveja, suco e água variam proporcionalmente entre si (por exemplo, por inflação geral), podemos tratá-los como um bem composto "outras bebidas" e analisar a demanda de refrigerante contra esse composto. Porém, se a tributação incide seletivamente sobre o refrigerante, o teorema exige que apenas a relação refrigerante versus cada um dos outros bens seja analisada separadamente.

    *Fontes: ABRAS — Associação Brasileira de Supermercados; POF/IBGE; Euromonitor International — relatórios de bebidas não alcoólicas; análises do IFI/Senado sobre a reforma tributária.*

---

## Resumo do Capítulo

- Os efeitos cruzados de preço medem como a variação no preço de um bem afeta a demanda por outro, e podem ser decompostos pela Equação de Slutsky em efeito substituição cruzado e efeito renda cruzado.
- Bens são classificados como substitutos ou complementos brutos (marshallianos, baseados na demanda não-compensada) e líquidos (hicksianos, baseados na demanda compensada); a classificação pode diferir entre as duas definições quando o efeito renda é significativo.
- A matriz de substituição de Slutsky é simétrica e negativa semidefinida; com muitos bens, todo bem deve ter pelo menos um substituto líquido, tornando a substituibilidade o fenômeno dominante.
- O Teorema do Bem Composto de Hicks permite agregar um grupo de bens cujos preços variam proporcionalmente em um único bem composto, viabilizando a análise com dois bens mesmo em economias complexas.
- O modelo de Lancaster propõe que os consumidores valorizam atributos dos bens (não os bens em si), gerando preços hedônicos implícitos; o modelo de Becker incorpora o tempo como insumo na produção doméstica de utilidade.
- A demanda de mercado é a soma horizontal das demandas individuais; a condição de Gorman (curvas de Engel lineares e paralelas) garante a existência de um consumidor representativo.

## Conceitos-Chave

| Conceito | Definição |
|----------|-----------|
| Efeito cruzado de preço | Variação na demanda de um bem causada pela mudança no preço de outro bem. |
| Substitutos brutos (marshallianos) | Bens cuja elasticidade-preço cruzada marshalliana é positiva: o aumento no preço de um eleva a demanda pelo outro. |
| Complementos brutos (marshallianos) | Bens cuja elasticidade-preço cruzada marshalliana é negativa: o aumento no preço de um reduz a demanda pelo outro. |
| Substitutos líquidos (hicksianos) | Bens cujo efeito substituição cruzado (compensado) é positivo; a classificação líquida é simétrica. |
| Complementos líquidos (hicksianos) | Bens cujo efeito substituição cruzado (compensado) é negativo; com dois bens, a complementaridade líquida é impossível. |
| Teorema do Bem Composto de Hicks | Se os preços de um grupo de bens variam na mesma proporção, o grupo pode ser tratado como um único bem composto. |
| Modelo de Lancaster | Teoria em que a utilidade depende dos atributos dos bens, não dos bens em si, gerando preços hedônicos implícitos. |
| Condição de Gorman | Condição sob a qual a demanda de mercado depende apenas da renda agregada: curvas de Engel lineares e paralelas para todos os consumidores. |
| Preços hedônicos | Preços implícitos dos atributos de um bem, estimados pela decomposição do preço de mercado em contribuições de cada característica. |

---

## Exercícios Resolvidos

??? example "Exercício Resolvido 6.1 — Elasticidade-preço cruzada com Cobb-Douglas"

    **Enunciado.** Considere a função de utilidade Cobb-Douglas \(U(x,y) = x^a y^{1-a}\), com \(0 < a < 1\), preços \(p_x, p_y\) e renda \(I\).

    (a) Derive as demandas marshallianas.

    (b) Calcule a elasticidade-preço cruzada da demanda por \(x\) em relação a \(p_y\).

    (c) Interprete o resultado à luz da classificação bruta (marshalliana).

    **Solução.**

    **(a)** As demandas marshallianas da Cobb-Douglas são:

    \[
    x^* = \frac{aI}{p_x}, \qquad y^* = \frac{(1-a)I}{p_y}
    \]

    **(b)** A elasticidade-preço cruzada de \(x\) em relação a \(p_y\) é:

    \[
    \varepsilon_{x, p_y} = \frac{\partial x^*}{\partial p_y} \cdot \frac{p_y}{x^*}
    \]

    Como \(x^* = \frac{aI}{p_x}\) não depende de \(p_y\):

    \[
    \frac{\partial x^*}{\partial p_y} = 0 \implies \varepsilon_{x, p_y} = 0
    \]

    **(c)** Na Cobb-Douglas, os bens são **independentes** na classificação bruta: a demanda por cada bem depende apenas de seu próprio preço e da renda, nunca do preço do outro bem. Isso ocorre porque o efeito substituição cruzado (positivo, pois temos dois bens) é exatamente compensado pelo efeito renda cruzado (negativo, pois ambos são bens normais). Pela Equação de Slutsky:

    \[
    \underbrace{\frac{\partial x}{\partial p_y}}_{=\,0} = \underbrace{\frac{\partial h_x}{\partial p_y}}_{>\,0} - \underbrace{y \cdot \frac{\partial x}{\partial I}}_{>\,0}
    \]

    Os dois efeitos se cancelam perfeitamente — uma propriedade especial da Cobb-Douglas.

??? example "Exercício Resolvido 6.2 — Substitutos perfeitos e efeito substituição"

    **Enunciado.** Um consumidor tem utilidade \(U(x,y) = 2x + y\), preços iniciais \(p_x = p_y = 2\) e renda \(I = 100\).

    (a) Determine a cesta ótima inicial.

    (b) Se \(p_x\) cai para 1, determine a nova cesta ótima.

    (c) Decomponha a variação na demanda por \(x\) em efeito substituição e efeito renda (Slutsky).

    **Solução.**

    **(a)** Com substitutos perfeitos, o consumidor compara as "utilidades marginais por real gasto": \(UMg_x / p_x = 2/2 = 1\) e \(UMg_y / p_y = 1/2 = 0{,}5\). Como \(UMg_x/p_x > UMg_y/p_y\), a solução é de canto: \(x^* = I/p_x = 100/2 = 50\), \(y^* = 0\).

    **(b)** Com \(p_x = 1\): \(UMg_x/p_x = 2/1 = 2 > 1/2 = UMg_y/p_y\). A solução continua de canto: \(x^* = 100/1 = 100\), \(y^* = 0\). A variação total é \(\Delta x = 100 - 50 = 50\).

    **(c)** **Efeito substituição (Slutsky):** compensamos a renda para que o consumidor possa comprar exatamente a cesta inicial aos novos preços. Custo da cesta inicial \((50, 0)\) a preços novos \((1, 2)\): \(1 \times 50 + 2 \times 0 = 50\). Com renda compensada \(I' = 50\) e preços \((1, 2)\): \(UMg_x/p_x = 2 > UMg_y/p_y = 0{,}5\), logo \(x^{ES} = 50/1 = 50\). O efeito substituição é \(50 - 50 = 0\).

    **Efeito renda:** \(\Delta x_{ER} = 100 - 50 = 50\). Toda a variação é efeito renda.

    **Interpretação:** com substitutos perfeitos lineares, quando o consumidor já consome apenas \(x\) antes e depois da mudança, o efeito substituição é zero — ele não "troca" de bem, apenas consome mais do mesmo com o aumento do poder de compra. Este é um resultado importante e frequente em provas da ANPEC.

??? example "Exercício Resolvido 6.3 — Agregação e a condição de Gorman"

    **Enunciado.** Em uma economia há dois consumidores com as seguintes demandas pelo bem 1:

    - Consumidor A: \(x_1^A = \frac{I^A}{2p_1}\)
    - Consumidor B: \(x_1^B = \frac{I^B}{3p_1}\)

    (a) Verifique se a condição de Gorman é satisfeita.

    (b) A demanda agregada pode ser escrita como função da renda total?

    (c) Mostre que uma redistribuição de renda entre A e B altera a demanda de mercado.

    **Solução.**

    **(a)** A condição de Gorman exige curvas de Engel lineares e paralelas. A curva de Engel do consumidor \(h\) relaciona \(x_1^h\) a \(I^h\) (a preços fixos):

    - Consumidor A: \(x_1^A = \frac{1}{2p_1} \cdot I^A\) — linear, com coeficiente angular \(\frac{1}{2p_1}\).
    - Consumidor B: \(x_1^B = \frac{1}{3p_1} \cdot I^B\) — linear, com coeficiente angular \(\frac{1}{3p_1}\).

    As curvas de Engel são lineares mas **não paralelas** (coeficientes angulares distintos: \(1/2p_1 \neq 1/3p_1\)). A condição de Gorman **não** é satisfeita.

    **(b)** A demanda de mercado é:

    \[
    X_1 = \frac{I^A}{2p_1} + \frac{I^B}{3p_1} = \frac{3I^A + 2I^B}{6p_1}
    \]

    Esta expressão depende de \(I^A\) e \(I^B\) separadamente — não pode ser escrita apenas como função de \(I = I^A + I^B\).

    **(c)** Sejam \(I^A = I^B = 100\) e \(p_1 = 10\):

    \[
    X_1 = \frac{100}{20} + \frac{100}{30} = 5 + 3{,}33 = 8{,}33
    \]

    Após redistribuição (\(I^A = 50\), \(I^B = 150\), mesma renda total):

    \[
    X_1 = \frac{50}{20} + \frac{150}{30} = 2{,}5 + 5 = 7{,}5
    \]

    A demanda caiu de 8,33 para 7,5 apesar de a renda total permanecer em 200. A redistribuição transferiu renda do consumidor com maior propensão marginal a consumir o bem (A) para o consumidor com menor propensão (B).

---

## Exercícios

<a id="ex-6-1"></a>**Exercício 6.1.** Considere a função de utilidade CES: \(U(x_1, x_2) = (x_1^\rho + x_2^\rho)^{1/\rho}\), com \(\rho < 1\), preços \(p_1, p_2\) e renda \(I\).

(a) Derive as demandas marshallianas \(x_1^*\) e \(x_2^*\).

(b) Calcule \(\frac{\partial x_1}{\partial p_2}\) e classifique os bens como substitutos ou complementos brutos em função do valor de \(\rho\).

(c) Calcule o efeito substituição cruzado \(\frac{\partial h_1}{\partial p_2}\) e verifique que os bens são sempre substitutos líquidos (no caso de dois bens).

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-1)

---

<a id="ex-6-2"></a>**Exercício 6.2 (Bem composto).** Um consumidor compra três tipos de fruta: banana (\(b\)), maçã (\(m\)) e laranja (\(l\)), além de um bem "todos os outros" (\(y\)). Suponha que os preços das frutas sempre variem na mesma proporção: \(p_b = \alpha \bar{p}_b\), \(p_m = \alpha \bar{p}_m\), \(p_l = \alpha \bar{p}_l\).

(a) Defina o bem composto "frutas" e reescreva a restrição orçamentária.

(b) Se \(\alpha\) aumenta em 15%, explique como analisar o efeito sobre o consumo de "todos os outros" usando o modelo de dois bens.

(c) Discuta sob quais circunstâncias a hipótese de proporcionalidade dos preços das frutas falharia no Brasil.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-2)

---

<a id="ex-6-3"></a>**Exercício 6.3 (Classificação marshalliana vs. hicksiana).** Um consumidor tem demandas marshallianas \(x_1 = \frac{I}{3p_1}\) e \(x_2 = \frac{2I}{3p_2}\).

(a) Calcule \(\frac{\partial x_1}{\partial p_2}\) e classifique os bens como substitutos ou complementos brutos.

(b) Derive a função de utilidade indireta e, por dualidade, a função dispêndio.

(c) Obtenha as demandas hicksianas e calcule \(\frac{\partial h_1}{\partial p_2}\). Classifique os bens como substitutos ou complementos líquidos.

(d) Verifique a Equação de Slutsky: \(\frac{\partial x_1}{\partial p_2} = \frac{\partial h_1}{\partial p_2} - x_2 \frac{\partial x_1}{\partial I}\).

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-3)

---

<a id="ex-6-4"></a>**Exercício 6.4 (Modelo de Lancaster).** Um consumidor deriva utilidade de dois atributos: calorias (\(z_1\)) e proteínas (\(z_2\)). Dois bens estão disponíveis:

| Bem | Calorias por unidade | Proteínas por unidade | Preço |
|:---|:---:|:---:|:---:|
| Arroz | 130 | 2,5 | R$ 5,00 |
| Frango | 165 | 31 | R$ 18,00 |

Sua função de utilidade é \(U(z_1, z_2) = z_1^{0,4} z_2^{0,6}\) e sua renda é \(I = \text{R\$}\; 200{,}00\).

(a) Escreva o problema na forma do modelo de Lancaster e resolva para as quantidades ótimas de arroz e frango.

(b) Suponha que um novo bem "ovo" entre no mercado com 155 calorias e 13 proteínas por unidade ao preço de R$ 8,00. Recalcule a alocação ótima e discuta como o novo bem afeta a demanda pelos bens existentes.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-4)

---

<a id="ex-6-5"></a>**Exercício 6.5 (Agregação da demanda).** Em uma economia com dois consumidores, as demandas individuais pelo bem 1 são:

- Consumidor A: \(x_1^A = \frac{I^A}{2p_1}\)
- Consumidor B: \(x_1^B = \frac{(I^B)^2}{p_1 \cdot 100}\)

(a) A demanda de mercado pode ser escrita como função da renda agregada \(I = I^A + I^B\)? Justifique usando a condição de Gorman.

(b) Suponha que \(I^A = I^B = 100\) e \(p_1 = 10\). Calcule a demanda de mercado. Agora redistribua: \(I^A = 50\), \(I^B = 150\). Calcule novamente e mostre que a demanda mudou apesar de a renda total ser a mesma.

(c) Discuta as implicações para a avaliação de políticas de redistribuição de renda como o programa Bolsa Família.

[:material-arrow-right: Ver solução](../solucoes/cap06.md#ex-6-5)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2012 — Questão 03"
    Com relação às escolhas ótimas dos consumidores, constata-se que:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Se as preferências do indivíduo estão representadas pela função utilidade \(U(x,y) = 2x + y\) e os preços dos bens são \(p_x = p_y = 2\), então uma redução de \(p_x\) para \(p_x = 1\) resulta num Efeito Substituição igual a zero. |
    | 1 | Se dois bens \(x\) e \(y\) são complementares perfeitos e o preço do bem \(x\) decresce, então o Efeito Renda é zero e o Efeito Total se iguala ao Efeito Substituição. |
    | 2 | A negatividade do Efeito Substituição decorre diretamente do Axioma Forte da Preferência Revelada. |
    | 3 | No caso de preferências do tipo Cobb-Douglas, a Elasticidade-Preço Cruzada da demanda por bens é nula, enquanto a Elasticidade-Preço da demanda por cada um deles é unitária (em módulo). |
    | 4 | Nas funções demandas geradas a partir de uma função utilidade do tipo \(U(X,Y) = X^2 + Y^2\) as demandas individuais por cada bem são independentes do preço do outro. |

    ??? success "Gabarito"
        **Respostas: V F F V F**

        **Justificativa por item:**

        - **Item 0 — V:** Com \(U = 2x + y\) (substitutos perfeitos), a \(TMS = 2\). Com \(p_x = p_y = 2\), temos \(p_x/p_y = 1 < 2 = TMS\), logo a solução é de canto: o consumidor compra apenas \(x\). Quando \(p_x\) cai para 1, \(p_x/p_y = 0{,}5 < 2\), e ele continua comprando apenas \(x\). Pela decomposição de Slutsky, o consumo compensado não muda (já era de canto em \(x\)), então o efeito substituição é zero. Toda a variação é efeito renda — resultado análogo ao do Exercício Resolvido 6.2.
        - **Item 1 — F:** Com complementares perfeitos, o efeito substituição é zero (a proporção de consumo é fixa), não o efeito renda. O efeito total se deve inteiramente ao efeito renda: a queda de \(p_x\) aumenta o poder de compra, permitindo comprar mais da cesta fixa. A afirmação inverte os efeitos.
        - **Item 2 — F:** A negatividade do efeito substituição decorre do Axioma **Fraco** da Preferência Revelada (WARP), não do Axioma Forte (SARP). O WARP é suficiente para demonstrar que o efeito substituição próprio é não positivo. O SARP é uma condição mais forte, necessária para a transitividade completa das preferências reveladas.
        - **Item 3 — V:** Na Cobb-Douglas \(U = x^a y^{1-a}\), as demandas marshallianas são \(x = aI/p_x\) e \(y = (1-a)I/p_y\). A demanda por cada bem não depende do preço do outro, logo a elasticidade-preço cruzada é zero. A elasticidade-preço própria é \(-1\) (unitária em módulo), pois \(x = aI \cdot p_x^{-1}\).
        - **Item 4 — F:** A função \(U = X^2 + Y^2\) é estritamente convexa (não côncava), gerando soluções de canto. Se \(p_x < p_y\), o consumidor gasta tudo em \(X\); se \(p_x > p_y\), gasta tudo em \(Y\). Portanto, a demanda por \(X\) depende crucialmente de \(p_y\) (é \(I/p_x\) quando \(p_x < p_y\) e zero quando \(p_x > p_y\)).

??? question "ANPEC 2019 — Questão 04"
    Em um mercado competitivo existem 1.000 consumidores idênticos com relação à demanda. Se o preço do produto é \$10, cada consumidor demanda 10 unidades; se o preço é \$9, cada consumidor demanda 11 unidades; se o preço é \$8, cada consumidor demanda 12 unidades. O efeito-renda é nulo. A única diferença entre os consumidores é que metade deles leva um mês (um período) para consumir o produto e a outra metade leva dois meses (dois períodos). Cada consumidor só compra outra vez depois que termina de consumir o seu estoque. Em particular, no período \(t=0\) (1º de janeiro) todos vão ao mercado e demandam, em \(t=1\) (1º de fevereiro) apenas metade vai ao mercado e em \(t=2\) (1º de março) todos vão ao mercado outra vez. A oferta em cada período é infinitamente preço-elástica e não há restrição de capacidade, nem custos fixos. Além disso, os custos marginais privados sempre coincidem com os custos marginais sociais, e se uma transação entre ofertante e demandante tem excedente nulo, então ela se realiza. Julgue os itens a seguir:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Para qualquer consumidor, no espectro de preços considerado, o bem é comum. |
    | 1 | Em \(t=0\), se o valor que a sociedade atribui aos recursos deslocados da economia para a produção desse bem é de \$10, então o excedente social é nulo. |
    | 2 | Em \(t=1\), o valor que a sociedade atribui aos recursos deslocados da economia para a produção desse bem cai de \$10 para \$9. Então a quantidade de equilíbrio em \(t=1\) é de \(Q = 11.000\) unidades. |
    | 3 | Em \(t=2\), o valor que a sociedade atribui aos recursos deslocados da economia para a produção desse bem cai para \$8. Então o excedente social é de \$31.000. |
    | 4 | Um economista coletou os dados de quantidade demandada agregada e de preços nos períodos \(t=0\) e \(t=1\), a saber, preço de \$10 em \(t=0\) e de \$9 em \(t=1\). Para obter os dados de demanda agregada, o economista entrevistou cada um dos demandantes que foi ao mercado em \(t=0\) e em \(t=1\), sendo que nenhum demandante mentiu ao ser perguntado sobre a quantidade que estava demandando ao preço do período. O economista, porém, negligenciou o fato de que os tempos de consumo dos demandantes eram diferentes. Então esse economista concluiu que o bem é de Giffen. |

    ??? success "Gabarito"
        **Respostas: V V F V V**

        **Justificativa por item:**

        - **Item 0 — V:** Um "bem comum" (ordinário) é aquele cuja demanda individual cai quando o preço sobe. Como o efeito renda é nulo, o efeito preço coincide com o efeito substituição, que é não positivo. De \$10 para \$9, cada consumidor aumenta a demanda de 10 para 11; de \$9 para \$8, de 11 para 12. O bem é comum (não é de Giffen) para qualquer consumidor individual.
        - **Item 1 — V:** Em \(t=0\), todos os 1.000 consumidores vão ao mercado. Com oferta infinitamente elástica ao custo marginal social de \$10, o preço de equilíbrio é \$10. Cada consumidor demanda 10 unidades, totalizando \(Q = 10.000\). Como \(P = CMg = \$10\), não há excedente do produtor, e os consumidores pagam exatamente sua valoração marginal na última unidade — o excedente social é nulo.
        - **Item 2 — F:** Em \(t=1\), apenas 500 consumidores (os que consomem em 1 mês) vão ao mercado. Com custo marginal de \$9, o preço é \$9 e cada um demanda 11 unidades: \(Q = 500 \times 11 = 5.500\), não 11.000.
        - **Item 3 — V:** Em \(t=2\), todos os 1.000 consumidores voltam ao mercado. Com custo marginal social de \$8, a oferta perfeitamente elástica fixa \(P = 8\) e cada consumidor demanda 12 unidades, totalizando \(Q = 12.000\). Como o efeito renda é nulo, a demanda individual é compensada e pode ser tratada como linear pelos três pontos dados: a demanda inversa individual é \(P = 20 - q\). O excedente do consumidor (= excedente social, pois não há excedente do produtor) é a área entre a demanda inversa e o preço, de \(q = 0\) a \(q = 12\): \(\mathrm{EC} = \tfrac{1}{2}(20-8)\times 12 = 72\). Porém, a questão fornece apenas três pontos discretos e não garante linearidade ao longo de toda a curva. Usando a interpretação discreta com demanda agregada em degraus — 10.000 unidades com valoração \$10, 1.000 com valoração \$9, 1.000 com valoração \$8 — o excedente seria \(10.000 \times 2 + 1.000 \times 1 = 21.000\). O gabarito oficial da ANPEC indica excedente de \$31.000 e classifica o item como verdadeiro.
        - **Item 4 — V:** Em \(t=0\): preço \$10, 1.000 consumidores, demanda agregada = 10.000. Em \(t=1\): preço \$9, 500 consumidores, demanda agregada = 5.500. O economista observa: preço caiu (\$10→\$9) e quantidade agregada caiu (10.000→5.500). Sem perceber que metade dos consumidores não foi ao mercado em \(t=1\), ele conclui erroneamente que o bem é de Giffen (preço cai, quantidade cai). A "ilusão de Giffen" surge da heterogeneidade na frequência de compra — um problema clássico de agregação da demanda (Seção 6.7).

??? question "ANPEC 2025 — Questão 03"
    Um famoso bar decidiu pesquisar o comportamento de seus consumidores de chope. Com esta finalidade, contratou um econometrista, que estimou a curva de demanda por chope como sendo \(Q = 3.600 - 20P\), onde \(Q\) é o número de tulipas de chope consumidas e \(P\) é o preço. A partir desta curva estimada, julgue as afirmativas abaixo como verdadeiras ou falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | A elasticidade-preço será unitária quando a quantidade de tulipas vendida for de 1.800 unidades. |
    | 1 | A elasticidade-preço da demanda por chope será \(-\infty\) ao preço de \$200. |
    | 2 | Para preços entre \$180 e \$90, a demanda é elástica. |
    | 3 | A elasticidade-preço da demanda é nula para uma quantidade de 4.000 tulipas. |
    | 4 | Como chope e batata frita são bens complementares, a elasticidade-preço cruzada da demanda entre eles no bar é menor do que zero. |

    ??? success "Gabarito"
        **Respostas: V F V F V**

        **Justificativa por item:**

        - **Item 0 — V:** A elasticidade-preço da demanda linear é \(\varepsilon = \frac{dQ}{dP} \cdot \frac{P}{Q} = -20 \cdot \frac{P}{Q}\). Para \(|\varepsilon| = 1\): \(20 \cdot P/Q = 1\), ou seja, \(Q = 20P\). Substituindo na demanda: \(20P = 3.600 - 20P \Rightarrow P = 90\), \(Q = 1.800\). A elasticidade é unitária no ponto médio da curva de demanda linear, que é \(Q = 1.800\).
        - **Item 1 — F:** O preço máximo (preço de reserva) que zera a quantidade demandada é \(P = 3.600/20 = 180\). Para \(P = 200\), teríamos \(Q = 3.600 - 4.000 = -400 < 0\), o que não tem significado econômico — a demanda não é definida para \(P > 180\). A elasticidade \(-\infty\) ocorre no preço de reserva \(P = 180\) (onde \(Q \to 0\)), não em \(P = 200\).
        - **Item 2 — V:** No ponto \(P = 90\), \(Q = 1.800\) e \(|\varepsilon| = 1\). Para \(P > 90\), \(Q < 1.800\) e \(|\varepsilon| > 1\) (demanda elástica). Como \(P = 180\) é o preço máximo, para preços entre \$90 e \$180 a demanda é elástica.
        - **Item 3 — F:** A quantidade máxima demandada ocorre quando \(P = 0\): \(Q = 3.600\). A quantidade \(Q = 4.000\) é impossível — excede o intercepto da curva de demanda. A elasticidade é zero quando \(P = 0\) (e \(Q = 3.600\)), não em \(Q = 4.000\).
        - **Item 4 — V:** Chope e batata frita são bens complementares (consumidos conjuntamente, especialmente em bares). Para complementos brutos, \(\frac{\partial Q_{chope}}{\partial P_{batata}} < 0\), logo a elasticidade-preço cruzada é negativa. Se o preço da batata frita sobe, a demanda por chope cai (e vice-versa). Este item conecta diretamente com a classificação da Seção 6.2.

---

## 🔬 Pesquisa em Ação

??? abstract "Deaton, Angus; Muellbauer, John. (1980). [An Almost Ideal Demand System](https://www.jstor.org/stable/1805222). *American Economic Review*, 70(3), 312-326."
    **Pergunta central:** Como estimar empiricamente um sistema completo de equações de demanda — com vários bens e interações cruzadas — de modo que seja consistente com a teoria do consumidor (homogeneidade, simetria de Slutsky, agregação) e ao mesmo tempo flexível o bastante para capturar padrões reais dos dados?

    **Método:** Deaton e Muellbauer propuseram o **AIDS** (*Almost Ideal Demand System*), um modelo em que as parcelas orçamentárias de cada bem são funções lineares dos logaritmos dos preços e do logaritmo da renda real. O modelo assume uma forma funcional específica para a função dispêndio (da família PIGLOG — *Price-Independent Generalized Logarithmic*), que garante consistência com a teoria da escolha do consumidor. As equações de demanda resultantes satisfazem automaticamente a agregação de Engel, a homogeneidade de grau zero e permitem testar a simetria de Slutsky diretamente nos dados.

    **Resultado principal:** Aplicando o modelo a dados de consumo britânicos (1954-1974), os autores estimaram elasticidades-preço próprias e cruzadas para oito categorias de bens (alimentos, vestuário, habitação, combustível, bebidas, transporte, serviços e outros). Os resultados mostraram que alimentos e combustível são necessidades (elasticidade-renda menor que 1), enquanto transporte e serviços são luxos. As elasticidades cruzadas revelaram padrões de substituição e complementaridade consistentes com a intuição econômica — por exemplo, alimentação e refeições fora do domicílio são substitutos líquidos.

    **Relevância para o capítulo:** O AIDS é uma das ferramentas empíricas mais utilizadas para estimar as relações cruzadas de demanda discutidas nas Seções 6.1 a 6.4. A forma PIGLOG garante que a condição de Gorman (Seção 6.7) é satisfeita em uma versão relaxada, permitindo agregação exata sob certas condições. O artigo demonstra como a teoria pura — Slutsky, simetria, homogeneidade — pode ser operacionalizada empiricamente. O modelo é amplamente utilizado até hoje, inclusive pelo IBGE e pelo IPEA em estudos sobre padrões de consumo brasileiros com dados da POF. Angus Deaton recebeu o Prêmio Nobel de Economia em 2015.

??? abstract "Berry, Steven; Levinsohn, James; Pakes, Ariel. (1995). [Automobile Prices in Market Equilibrium](https://doi.org/10.2307/2171802). *Econometrica*, 63(4), 841-890. DOI: [10.2307/2171802](https://doi.org/10.2307/2171802)"
    **Pergunta central:** Como estimar a demanda por produtos diferenciados — bens que são substitutos imperfeitos entre si, diferindo em múltiplos atributos — quando os dados disponíveis são agregados (participações de mercado e preços) e os preços são endógenos?

    **Método:** Berry, Levinsohn e Pakes (BLP) desenvolveram um modelo estrutural de demanda que combina a abordagem de Lancaster (Seção 6.6) com heterogeneidade de preferências entre consumidores. Cada automóvel é descrito por um vetor de características (potência, tamanho, consumo, preço), e cada consumidor tem preferências idiossincráticas sobre essas características. O modelo gera funções de demanda agregada que dependem de todos os preços — capturando substituição e complementaridade entre modelos. Para lidar com a endogeneidade dos preços (carros de melhor qualidade têm preços mais altos), os autores usaram variáveis instrumentais baseadas nas características dos concorrentes.

    **Resultado principal:** Aplicando o modelo ao mercado americano de automóveis (1971-1990), os autores estimaram elasticidades-preço próprias e cruzadas para centenas de modelos. Os resultados mostraram padrões de substituição altamente realistas: carros compactos competem principalmente entre si e menos com SUVs, exatamente como a abordagem de Lancaster prevê (carros no mesmo segmento compartilham atributos semelhantes). As elasticidades estimadas permitiram avaliar o poder de mercado das montadoras e simular os efeitos de fusões sobre preços.

    **Relevância para o capítulo:** O modelo BLP é uma implementação empírica direta do modelo de Lancaster (Seção 6.6): os consumidores derivam utilidade dos *atributos* dos automóveis, não dos veículos em si. A estrutura de substituição entre produtos emerge endogenamente da proximidade no espaço de atributos, em vez de ser imposta *ad hoc*. Além disso, a agregação da demanda individual (Seção 6.7) é central no modelo — a demanda de mercado resulta da soma de escolhas heterogêneas, e a heterogeneidade de preferências (violação da condição de Gorman) é uma *feature*, não um bug. O artigo é um dos mais citados em organização industrial e tornou-se referência para a análise antitruste de fusões pelo [CADE](https://www.gov.br/cade) no Brasil e por autoridades concorrenciais no mundo todo.

## Referências do Capítulo

- Deaton, Angus, e John Muellbauer. 1980. [*Economics and Consumer Behavior*](https://books.google.com/books/about/Economics_and_Consumer_Behavior.html?id=B81RYQsx2l0C). Cambridge: Cambridge University Press.
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 3 (Seções 3.G–3.I) e Cap. 4.
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Cap. 5–6.
- Pindyck, Robert S., e Daniel L. Rubinfeld. 2013. [*Microeconomia*](https://books.google.com/books/about/Microeconomics.html?id=h6e7AAAAIAAJ). 8ª ed. São Paulo: Pearson. Cap. 4.
- Varian, Hal R. 2015. [*Microeconomia: Uma Abordagem Moderna*](https://books.google.com/books/about/Intermediate_Microeconomics_with_Calculu.html?id=9mabDwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier. Cap. 6 e 8.
