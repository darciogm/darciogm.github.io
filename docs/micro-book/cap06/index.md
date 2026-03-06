# Capítulo 6 — Bens que Amamos, Bens que Odiamos

> *"Nenhum bem é uma ilha: a demanda por cada produto depende dos preços de todos os outros."*

No capítulo anterior, analisamos como variações de preço e renda afetam a demanda por um bem individual, decompondo os efeitos substituição e renda. Agora, voltamos o olhar para as **relações entre bens**: como a variação no preço de um bem afeta a demanda por outro? Quando bens são substitutos? Quando são complementos? E como agregamos as demandas individuais para obter a demanda de mercado? Este capítulo encerra a Parte II do livro, fornecendo as ferramentas necessárias para a análise completa do lado da demanda.

---

## 6.1 O Caso com Dois Bens: Efeitos Cruzados de Preço

Considere um consumidor que maximiza \(U(x_1, x_2)\) sujeito à restrição orçamentária \(p_1 x_1 + p_2 x_2 = I\). As funções de demanda marshalliana \(x_1^*(p_1, p_2, I)\) e \(x_2^*(p_1, p_2, I)\) dependem de ambos os preços. O **efeito cruzado de preço** é a derivada parcial:

\[
\frac{\partial x_1}{\partial p_2}
\]

Pela Equação de Slutsky (Capítulo 5), essa derivada pode ser decomposta:

\[
\frac{\partial x_1}{\partial p_2} = \underbrace{\frac{\partial h_1}{\partial p_2}}_{\text{efeito substituição cruzado}} - \underbrace{x_2 \frac{\partial x_1}{\partial I}}_{\text{efeito renda cruzado}}
\]

No caso de dois bens, a restrição orçamentária impõe relações fortes. Se o preço de \(x_2\) aumenta, o efeito substituição necessariamente empurra o consumidor na direção de \(x_1\) — no caso de dois bens, o efeito substituição cruzado é sempre não-negativo:

\[
\frac{\partial h_1}{\partial p_2} \geq 0 \quad \text{(com dois bens)}
\]

Isso significa que, no sentido hicksiano, **dois bens são sempre substitutos líquidos** quando há apenas dois bens no modelo. A complementaridade só emerge com três ou mais bens.

---

## 6.2 Substitutos e Complementos Brutos (Marshallianos)

A classificação mais intuitiva — e a que se observa diretamente nos dados — utiliza as derivadas cruzadas da demanda marshalliana.

!!! definition "Substitutos e complementos brutos"
    Dois bens \(i\) e \(j\) são:

    - **Substitutos brutos** se \(\frac{\partial x_i}{\partial p_j} > 0\): quando o preço de \(j\) sobe, a demanda por \(i\) aumenta.
    - **Complementos brutos** se \(\frac{\partial x_i}{\partial p_j} < 0\): quando o preço de \(j\) sobe, a demanda por \(i\) cai.
    - **Independentes** se \(\frac{\partial x_i}{\partial p_j} = 0\).

!!! note "Assimetria da classificação bruta"
    A classificação marshalliana **não é necessariamente simétrica**: pode ocorrer que \(\frac{\partial x_1}{\partial p_2} > 0\) enquanto \(\frac{\partial x_2}{\partial p_1} < 0\). Isso decorre da interferência do efeito renda, que contamina a relação cruzada de forma assimétrica. Essa é uma das razões pelas quais a classificação hicksiana é teoricamente preferida.

**Exemplos para o contexto brasileiro:**

- Carne bovina e frango: substitutos brutos — quando a carne bovina encarece, a demanda por frango tende a subir.
- Automóvel e gasolina: complementos brutos — se o preço do automóvel sobe, as vendas caem e, consequentemente, a demanda por gasolina também.
- Arroz e feijão: complementos brutos — o par arroz-feijão forma a base da alimentação brasileira e o consumo tende a se mover na mesma direção.

---

## 6.3 Substitutos e Complementos Líquidos (Hicksianos)

Para uma classificação teoricamente mais limpa, utilizamos as derivadas cruzadas da **demanda hicksiana** (compensada), que capturam apenas o efeito substituição, isolando o efeito renda.

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

Da Equação de Slutsky:

\[
\frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial I}
\]

Se \(x_i\) é um bem normal (\(\frac{\partial x_i}{\partial I} > 0\)), o efeito renda cruzado é negativo (o aumento de \(p_j\) reduz o poder de compra, diminuindo a demanda por \(x_i\)). Assim, o efeito bruto é menor que o efeito líquido:

\[
\frac{\partial x_i}{\partial p_j} < \frac{\partial h_i}{\partial p_j}
\]

Dois bens podem ser substitutos líquidos mas complementos brutos se o efeito renda negativo exceder o efeito substituição positivo.

---

### Gráfico interativo: Substitutos e Complementos

O gráfico abaixo permite explorar os efeitos cruzados de preço com a função de utilidade CES. Ajuste o preço de \(p_2\) e o parâmetro \(\rho\) para visualizar como a demanda por \(x_1\) responde a variações no preço do outro bem, alternando entre substitutos e complementos.

<iframe src="../graficos/cap06/substitutos-complementos.html" width="100%" height="780" style="border:none;border-radius:8px;"></iframe>

---

## 6.4 Substituibilidade com Muitos Bens

Com \(n > 2\) bens, a análise se torna mais rica e complexa. A **matriz de substituição de Slutsky** \(\mathbf{S}\), com elementos:

\[
s_{ij} = \frac{\partial h_i}{\partial p_j}, \quad i, j = 1, \ldots, n
\]

é simétrica (\(s_{ij} = s_{ji}\)) e negativa semidefinida. Os elementos diagonais são necessariamente não-positivos:

\[
s_{ii} = \frac{\partial h_i}{\partial p_i} \leq 0
\]

mas os elementos fora da diagonal podem ter qualquer sinal. No entanto, nem todos podem ser negativos:

!!! abstract "Teorema: Predominância da substituibilidade líquida"
    Para cada bem \(i\), a soma ponderada dos efeitos substituição cruzados (com pesos iguais aos preços) é não-negativa. Mais precisamente, pela homogeneidade de grau zero da demanda hicksiana:

    \[
    \sum_{j=1}^n p_j \frac{\partial h_i}{\partial p_j} = 0
    \]

    Como \(\frac{\partial h_i}{\partial p_i} \leq 0\), pelo menos alguns dos termos cruzados devem ser positivos. Logo, **todo bem deve ter pelo menos um substituto líquido**.

Essa propriedade implica que, embora a complementaridade líquida exista, a substituibilidade é o fenômeno "dominante" no sentido de que não pode haver um bem que seja complemento líquido de todos os outros.

---

## 6.5 Bens Compostos (Teorema do Bem Composto de Hicks)

Em modelos aplicados, frequentemente trabalhamos com centenas ou milhares de bens. Para tornar a análise tratável, agrupamos bens em categorias. O **Teorema do Bem Composto de Hicks** fornece a justificativa teórica para essa prática.

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

---

### Gráfico interativo: Bem Composto de Hicks

O gráfico abaixo ilustra o Teorema do Bem Composto. O eixo horizontal mede o bem 1 (\(x_1\)) e o eixo vertical mede o bem composto (\(y\)), que agrega os demais bens cujos preços variam proporcionalmente. Ajuste \(\alpha\) para simular variações proporcionais nos preços do grupo composto.

<iframe src="../graficos/cap06/bem-composto.html" width="100%" height="520" style="border:none;border-radius:8px;"></iframe>

---

## 6.6 Produção Doméstica, Atributos dos Bens e Preços Implícitos

### 6.6.1 O modelo de Lancaster

A teoria tradicional assume que o consumidor obtém utilidade diretamente dos bens. Kelvin **Lancaster** (1966) propôs uma reformulação: os bens são desejados não por si mesmos, mas pelos **atributos** (ou **características**) que contêm.

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

Esse modelo gera **preços implícitos** (ou **preços hedônicos**) para os atributos. Se o número de atributos for menor que o de bens (\(m < n\)), o consumidor pode calcular o "custo" de cada unidade de atributo combinando bens de modo eficiente.

### 6.6.2 Implicações

O modelo de Lancaster explica fenômenos que a teoria tradicional não captura com facilidade:

- **Introdução de novos bens**: um novo produto é simplesmente uma nova coluna na matriz \(\mathbf{B}\). Se ele oferece uma combinação de atributos mais eficiente (menor custo por unidade de atributo), substitui bens existentes.
- **Diferenciação de produto**: marcas diferentes do "mesmo" bem oferecem combinações distintas de atributos (sabor, durabilidade, status).
- **Preços hedônicos**: o preço de um imóvel, por exemplo, pode ser decomposto em preços implícitos de localização, metragem, número de quartos e outros atributos.

### 6.6.3 Modelo de produção doméstica de Becker

Gary **Becker** (1965) propôs que as famílias são unidades produtivas que combinam bens de mercado com tempo para gerar **commodities domésticas** que geram utilidade. Por exemplo, uma refeição exige ingredientes (bens) e tempo de preparo (trabalho doméstico). Formalmente:

\[
z_k = f_k(x_k, t_k)
\]

onde \(x_k\) são bens de mercado e \(t_k\) é o tempo dedicado à atividade \(k\). O consumidor maximiza \(U(z_1, \ldots, z_m)\) sujeito a restrições de orçamento monetário e de tempo total.

O preço implícito de cada commodity doméstica incorpora tanto o custo dos bens quanto o custo de oportunidade do tempo, o que explica, por exemplo, por que famílias de renda mais alta tendem a consumir mais refeições fora do domicílio.

---

## 6.7 Agregação da Demanda: Do Individual ao Mercado

### 6.7.1 Demanda de mercado

A **demanda de mercado** é obtida pela soma horizontal das demandas individuais. Se há \(H\) consumidores, cada um com demanda \(x_i^h(p_1, \ldots, p_n, I^h)\), a demanda de mercado pelo bem \(i\) é:

\[
X_i(p_1, \ldots, p_n, I^1, \ldots, I^H) = \sum_{h=1}^H x_i^h(p_1, \ldots, p_n, I^h)
\]

### 6.7.2 Condições para uma demanda de mercado "bem-comportada"

A simples soma de demandas individuais racionais não garante que a demanda agregada se comporte como se fosse gerada por um "consumidor representativo". Para isso, são necessárias condições adicionais:

!!! definition "Condição de Gorman"
    A demanda de mercado pode ser escrita como função de preços e renda **agregada** \(I = \sum_h I^h\) se, e somente se, todas as curvas de Engel individuais forem lineares e paralelas. Isso ocorre quando as preferências são **quase-homotéticas** (preferências homotéticas mais uma translação) ou, de modo mais geral, quando as funções de utilidade indireta têm a forma de Gorman:

    \[
    V^h(\mathbf{p}, I^h) = a(\mathbf{p}) + b(\mathbf{p}) \cdot I^h
    \]

    onde \(a(\mathbf{p})\) e \(b(\mathbf{p})\) são comuns a todos os consumidores.

Quando a condição de Gorman não é satisfeita, a demanda de mercado depende da **distribuição de renda**, não apenas da renda total. Isso tem implicações profundas para a política econômica: transferências de renda (como o Bolsa Família / Auxílio Brasil) alteram a demanda agregada mesmo que a renda total permaneça constante.

### 6.7.3 Propriedades da demanda de mercado

Mesmo sem um consumidor representativo, a demanda de mercado preserva algumas propriedades:

1. **Homogeneidade de grau zero** em preços e rendas (se cada demanda individual for homogênea de grau zero).
2. **Agregação de Engel**: \(\sum_i w_i \varepsilon_{X_i, I} = 1\), onde \(w_i\) é a parcela orçamentária agregada.
3. **A Lei da Demanda vale "em média"**: embora bens de Giffen possam existir individualmente, eles tendem a desaparecer na agregação, pois diferentes consumidores estão em pontos distintos de suas curvas de Engel.

!!! note "Suavização pela agregação"
    A agregação tende a "suavizar" irregularidades individuais. Mesmo que consumidores individuais tenham demandas com descontinuidades (por exemplo, escolhas discretas entre marcas), a demanda de mercado pode ser bem aproximada por uma função contínua e diferenciável, desde que haja heterogeneidade suficiente entre consumidores.

---

## Tabela: Classificação de Pares de Bens no Contexto Brasileiro

A tabela a seguir classifica pares de bens relevantes para o consumidor brasileiro, distinguindo entre a relação bruta (marshalliana) e a relação líquida (hicksiana).

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

## Exercícios

!!! tip "Exercícios do Capítulo 6"

**Exercício 6.1.** Considere a função de utilidade CES: \(U(x_1, x_2) = (x_1^\rho + x_2^\rho)^{1/\rho}\), com \(\rho < 1\), preços \(p_1, p_2\) e renda \(I\).

(a) Derive as demandas marshallianas \(x_1^*\) e \(x_2^*\).

(b) Calcule \(\frac{\partial x_1}{\partial p_2}\) e classifique os bens como substitutos ou complementos brutos em função do valor de \(\rho\).

(c) Calcule o efeito substituição cruzado \(\frac{\partial h_1}{\partial p_2}\) e verifique que os bens são sempre substitutos líquidos (no caso de dois bens).

---

**Exercício 6.2 (Bem composto).** Um consumidor compra três tipos de fruta: banana (\(b\)), maçã (\(m\)) e laranja (\(l\)), além de um bem "todos os outros" (\(y\)). Suponha que os preços das frutas sempre variem na mesma proporção: \(p_b = \alpha \bar{p}_b\), \(p_m = \alpha \bar{p}_m\), \(p_l = \alpha \bar{p}_l\).

(a) Defina o bem composto "frutas" e reescreva a restrição orçamentária.

(b) Se \(\alpha\) aumenta em 15%, explique como analisar o efeito sobre o consumo de "todos os outros" usando o modelo de dois bens.

(c) Discuta sob quais circunstâncias a hipótese de proporcionalidade dos preços das frutas falharia no Brasil.

---

**Exercício 6.3 (Classificação marshalliana vs. hicksiana).** Um consumidor tem demandas marshallianas \(x_1 = \frac{I}{3p_1}\) e \(x_2 = \frac{2I}{3p_2}\).

(a) Calcule \(\frac{\partial x_1}{\partial p_2}\) e classifique os bens como substitutos ou complementos brutos.

(b) Derive a função de utilidade indireta e, por dualidade, a função dispêndio.

(c) Obtenha as demandas hicksianas e calcule \(\frac{\partial h_1}{\partial p_2}\). Classifique os bens como substitutos ou complementos líquidos.

(d) Verifique a Equação de Slutsky: \(\frac{\partial x_1}{\partial p_2} = \frac{\partial h_1}{\partial p_2} - x_2 \frac{\partial x_1}{\partial I}\).

---

**Exercício 6.4 (Modelo de Lancaster).** Um consumidor deriva utilidade de dois atributos: calorias (\(z_1\)) e proteínas (\(z_2\)). Dois bens estão disponíveis:

| Bem | Calorias por unidade | Proteínas por unidade | Preço |
|:---|:---:|:---:|:---:|
| Arroz | 130 | 2,5 | R$ 5,00 |
| Frango | 165 | 31 | R$ 18,00 |

Sua função de utilidade é \(U(z_1, z_2) = z_1^{0,4} z_2^{0,6}\) e sua renda é \(I = \text{R\$}\; 200{,}00\).

(a) Escreva o problema na forma do modelo de Lancaster e resolva para as quantidades ótimas de arroz e frango.

(b) Suponha que um novo bem "ovo" entre no mercado com 155 calorias e 13 proteínas por unidade ao preço de R$ 8,00. Recalcule a alocação ótima e discuta como o novo bem afeta a demanda pelos bens existentes.

---

**Exercício 6.5 (Agregação da demanda).** Em uma economia com dois consumidores, as demandas individuais pelo bem 1 são:

- Consumidor A: \(x_1^A = \frac{I^A}{2p_1}\)
- Consumidor B: \(x_1^B = \frac{(I^B)^2}{p_1 \cdot 100}\)

(a) A demanda de mercado pode ser escrita como função da renda agregada \(I = I^A + I^B\)? Justifique usando a condição de Gorman.

(b) Suponha que \(I^A = I^B = 100\) e \(p_1 = 10\). Calcule a demanda de mercado. Agora redistribua: \(I^A = 50\), \(I^B = 150\). Calcule novamente e mostre que a demanda mudou apesar de a renda total ser a mesma.

(c) Discuta as implicações para a avaliação de políticas de redistribuição de renda como o programa Bolsa Família.
