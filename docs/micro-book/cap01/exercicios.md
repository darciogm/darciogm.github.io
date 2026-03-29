# Exercícios e ANPEC

<iframe src="/micro-book/graficos/cap01/webr-oferta-demanda.html" title="WebR — Oferta e Demanda" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 1.1 — Oferta e Demanda: estática comparativa.** Altere os parâmetros de oferta, demanda e o choque de renda para ver como o equilíbrio se desloca. O código R executa diretamente no navegador via WebAssembly.
</div>

<iframe src="/micro-book/graficos/cap01/webr-equilibrio-imposto.html" title="WebR — Incidência Tributária" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 1.4 — Quem paga o imposto?** Simule um imposto por unidade e veja como ele se divide entre consumidor e produtor. O peso morto (DWL) aparece como triângulo vermelho. Altere as inclinações: quem paga mais, o lado mais elástico ou o mais inelástico?
</div>

<iframe src="/micro-book/graficos/cap01/webr-elasticidade.html" title="WebR — Elasticidade ao Longo da Demanda" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 1.5 — Elasticidade ao longo de uma curva de demanda.** A mesma curva linear tem trechos elásticos e inelásticos. O código calcula |E| em vários pontos e mostra onde a receita total é máxima (|E|=1). Altere os parâmetros e descubra: onde a firma quer operar?
</div>

---

!!! classroom "Atividade 1.1 — O modelo do almoço: simplificar para enxergar (20 min)"
    **Objetivo:** Vivenciar a lógica de construção de modelos — e entender que omitir não é ignorar.

    **Material:** Folha de papel e caneta para cada grupo.

    **Protocolo:**

    1. **Formação de grupos** (2 min): Grupos de 3–4 alunos.
    2. **O problema** (3 min): "Vocês precisam prever onde os alunos da turma almoçam hoje. Têm 5 minutos e só podem usar **3 variáveis** (exemplo: preço, distância, tempo de espera). Quais 3 vocês escolhem? Anotem e justifiquem."
    3. **Apresentação** (8 min): Cada grupo apresenta seu "modelo de almoço" em 1 minuto. O professor anota as variáveis escolhidas no quadro. Tipicamente: preço, distância, qualidade da comida, tempo de espera, se amigos vão junto.
    4. **Debrief** (7 min):
        - Pergunte: "Algum grupo incluiu 'cor da parede do restaurante'? 'Signo do cozinheiro'? Não? Por que não?" → *Ceteris paribus* como decisão deliberada de omissão.
        - Pergunte: "Se eu disser que 80% da turma almoça no RU, seu modelo acertou? Ele precisa acertar o nome exato do restaurante de cada pessoa?" → Verificação indireta vs. direta (Seção 1.2).
        - Pergunte: "Se o preço do RU dobrasse amanhã, o que seu modelo prevê? Ele consegue fazer *estática comparativa*?" → Conecte com Seção 1.4.
        - Feche: "Parabéns, vocês acabaram de construir um modelo microeconômico. Ele está errado — todos os modelos estão. Mas é útil?"

    **Conexão com o conteúdo:** Seções 1.1 (por que simplificar), 1.2 (verificação), 1.3 (*ceteris paribus*), 1.4 (estática comparativa).

!!! classroom "Atividade 1.2 — Positivo vs. normativo: o debate do salário mínimo (15 min)"
    **Objetivo:** Distinguir na prática afirmações positivas de normativas — e perceber como pressupostos mudam conclusões.

    **Material:** Nenhum (apenas projeção de duas frases).

    **Protocolo:**

    1. **Estímulo** (2 min): Projete duas frases: (A) "Um aumento de 10% no salário mínimo reduz o emprego formal em 1,5%." (B) "O salário mínimo deveria ser de R$ 3.000 para garantir dignidade."
    2. **Think-Pair-Share** (5 min): Individualmente (1 min), depois em duplas (2 min), depois compartilham (2 min): "Qual frase é positiva e qual é normativa? Por quê?"
    3. **Twist** (3 min): Projete uma terceira frase: (C) "Card e Krueger (1994) encontraram que um aumento no salário mínimo em New Jersey *não* reduziu o emprego." Pergunte: "A frase (A) ficou falsa? Ou o modelo que a gerou precisa de hipóteses adicionais?"
    4. **Debrief** (5 min):
        - "A frase (C) invalida (A)?" → Não necessariamente — são contextos, períodos e magnitudes diferentes. Modelos fazem previsões *condicionais*.
        - "A frase (B) é 'melhor' que (A) porque se preocupa com pessoas?" → Ambas são necessárias; políticas sem evidência positiva podem causar mais mal do que bem.
        - Conecte com a distinção positivo/normativo (Seção 1.3) e com a importância de testar modelos (Seção 1.2).

    **Conexão com o conteúdo:** Seções 1.2 (verificação empírica) e 1.3 (análise positiva vs. normativa).

---

## Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. Qual é a principal diferença entre análise positiva e análise normativa em economia?"
    - (a) A análise positiva usa dados empíricos, enquanto a normativa usa apenas teoria
    - (b) A análise positiva descreve 'o que é', enquanto a normativa prescreve 'o que deveria ser'
    - (c) A análise positiva trata de microeconomia e a normativa de macroeconomia
    - (d) A análise positiva é objetiva porque não envolve suposições

    ??? success "Resposta"
        **(b)** A análise positiva busca descrever e explicar fenômenos econômicos como eles são, gerando previsões testáveis. A análise normativa envolve juízos de valor sobre o que deveria ser feito. A alternativa (a) confunde método com natureza da análise; (c) mistura subáreas; (d) é incorreta pois toda análise envolve suposições.

??? question "2. Segundo a visão friedmaniana, um modelo econômico deve ser avaliado principalmente pela:"
    - (a) Fidelidade de suas premissas à realidade observada
    - (b) Complexidade matemática de suas equações
    - (c) Capacidade de gerar previsões úteis e testáveis
    - (d) Quantidade de variáveis que incorpora

    ??? success "Resposta"
        **(c)** Friedman (1953) argumentou que modelos devem ser julgados pela utilidade de suas previsões, não pelo realismo de suas suposições. Um mapa útil não precisa reproduzir cada detalhe do terreno. As demais alternativas confundem realismo das premissas (a), sofisticação formal (b) ou abrangência (d) com qualidade preditiva.

??? question "3. A cláusula *ceteris paribus* em microeconomia corresponde, matematicamente, a:"
    - (a) Uma integral definida sobre a função de demanda
    - (b) Uma derivada parcial — variar uma variável mantendo as demais constantes
    - (c) Uma transformação monotônica da função de utilidade
    - (d) Uma condição de equilíbrio geral com todos os mercados simultâneos

    ??? success "Resposta"
        **(b)** *Ceteris paribus* significa 'tudo o mais constante', o que equivale a calcular a derivada parcial de uma função em relação a uma variável, mantendo todas as outras fixas. Isso é o fundamento da estática comparativa. A alternativa (d) descreve justamente a abordagem oposta — equilíbrio geral, que abandona o *ceteris paribus*.

??? question "4. Em um modelo microeconômico, as variáveis endógenas são aquelas que:"
    - (a) São determinadas fora do modelo e tratadas como parâmetros
    - (b) São determinadas dentro do modelo, como resultado da otimização dos agentes
    - (c) Representam apenas variáveis monetárias como preço e renda
    - (d) Não podem ser observadas empiricamente

    ??? success "Resposta"
        **(b)** Variáveis endógenas são determinadas pelo próprio modelo (ex.: preço e quantidade de equilíbrio), enquanto variáveis exógenas (a) são determinadas fora dele (ex.: renda, tecnologia). A alternativa (c) é muito restritiva e (d) confunde endogeneidade com observabilidade.

??? question "5. A hipótese de otimização na microeconomia assume que os agentes:"
    - (a) Possuem informação perfeita sobre todos os mercados
    - (b) Agem 'como se' maximizassem uma função objetivo, mesmo que não calculem explicitamente
    - (c) Sempre alcançam o resultado socialmente ótimo
    - (d) Nunca cometem erros em suas decisões

    ??? success "Resposta"
        **(b)** A hipótese de otimização, no sentido 'como se' (*as if*) de Friedman, não exige que os agentes façam cálculos conscientes — apenas que seu comportamento seja consistente com a maximização de uma função objetivo. A alternativa (a) confunde otimização com informação perfeita; (c) confunde ótimo privado com social; (d) ignora que erros sistemáticos são estudados pela economia comportamental.

??? question "6. O paradoxo da água e do diamante foi resolvido pela revolução marginalista porque:"
    - (a) Os marginalistas provaram que o diamante é mais útil que a água em termos absolutos
    - (b) Os marginalistas mostraram que o valor depende da utilidade da *última* unidade consumida, não da utilidade total
    - (c) Os marginalistas abandonaram a teoria do valor-trabalho e a substituíram por uma teoria baseada nos custos de produção
    - (d) Os marginalistas demonstraram que a água é um bem inferior e o diamante um bem de luxo

    ??? success "Resposta"
        **(b)** A chave é a distinção entre utilidade *total* e utilidade *marginal*. A água tem utilidade total enorme (sem ela, morremos), mas como é abundante, sua utilidade marginal é baixa — o próximo litro acrescenta pouco. O diamante tem utilidade total modesta, mas como é escasso, cada unidade adicional é altamente valorizada. Smith confundia as duas dimensões; Jevons, Menger e Walras resolveram a confusão. A alternativa (c) descreve a posição *clássica*, não a marginalista; (d) confunde conceitos de elasticidade-renda com a teoria do valor.

---

## Resumo do Capítulo

- A microeconomia utiliza **modelos** — representações simplificadas da realidade, análogas a mapas — para isolar mecanismos causais e gerar previsões testáveis. A qualidade de um modelo se mede pela utilidade de suas implicações, não pelo realismo de suas suposições.
- A verificação de modelos pode ser **direta** (examinar as premissas) ou **indireta** (avaliar as previsões, como propôs Friedman). A economia empírica moderna avançou com técnicas quase-experimentais para testar modelos com dados observacionais. A distinção entre correlação e causalidade é o desafio central.
- Os modelos microeconômicos repousam sobre três pilares metodológicos: a cláusula *ceteris paribus* (isolar o efeito de uma variável por vez, correspondendo matematicamente à derivada parcial), a **hipótese de otimização** (agentes se comportam "como se" maximizassem) e a distinção entre **análise positiva** (o que é) e **normativa** (o que deveria ser).
- A estrutura de um modelo envolve variáveis exógenas e endógenas, um problema de otimização, a derivação de funções de resposta e a análise de **estática comparativa** — como as soluções ótimas mudam quando os parâmetros variam.
- A teoria do valor evoluiu da teoria do valor-trabalho (Smith, Ricardo) para a **revolução marginalista** (Jevons, Menger, Walras), que resolveu o paradoxo da água e do diamante via utilidade marginal, culminando na síntese neoclássica de Marshall e no equilíbrio geral de Arrow-Debreu.
- Desenvolvimentos modernos — teoria dos jogos, economia da informação, economia comportamental, teoria dos mecanismos, economia de plataformas — relaxam as suposições do modelo competitivo básico e ampliam o alcance da microeconomia a mercados digitais, leilões, regulação e design de instituições.

## Conceitos-Chave

<a id="tabela-1-3"></a>

| Conceito | Definição |
|----------|-----------|
| Modelo econômico | Representação simplificada da realidade, expressa por relações lógicas entre variáveis, com o objetivo de explicar fenômenos e gerar previsões testáveis. |
| *Ceteris paribus* | Cláusula metodológica que mantém "tudo o mais constante" para isolar o efeito de uma variável sobre outra. Corresponde à derivada parcial. |
| Hipótese de otimização | Premissa de que os agentes econômicos se comportam como se maximizassem uma função objetivo (utilidade, lucro) sujeita a restrições. |
| Análise positiva | Investigação descritiva ou preditiva sobre "o que é", verificável por confronto com dados empíricos. |
| Análise normativa | Investigação prescritiva sobre "o que deveria ser", envolvendo julgamentos de valor. |
| Variáveis exógenas e endógenas | Exógenas são determinadas fora do modelo (dados/parâmetros); endógenas são determinadas dentro do modelo (incógnitas). |
| Equilíbrio de mercado | Configuração de preço e quantidade em que oferta iguala demanda: nenhum agente tem incentivo para alterar seu comportamento. |
| Estática comparativa | Comparação entre dois equilíbrios para determinar como as variáveis endógenas respondem a mudanças nas exógenas. |
| Utilidade marginal | Utilidade adicional obtida pelo consumo da última unidade de um bem; conceito central da revolução marginalista. |
| Teoria do valor-trabalho | Doutrina clássica (Smith, Ricardo) segundo a qual o valor de troca de um bem é determinado pela quantidade de trabalho necessária para produzi-lo. |
| Equilíbrio geral | Determinação simultânea de preços e quantidades em todos os mercados da economia, formalizado por Walras e provado por Arrow e Debreu. |

<div class="caption-obj" markdown>
**Tabela 1.3 — Conceitos-chave.**
</div>

---

## Exercícios

Os exercícios a seguir cobrem os principais temas do capítulo: a lógica da modelagem, a verificação de modelos, os pilares metodológicos da microeconomia e a evolução histórica da teoria do valor. Alguns exercícios são conceituais, outros envolvem cálculos — todos exigem que o leitor articule as ideias discutidas ao longo do texto. Os exercícios progridem em dificuldade: os primeiros são mais diretos, os últimos exigem raciocínio mais elaborado e cálculos mais extensos.

<a id="ex-1-1"></a>**Exercício 1.1.** Explique, usando a analogia do mapa, por que um modelo econômico que inclui todas as variáveis relevantes de uma economia real não seria necessariamente superior a um modelo mais simples. Em que sentido a simplificação pode ser uma virtude epistêmica?

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-1)

---

<a id="ex-1-2"></a>**Exercício 1.2.** Considere a afirmação: "O modelo de concorrência perfeita é inútil porque nenhum mercado real satisfaz todas as suas premissas." Avalie essa afirmação à luz da metodologia de Friedman (1953) e da distinção entre verificação direta e indireta de modelos.

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-2)

---

<a id="ex-1-3"></a>**Exercício 1.3.** Classifique cada uma das proposições abaixo como **positiva** ou **normativa** e justifique:

a) Um aumento de 10% no salário mínimo reduz o emprego formal em 2%.

b) O governo deveria aumentar o salário mínimo para reduzir a desigualdade.

c) A elasticidade-preço da demanda por gasolina no Brasil é de aproximadamente \(-0{,}3\) no curto prazo.

d) O preço da gasolina é injustamente alto no Brasil.

e) Políticas de transferência de renda aumentam o consumo das famílias beneficiárias.

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-3)

---

<a id="ex-1-4"></a>**Exercício 1.4.** Considere o modelo de maximização de lucro de uma firma competitiva com função de custo total \(CT(q) = 100 + 10q + q^2\).

a) Determine a função de custo marginal \(CMg(q)\).

b) Se o preço de mercado é \(P = 50\), encontre a quantidade ótima \(q^*\).

c) Verifique que a condição de segunda ordem é satisfeita.

d) Calcule o lucro máximo.

e) Identifique as variáveis exógenas e endógenas neste modelo.

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-4)

---

<a id="ex-1-5"></a>**Exercício 1.5.** O paradoxo da água e do diamante foi um dos grandes quebra-cabeças da economia clássica.

a) Enuncie o paradoxo.

b) Explique por que a teoria do valor-trabalho de Smith não consegue resolvê-lo satisfatoriamente.

c) Mostre como a revolução marginalista resolveu o paradoxo usando o conceito de utilidade marginal.

d) Discuta como Marshall integraria ambas as perspectivas (clássica e marginalista) em sua síntese neoclássica.

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-5)

---

<a id="ex-1-6"></a>**Exercício 1.6.** Dois economistas discordam sobre qual modelo usar para analisar o mercado de trabalho brasileiro. O Economista A propõe um modelo simples de oferta e demanda com salário mínimo (preço-piso). O Economista B propõe um modelo com informação assimétrica, busca por emprego (*search*) e heterogeneidade de trabalhadores.

a) Identifique pelo menos duas variáveis exógenas e duas endógenas em cada modelo.

b) Em que circunstância o modelo mais simples (A) pode ser preferível ao mais complexo (B)?

c) Relacione sua resposta à analogia do mapa da Seção 1.1: que "detalhes do território" o Modelo A omite e o Modelo B inclui?

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-6)

---

<a id="ex-1-7"></a>**Exercício 1.7.** Suponha que o governo brasileiro anuncia simultaneamente (i) um aumento na alíquota do ICMS sobre combustíveis e (ii) um programa de transferência de renda para famílias de baixa renda.

a) Explique por que é difícil avaliar o efeito isolado de cada medida sobre o consumo de gasolina sem usar a cláusula *ceteris paribus*.

b) Sugira um desenho de pesquisa empírica que aproximaria o *ceteris paribus* para isolar o efeito do aumento do ICMS sobre o consumo de gasolina. *(Dica: pense em variação regional ou temporal.)*

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-7)

---

<a id="ex-1-8"></a>**Exercício 1.8.** Considere o mercado de soja no Brasil, com as seguintes funções:

- Demanda: \(Q^d = 500 - 2P + 3Y - P_m\), onde \(Y\) é a renda e \(P_m\) é o preço do milho (substituto na ração animal).
- Oferta: \(Q^s = -100 + 4P - 2W\), onde \(W\) é o custo do fertilizante.

a) Identifique as variáveis exógenas e endógenas.

b) Encontre \(P^*\) e \(Q^*\) como funções dos parâmetros exógenos.

c) Se \(Y = 80\), \(P_m = 20\) e \(W = 30\), calcule \(P^*\) e \(Q^*\).

d) Calcule e interprete \(\partial P^* / \partial P_m\): o que acontece com o preço da soja quando o preço do milho sobe?

e) Calcule e interprete \(\partial P^* / \partial W\): o que acontece com o preço da soja quando o custo do fertilizante aumenta?

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-8)

---

<a id="ex-1-9"></a>**Exercício 1.9.** O CADE (Conselho Administrativo de Defesa Econômica) utiliza modelos econômicos para avaliar fusões e aquisições. Considere uma fusão hipotética entre as duas maiores redes de supermercados de uma cidade média brasileira.

a) Qual modelo de estrutura de mercado seria mais apropriado para analisar essa fusão: concorrência perfeita, oligopólio ou monopólio? Justifique.

b) Liste três variáveis que o CADE deveria considerar como exógenas e três como endógenas na análise dos efeitos da fusão.

c) A afirmação "A fusão elevará o preço dos alimentos em 8%" é positiva ou normativa? E "A fusão não deve ser aprovada"?

d) Que tipo de evidência empírica — abordagem direta ou indireta, nos termos da Seção 1.2 — o CADE poderia usar para testar as previsões do modelo sobre os efeitos da fusão?

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-9)

---

<a id="ex-1-10"></a>**Exercício 1.10.** Considere dois mercados inter-relacionados: o mercado de etanol e o mercado de açúcar no Brasil. A cana-de-açúcar é insumo para ambos, de modo que os dois mercados estão conectados pelo lado da oferta. Suponha:

- Demanda de etanol: \(Q_e^d = 300 - 5P_e\)
- Demanda de açúcar: \(Q_a^d = 200 - 3P_a\)
- A usina dispõe de uma oferta total de cana equivalente a \(\bar{S}\) unidades de produto e deve alocar entre etanol (\(Q_e^s\)) e açúcar (\(Q_a^s\)), com \(Q_e^s + Q_a^s = \bar{S}\). A usina maximiza sua receita total \(P_e Q_e^s + P_a Q_a^s\) sujeita a essa restrição.

a) Mostre que, no ótimo da usina, a alocação exige \(P_e = P_a\). *(Dica: monte o lagrangeano.)*

b) Usando a condição de equilíbrio (\(Q^d = Q^s\) em cada mercado) e o resultado de (a), encontre o preço de equilíbrio como função de \(\bar{S}\).

c) Se \(\bar{S} = 280\), calcule os preços e quantidades de equilíbrio em ambos os mercados.

d) Realize estática comparativa: calcule \(\partial P^* / \partial \bar{S}\) e interprete economicamente. O que acontece com os preços quando uma supersafra de cana aumenta \(\bar{S}\)?

[:material-arrow-right: Ver solução](../solucoes/cap01.md#ex-1-10)

---

## Vem, ANPEC!

??? question "ANPEC 2019 — Questão 05"
    Com relação aos fundamentos da Microeconomia, julgue como verdadeiros ou falsos os itens a seguir:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Os preços relativos \(P_Y/P_X\) livres de mercado dos bens \(Y\) e \(X\) refletem as taxas às quais a sociedade está disposta a sacrificar o bem \(Y\) em troca de uma unidade marginal de \(X\). |
    | 1 | No curto prazo, um fator de produção é fixo apenas por razões tecnológicas, nunca porque seja simplesmente mais barato mantê-lo fixo do que ajustá-lo às novas condições de mercado. |
    | 2 | Na ausência de externalidades marginais, os custos marginais privados podem ser interpretados como o valor que a sociedade atribui aos recursos deslocados da economia para a produção da unidade marginal. |
    | 3 | Num mercado competitivo, com custos marginais constantes e capacidade máxima limitada, se a demanda agregada é grande o suficiente para fazer a firma atingir sua capacidade máxima, então o preço de equilíbrio é o custo marginal da última unidade acrescido do preço-sombra da capacidade máxima. |
    | 4 | Suponha que o preço de um bem \(X\) cai marginalmente de \(P_0\) para \(P_1\). Ao se defrontar com o preço marginalmente mais baixo, o consumidor realiza uma economia de gastos relativamente à quantidade que usualmente comprava ao preço inicial. Se ele usa uma parte dessa economia para comprar mais unidades desse bem \(X\), mas aproveita outra parte dela para comprar outros bens, então, para esse consumidor, a demanda pelo bem \(X\) é preço-elástica. |

    ??? success "Gabarito"
        **Respostas: V F V V F**

        **Justificativa por item:**

        - **Item 0 — V:** Em um mercado competitivo sem distorções, os preços relativos refletem tanto a taxa marginal de substituição dos consumidores quanto a taxa marginal de transformação da economia. O preço relativo \(P_Y/P_X\) indica quantas unidades de \(Y\) a sociedade precisa sacrificar para obter uma unidade adicional de \(X\), refletindo o custo de oportunidade social.
        - **Item 1 — F:** Um fator pode ser fixo no curto prazo não apenas por impossibilidade tecnológica de ajuste, mas também porque os custos de ajustamento tornam mais barato mantê-lo fixo. Por exemplo, uma firma pode manter maquinário ocioso porque o custo de vendê-lo e readquiri-lo excede o custo de mantê-lo parado.
        - **Item 2 — V:** Na ausência de externalidades, o custo marginal privado coincide com o custo marginal social. Assim, o \(CMg\) privado pode ser interpretado como o valor que a sociedade atribui aos recursos deslocados de outros usos para a produção da unidade marginal — é o custo de oportunidade social.
        - **Item 3 — V:** Quando a firma opera na capacidade máxima, a restrição de capacidade se torna ativa. O preço de equilíbrio deve compensar não apenas o custo marginal de produção, mas também o valor-sombra (*shadow price*) da capacidade escassa. Esse preço-sombra mede o valor marginal de relaxar a restrição de capacidade em uma unidade.
        - **Item 4 — F:** Se o consumidor usa apenas *parte* da economia para comprar mais de \(X\) e desvia o restante para outros bens, então o gasto total com \(X\) *diminui* após a queda de preço. Quando o gasto total cai com a redução do preço, a demanda é **inelástica** (\(|\varepsilon| < 1\)), não elástica.

??? question "ANPEC 2024 — Questão 05"
    Com base na lei de oferta e demanda e na determinação dos preços no mercado, julgue as afirmativas abaixo como verdadeiras ou falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | No centro urbano de uma grande cidade não se permite, por razões arquitetônicas e políticas, a expansão da quantidade de imóveis residenciais. Considere a seguinte afirmação: "O aluguel de mercado do imóvel não é um pagamento para produção de imóveis (primeiro ponto); mas é um pagamento para obter o uso do imóvel (segundo ponto)". Pode-se afirmar que, do primeiro ponto de vista, o aluguel é uma renda pura e, do segundo ponto de vista, é um custo. |
    | 1 | A decisão de manter alguma capacidade ociosa nunca é uma decisão racional viável da empresa para lidar com a incerteza quanto a variações aleatórias de demanda. |
    | 2 | O preço-sombra da capacidade de produção máxima que a firma acrescenta ao custo marginal é uma medida monetária do valor que o mercado, na figura dos demandantes, está disposto a pagar pela expansão da capacidade máxima em uma unidade marginal. |
    | 3 | Algumas empresas anunciam que seus produtos são mais baratos que os dos concorrentes porque elas compram diretamente dos fornecedores, eliminando integralmente o papel dos intermediários. Esse tipo de propaganda pressupõe que a intermediação é sem custos. |
    | 4 | Custos quase-fixos não desaparecem no longo prazo. |

    ??? success "Gabarito"
        **Respostas: V F V F V**

        **Justificativa por item:**

        - **Item 0 — V:** Quando a oferta de imóveis é perfeitamente inelástica (fixa), o aluguel é inteiramente determinado pela demanda e constitui uma **renda pura** do ponto de vista da oferta — o pagamento não induz produção adicional. Do ponto de vista do demandante, porém, o aluguel é um custo necessário para obter o uso do imóvel. Essa dualidade remete à distinção ricardiana entre renda e custo (Seção 1.5).
        - **Item 1 — F:** Manter capacidade ociosa pode ser perfeitamente racional quando a demanda é incerta: a firma mantém uma reserva de capacidade para atender picos de demanda sem perder clientes. Trata-se de uma decisão de otimização sob incerteza.
        - **Item 2 — V:** O preço-sombra de uma restrição de capacidade mede o aumento no lucro (ou, equivalentemente, o valor para o mercado) que resultaria de relaxar a restrição em uma unidade marginal. É o valor que os demandantes estão dispostos a pagar acima do custo marginal de produção pela expansão da capacidade.
        - **Item 3 — F:** A propaganda que alega preços mais baixos pela eliminação de intermediários pressupõe o contrário: que a intermediação **tem custos** (margens, logística) repassados ao consumidor. Se a intermediação fosse sem custos, eliminá-la não reduziria o preço. O que a propaganda ignora é que intermediários frequentemente geram valor real (informação, gestão de estoques, distribuição).
        - **Item 4 — V:** Custos quase-fixos são custos que independem do nível de produção mas que só existem quando a firma produz (\(q > 0\)). Diferentemente dos custos fixos tradicionais (como aluguéis contratuais), os custos quase-fixos persistem no longo prazo: sempre que a firma decide operar, ela os incorre, independentemente do horizonte temporal. Exemplos incluem custos mínimos de aquecimento de um forno industrial ou equipe mínima de operação.
