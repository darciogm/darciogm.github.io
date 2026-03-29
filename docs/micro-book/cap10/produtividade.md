# 10.1 O Trabalhador Extra: Herói ou Peso Morto?

### A função de produção

Duas fábricas de cerveja, mesma quantidade de cevada e de funcionários — e uma produz o dobro da outra. Mágica? Não: **tecnologia**. A diferença está no conjunto de conhecimentos e processos que determinam como insumos são combinados para gerar produto. A função de produção é a representação matemática dessa "receita secreta".

A teoria da produção ocupa na análise da firma o mesmo papel que a teoria das preferências ocupa na análise do consumidor: ela descreve o que é *tecnologicamente possível*, sem ainda incorporar considerações de preço ou custo. Assim como no Capítulo 2 aprendemos as ferramentas matemáticas de diferenciação e otimização com restrições, aqui as mobilizamos para caracterizar como o produto reage a variações nos insumos. E assim como no Capítulo 4 a função de utilidade descrevia as preferências do consumidor, a função de produção descreve as possibilidades tecnológicas da firma — os capítulos seguintes (11 e 12) irão adicionar os preços dos fatores para derivar custos e a oferta.

É útil pensar na função de produção literalmente como uma receita de cozinha. Dois cozinheiros na mesma cozinha produzem quase o dobro de um; três, talvez 2,5 vezes; mas enfie dez cozinheiros numa cozinha de 10 m² e o resultado é caos, cotovelos batendo e ninguém encontrando a espátula — rendimentos marginais decrescentes encarnados em forma de brigadeiro queimado. A função de produção captura exatamente essa lógica: para cada combinação de insumos, ela indica o máximo de produto que pode ser obtido. Esse *máximo* é a chave — a função de produção descreve a **fronteira** das possibilidades produtivas, não qualquer combinação ineficiente abaixo dela. Na prática, a econometria de produção (um campo ativo desde os trabalhos de Solow em 1957 e dos estudos de Griliches sobre a agricultura americana na década de 1960) busca estimar esses parâmetros tecnológicos a partir de dados observacionais, separando a eficiência técnica da firma da tecnologia do setor.

!!! definition "Função de produção"
    A **função de produção** \(q = f(K, L)\) descreve a quantidade máxima de produto \(q\) que pode ser obtida a partir de quantidades de capital \(K\) e trabalho \(L\), dada a tecnologia disponível.

Quando um dos insumos é mantido fixo — por exemplo, o capital no curto prazo —, obtemos a **função de produção de curto prazo**:

\[
q = f(\bar{K}, L) \equiv \mathrm{TP}(L)
\label{eq:10.1} \tag{10.1}
\]

onde \(\mathrm{TP}(L)\) é o produto total do trabalho. Essa distinção entre curto e longo prazo será fundamental para a análise de custos no próximo capítulo.

### Produto marginal e produto médio

Definida a função de produção, a pergunta natural é: quanto produto adicional se obtém ao empregar mais uma unidade de trabalho? E como a produtividade por trabalhador evolui à medida que a firma cresce? Essas perguntas são respondidas por duas medidas essenciais de produtividade — o produto marginal e o produto médio —, cuja relação é uma das mais frequentemente cobradas em provas da ANPEC.

!!! definition "Produto marginal"
    O **produto marginal do trabalho** é a variação do produto total decorrente de uma unidade adicional de trabalho, mantido o capital constante:

    \[
    \mathrm{PMg}_L = \frac{\partial f(K, L)}{\partial L}
    \label{eq:10.2} \tag{10.2}
    \]

    Analogamente, o **produto marginal do capital** é:

    \[
    \mathrm{PMg}_K = \frac{\partial f(K, L)}{\partial K}
    \]

O **produto médio do trabalho** é definido como:

\[
\mathrm{PMe}_L = \frac{f(K, L)}{L}
\label{eq:10.3} \tag{10.3}
\]

A relação entre produto marginal $\eqref{eq:10.2}$ e produto médio $\eqref{eq:10.3}$ é análoga àquela entre custo marginal e custo médio: quando \(\mathrm{PMg}_L > \mathrm{PMe}_L\), o produto médio é crescente; quando \(\mathrm{PMg}_L < \mathrm{PMe}_L\), o produto médio é decrescente; e quando \(\mathrm{PMg}_L = \mathrm{PMe}_L\), o produto médio atinge seu máximo.

!!! idea "Intuição Econômica"
    **Em uma frase:** Se o trabalhador adicional produz mais do que a média dos anteriores, ele "puxa" a média para cima; se produz menos, puxa para baixo.

    **Pense assim:** Numa partida de futebol, se o jogador que entra no segundo tempo faz mais gols que a média do time até ali, a média de gols por jogador sobe. Se ele erra tudo, a média cai. O produto marginal é o "gol do substituto" — e ele determina a direção do produto médio.

    **Por que isso importa:** Essa relação é a base para entender por que firmas contratam até o ponto em que o valor do produto marginal iguala o salário — e por que o produto médio é uma medida enganosa de produtividade quando usada isoladamente.

### Lei dos rendimentos marginais decrescentes

A relação entre produto marginal e produto médio revela um padrão importante: à medida que a firma emprega mais e mais trabalhadores com capital fixo, a produtividade marginal de cada trabalhador adicional tende a cair. Esse padrão é tão recorrente na prática que recebeu o estatuto de "lei" — embora, como veremos, trate-se de uma regularidade empírica, não de uma necessidade lógica.

!!! theorem "Lei dos rendimentos marginais decrescentes"
    Se um insumo variável é adicionado a um insumo fixo, a partir de certo ponto o produto marginal do insumo variável torna-se decrescente. Formalmente, existe \(L^*\) tal que para \(L > L^*\):

    \[
    \frac{\partial^2 f(\bar{K}, L)}{\partial L^2} < 0
    \label{eq:10.4} \tag{10.4}
    \]

É crucial observar que esta "lei" é uma regularidade empírica, não um resultado lógico necessário. Ela se aplica ao **curto prazo**, quando pelo menos um fator é fixo. Não deve ser confundida com rendimentos decrescentes de escala, que dizem respeito à variação simultânea de todos os insumos — uma distinção frequentemente cobrada em provas da ANPEC.

!!! idea "Intuição Econômica"
    **Em uma frase:** O 10º trabalhador produz menos que o 1º não porque é menos capaz, mas porque tem menos capital com que trabalhar.

    **Pense assim:** Em uma cozinha de restaurante com quatro bocas de fogão, o primeiro cozinheiro é muito produtivo. O segundo ajuda bastante. O terceiro já começa a esbarrar nos outros. O quarto fica esperando uma boca liberar. O fogão não mudou — é o trabalhador extra que rende menos. Numa linha de montagem com 5 máquinas de solda, o décimo operário fica ocioso boa parte do turno aguardando uma máquina liberar. O problema não é o trabalhador — é a proporção de máquinas por trabalhador, que cai com cada contratação. Matematicamente: \(\partial^2 f/\partial L^2 < 0\).

    **Por que isso importa:** Essa intuição explica tanto por que simplesmente contratar mais gente não resolve o problema de produtividade da economia brasileira quanto o retorno elevado à mecanização: cada máquina adicional "libera" o potencial de múltiplos trabalhadores. A Embrapa documentou esse efeito na agricultura do Cerrado, onde a introdução de maquinário pesado elevou substancialmente o produto por trabalhador mesmo sem aumentar o número de trabalhadores.

!!! example "Exemplo: Rendimentos marginais na cafeicultura mineira"
    Considere uma fazenda de café em Minas Gerais com área fixa de 50 hectares. Com poucos trabalhadores, cada contratação adicional eleva significativamente a colheita — há muita terra por trabalhador. À medida que se adicionam trabalhadores, porém, eles passam a competir pelas mesmas fileiras de café, e o ganho marginal de cada um diminui. Em termos formais, o produto marginal do trabalho \(\mathrm{PMg}_L\) decresce com \(L\) para \(\bar{K}\) (terra) fixo. Esse padrão é amplamente documentado na agricultura brasileira, onde a mecanização da colheita (que efetivamente aumenta \(\bar{K}\)) deslocou a curva de produto marginal para cima, mitigando o efeito dos rendimentos decrescentes.

!!! box-brasil "Box Brasil: Produtividade do trabalho na indústria brasileira"

    A produtividade do trabalho — medida como valor adicionado por hora trabalhada — é uma aplicação direta do conceito de produto médio do trabalho (\(\mathrm{PMe}_L\)). Dados das Contas Nacionais do IBGE e da PNAD Contínua, compilados pelo FGV/IBRE, mostram que a produtividade por hora trabalhada no Brasil cresceu em média **+1,6% ao ano entre 2000 e 2010**, mas desacelerou para apenas **+0,3% ao ano entre 2010 e 2023** — e a média de longo prazo (1981–2023) é de modestos **+0,5% ao ano**.

    A teoria da produção ajuda a explicar esse padrão. Com investimento em capital (\(K\)) crescendo lentamente, o produto marginal e o produto médio do trabalho avançam de forma modesta. A **intensidade de capital** (\(K/L\)) varia enormemente entre setores: a PIA/IBGE mostra que setores intensivos em capital (como refino de petróleo e extração mineral) apresentam VTI por trabalhador ordens de grandeza acima de setores intensivos em trabalho (como confecções e calçados). Essa dispersão setorial é uma consequência direta da função de produção: para dado nível tecnológico, mais capital por trabalhador implica maior produto médio do trabalho.
