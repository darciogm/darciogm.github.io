# Capítulo 11 — Por Que Nada É de Graça

Toda dona de padaria sabe uma coisa que muitos alunos de economia demoram a internalizar: não basta saber *fazer* — é preciso saber *quanto custa* fazer. No capítulo anterior, mapeamos a tecnologia da firma: isoquantas, rendimentos de escala, TMST. Era o cardápio das possibilidades. Agora vem a conta. A teoria dos custos traduz essas possibilidades tecnológicas em cifras — e é nessa tradução que decisões reais de produção acontecem.

A distinção entre custos econômicos e contábeis, o conceito de custo de oportunidade, a relação entre minimização de custos e maximização de lucro, o papel das curvas de custo de curto e longo prazo e o elegante Lema de Shephard — que conecta a função custo às demandas condicionadas por insumos — são os temas centrais deste capítulo. Há uma simetria profunda com a teoria do consumidor: da mesma forma que o Capítulo 4 estudou a minimização de gasto para atingir dado nível de utilidade, aqui estudamos a minimização de custo para atingir dado nível de produto. Essa dualidade não é acidental — ela reflete a estrutura matemática comum dos dois problemas de otimização, e os resultados de um iluminam o outro.

A compreensão da estrutura de custos é indispensável para a análise da oferta, da formação de preços e da organização industrial. Nos Capítulos 12 e 13, a função custo derivada aqui será o ponto de partida para determinar a oferta da firma competitiva e o equilíbrio de mercado. No contexto brasileiro, onde o chamado "custo Brasil" — que engloba carga tributária, deficiências logísticas e burocracia — pesa significativamente sobre a competitividade das empresas, essa análise ganha relevância adicional e urgente. Da soja exportada pelo Porto de Santos ao café especial de Minas Gerais, da montadora em São Bernardo do Campo à startup de tecnologia em Florianópolis, a estrutura de custos determina quais firmas sobrevivem, quais crescem e quais saem do mercado.

Do ponto de vista histórico, a formalização moderna da teoria dos custos deve muito a dois contributos seminais. Jacob Viner (1931), em seu artigo "Cost Curves and Supply Curves", foi o primeiro a demonstrar rigorosamente a relação de envoltória entre curvas de custo de curto e longo prazo — resultado que ele descobriu ao corrigir um erro de seu assistente gráfico, que insistia em desenhar as curvas de custo médio de curto prazo cruzando a envoltória de longo prazo. Ronald Shephard (1953), em seu livro *Cost and Production Functions*, estabeleceu o lema que leva seu nome e que conecta derivadas da função custo às demandas por insumos — ferramenta hoje indispensável na estimação empírica de tecnologias de produção.

---

## 11.1 Definições de Custos

### Custo econômico versus custo contábil

!!! definition "Custo econômico"
    O **custo econômico** (ou custo de oportunidade) de utilizar um recurso na produção é o valor desse recurso em seu **melhor uso alternativo**. Inclui tanto os custos explícitos (pagamentos efetivos) quanto os custos implícitos (remuneração do capital próprio, salário do proprietário, etc.).

!!! definition "Custo contábil"
    O **custo contábil** registra apenas os desembolsos efetivamente realizados — custos explícitos. Não considera o custo de oportunidade dos recursos próprios da firma.

Por que essa distinção importa? Porque o contador e o economista podem olhar para o mesmo balanço e chegar a conclusões opostas sobre a saúde financeira de uma empresa. O lucro contábil pode ser positivo enquanto o lucro econômico é negativo — o que significa que a empresa está destruindo valor, pois seus recursos renderiam mais em outro uso. A diferença entre lucro econômico e lucro contábil é dada pelos custos implícitos:

\[
\pi_{\text{econômico}} = \text{Receita total} - \text{Custos explícitos} - \text{Custos implícitos}
\]

\[
\pi_{\text{contábil}} = \text{Receita total} - \text{Custos explícitos}
\]

Quando o lucro econômico é zero, a firma obtém o **lucro normal** — isto é, remunera todos os fatores de produção, inclusive os próprios, pelo seu custo de oportunidade. Lucro econômico positivo indica **lucro supranormal** (ou econômico puro).

!!! idea "Intuição Econômica"
    **Em uma frase:** O custo de oportunidade é o valor daquilo que você deixou de fazer ao escolher o que fez.

    **Pense assim:** Um engenheiro que larga o emprego de R$ 15.000/mês para abrir uma hamburgueria precisa contar esse salário perdido como custo do negócio. Se a hamburgueria lucra R$ 12.000 por mês no papel, na verdade ele está "perdendo" R$ 3.000 em relação ao que poderia ganhar — o lucro econômico é negativo.

    **Por que isso importa:** Ignorar o custo de oportunidade é o erro mais comum de pequenos empreendedores no Brasil e explica por que muitos negócios parecem lucrativos no extrato bancário, mas não compensam economicamente.

!!! tip "Exemplo: custo de oportunidade na agricultura brasileira"
    Um produtor rural no Cerrado possui 500 hectares de terra própria e os utiliza para plantar soja. O custo contábil inclui sementes, fertilizantes, mão de obra e depreciação de máquinas. Porém, o custo econômico deve incluir também o **arrendamento** que ele deixa de receber ao não alugar a terra — que, segundo dados da [CONAB](https://www.conab.gov.br), pode variar de 8 a 15 sacas de soja por hectare/ano conforme a região. Se o arrendamento médio é de 12 sacas/ha e a saca vale R$ 120, o custo implícito da terra é de R$ 720.000/ano — valor que o lucro contábil ignora completamente.

### Custos irrecuperáveis (sunk costs)

A distinção entre custo econômico e custo contábil não é a única armadilha conceitual na análise de custos. Outra categoria merece atenção especial — não por ser relevante para as decisões futuras da firma, mas justamente por *não* dever sê-lo. Trata-se dos custos irrecuperáveis, cuja compreensão é essencial para a tomada de decisão racional.

!!! note "Custos irrecuperáveis"
    **Custos irrecuperáveis** (*sunk costs*) são despesas já realizadas e que não podem ser recuperadas. Do ponto de vista da tomada de decisão racional, custos irrecuperáveis **não devem influenciar** decisões correntes e futuras — apenas custos evitáveis (prospectivos) são relevantes. Contudo, a economia comportamental documenta extensamente o viés dos custos irrecuperáveis (*sunk cost fallacy*), pelo qual agentes continuam investindo em projetos fracassados para "justificar" gastos passados.

A racionalidade econômica tem uma regra clara: ao tomar uma decisão, considere apenas os custos e benefícios *futuros* — aquilo que ainda pode ser afetado pela decisão. O dinheiro já gasto, o tempo já perdido, o investimento já realizado: tudo isso é água passada para fins de otimização. A dificuldade é que, psicologicamente, essa regra é difícil de seguir. Estudantes que pagam R$ 500 por um curso e depois percebem que não está servindo continuam frequentando para "não desperdiçar" a mensalidade — o custo irrecuperável os mantém presos a uma escolha ruim. Governos que investem bilhões em projetos de infraestrutura fracassados continuam alocando recursos adicionais para "salvar" o investimento anterior, em vez de encerrar e realocar os recursos para usos mais produtivos. O Box Mundo 11.3 sobre o Concorde ilustra esse mecanismo em escala histórica.

!!! idea "Intuição Econômica"
    **Em uma frase:** Dinheiro já gasto não deve influenciar decisões futuras — só o que ainda pode mudar importa para escolhas racionais.

    **Pense assim:** Você comprou um ingresso de R$ 200 para um show e, no dia, está com febre. A pergunta racional não é "já paguei R$ 200" — essa quantia se foi independentemente de você ir ou não. A pergunta certa é: "Dado como estou agora, ir ao show vai me deixar melhor ou pior?" O custo irrecuperável não entra nessa conta.

    **Por que isso importa:** No mundo corporativo e governamental brasileiro, decisões sobre continuidade de projetos frequentemente são contaminadas pelo viés de sunk cost. Projetos de obras públicas com custo-benefício negativo continuam sendo financiados simplesmente porque "já se investiu muito". Reconhecer e ignorar custos irrecuperáveis é uma das habilidades mais valiosas — e mais difíceis — do gestor econômico racional.

??? exercicio-resolvido "Exercício Resolvido 11.1 — Custo econômico versus custo contábil"

    **Enunciado.** Uma confeitaria artesanal em Belo Horizonte tem os seguintes dados anuais: receita de R$ 480.000; custos com ingredientes de R$ 120.000; aluguel de R$ 60.000; salários de funcionários de R$ 96.000; retirada da proprietária (*pró-labore*) de R$ 48.000. A proprietária possui equipamentos avaliados em R$ 200.000 (que poderiam render 10% a.a. se aplicados) e tem uma oferta de emprego como *chef* em um restaurante com salário de R$ 84.000/ano.

    (a) Calcule o lucro contábil.

    (b) Calcule o lucro econômico.

    (c) A proprietária deve manter a confeitaria?

    **Solução.**

    **(a)** Custos contábeis (explícitos) = R$ 120.000 + R$ 60.000 + R$ 96.000 + R$ 48.000 = R$ 324.000.

    \[
    \pi_{\text{contábil}} = 480.000 - 324.000 = \text{R\$}\; 156.000
    \]

    **(b)** Custos implícitos:

    - Custo de oportunidade do trabalho da proprietária: R$ 84.000 − R$ 48.000 = R$ 36.000 (diferença entre o que ela poderia ganhar e o pró-labore que já se paga).
    - Custo de oportunidade do capital: 10% × R$ 200.000 = R$ 20.000.

    Total de custos implícitos = R$ 56.000.

    \[
    \pi_{\text{econômico}} = 480.000 - 324.000 - 56.000 = \text{R\$}\; 100.000
    \]

    **(c)** Sim. O lucro econômico é positivo (R$ 100.000 > 0), o que significa que a confeitaria remunera todos os fatores — inclusive o tempo e o capital da proprietária — acima de seu custo de oportunidade. Se o lucro econômico fosse zero, ela seria indiferente; se fosse negativo, deveria considerar fechar.

---

## 11.2 Maximização de Lucro e Minimização de Custos

Maximizar lucro e minimizar custo parecem gêmeos idênticos — dois jeitos de dizer a mesma coisa. Quase. A relação entre eles é como a de um motorista de aplicativo e o Waze: o Waze encontra o caminho mais curto para qualquer destino, mas ainda é o motorista quem decide *para onde* ir. Há uma assimetria sutil aqui, e vale a pena desembalá-la com cuidado.

A firma maximizadora de lucro resolve:

\[
\max_{K, L} \; \pi = p \cdot f(K, L) - wL - vK
\label{eq:11.1} \tag{11.1}
\]

onde \(p\) é o preço do produto, \(w\) é o salário e \(v\) é o custo de aluguel do capital.

Um resultado central é que a **maximização de lucro implica minimização de custos**: se a firma escolhe quantidades de insumos que maximizam o lucro, então, para o nível de produto resultante, ela necessariamente minimiza o custo de produção. A demonstração é direta por contradição: se a firma não estivesse minimizando custos, existiria uma combinação alternativa de insumos que produzisse a mesma quantidade a custo menor — o que aumentaria o lucro, contradizendo a hipótese de que a escolha inicial maximizava o lucro. Logo, maximizar lucro implica logicamente minimizar custos.

A recíproca, contudo, não é verdadeira — minimizar custos é condição necessária, mas não suficiente, para maximizar lucro, pois a firma ainda precisa escolher o nível ótimo de produção. Uma firma pode minimizar perfeitamente seus custos para cada quantidade produzida e ainda assim não estar maximizando o lucro, caso esteja produzindo a quantidade errada. Isso justifica a decomposição do problema de maximização de lucro em duas etapas que é a estratégia analítica dos próximos capítulos: primeiro, determine o custo mínimo para cada nível de produto (Capítulo 11); depois, escolha o nível de produto que maximiza o lucro dado o custo mínimo (Capítulos 12–13).

!!! theorem "Proposição: Maximização de lucro implica minimização de custos"
    Se \((K^*, L^*)\) resolve o problema de maximização de lucro \(\max_{K,L} \; pf(K,L) - wL - vK\) com produto \(q^* = f(K^*, L^*)\), então \((K^*, L^*)\) também resolve o problema de minimização de custos para o nível de produto \(q^*\):

    \[
    \min_{K, L} \; wL + vK \quad \text{s.a.} \quad f(K, L) \geq q^*
    \]

Essa proposição tem implicação prática importante. Ela significa que, ao observar uma firma que maximiza lucro, podemos usar toda a teoria da minimização de custos para caracterizar seu comportamento em relação aos insumos — sem precisar resolver diretamente o problema de maximização de lucro. Essa é a lógica por trás da abordagem em dois estágios que percorre toda a microeconomia da firma.

---

## 11.3 Minimização de Custos: Isocusto e Tangência

Hora de arregaçar as mangas e resolver o problema de verdade. A firma quer produzir uma quantidade fixa de produto gastando o mínimo possível — como quem monta a cesta do mês no supermercado tentando não estourar o orçamento, só que com capital e trabalho no carrinho. Se você sobreviveu à minimização de gasto do consumidor no Capítulo 4, vai sentir um *déjà vu* reconfortante: a estrutura é a mesma, só mudam os nomes. Isoquanta no lugar de curva de indiferença, isocusto no lugar de reta orçamentária — dualidade pura.

No Capítulo 4, o consumidor minimizava o gasto \(wl + pm\) sujeito a atingir a curva de indiferença \(u(x_1, x_2) = \bar{u}\). Aqui, a firma minimiza o custo \(wL + vK\) sujeito a atingir a isoquanta \(f(K,L) = q_0\). As variáveis mudam de nome — utilidade vira quantidade produzida, curva de indiferença vira isoquanta, reta orçamentária vira reta de isocusto —, mas a estrutura matemática e a intuição econômica são idênticas. As demandas hicksianas de bens de consumo correspondem às demandas condicionadas por insumos; a função gasto corresponde à função custo; a identidade de Roy corresponde ao Lema de Shephard. Essa correspondência estrutural é uma das elegâncias da teoria microeconômica moderna.

<iframe src="../graficos/cap11/minimizacao-custo.html" title="Figura 11.1 — Minimização de custo" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 11.1 — Minimização de custo.** A isoquanta (azul) e a reta de isocusto (vermelha) tangenciam-se no ponto ótimo. Ajuste \(w\), \(v\), \(q\) e \(\alpha\) para observar como a combinação ótima de insumos e o custo mínimo se alteram.
</div>

### O problema de minimização de custos

O problema dual ao da maximização do produto sujeito a um orçamento é a **minimização do custo** de atingir um dado nível de produto:

\[
\min_{K, L} \; C = wL + vK \quad \text{s.a.} \quad f(K, L) = q_0
\label{eq:11.2} \tag{11.2}
\]

A lógica é análoga à do consumidor que minimiza o gasto para atingir um dado nível de utilidade (Capítulo 5). Aqui, a isoquanta substitui a curva de indiferença, e a reta de isocusto substitui a reta orçamentária.

### A reta de isocusto

A **reta de isocusto** representa todas as combinações de insumos que geram o mesmo custo total \(C_0\):

\[
C_0 = wL + vK \implies K = \frac{C_0}{v} - \frac{w}{v}L
\]

A inclinação da isocusto é \(-w/v\), a razão dos preços dos insumos.

### Condição de tangência

Pelo método de Lagrange, a condição de primeira ordem para a minimização de custos é:

\[
\mathcal{L} = wL + vK + \lambda[q_0 - f(K, L)]
\]

\[
\frac{\partial \mathcal{L}}{\partial L} = w - \lambda f_L = 0 \implies \lambda = \frac{w}{f_L}
\]

\[
\frac{\partial \mathcal{L}}{\partial K} = v - \lambda f_K = 0 \implies \lambda = \frac{v}{f_K}
\]

Igualando:

\[
\frac{w}{f_L} = \frac{v}{f_K} \implies \frac{f_L}{f_K} = \frac{w}{v} \implies \mathrm{TMST}_{L,K} = \frac{w}{v}
\label{eq:11.3} \tag{11.3}
\]

A equação $\eqref{eq:11.3}$ tem uma interpretação econômica elegante e direta: no ótimo, a taxa à qual a firma *pode* substituir capital por trabalho sem perder produção (a TMST) deve igualar a taxa à qual o mercado *permite* essa substituição (a razão de preços \(w/v\)). Se a TMST fosse maior que \(w/v\), a firma poderia reduzir custos usando mais trabalho e menos capital; se fosse menor, o ajuste inverso seria vantajoso.

!!! theorem "Condição de minimização de custos"
    No ótimo, a **TMST** (inclinação da isoquanta) iguala a **razão dos preços dos insumos** (inclinação da isocusto):

    \[
    \mathrm{TMST}_{L,K} = \frac{w}{v}
    \]

    Equivalentemente, o produto marginal por unidade monetária gasta deve ser igual para todos os insumos:

    \[
    \frac{f_L}{w} = \frac{f_K}{v}
    \label{eq:11.4} \tag{11.4}
    \]

### Demandas condicionadas por insumos

A condição de tangência nos diz *como* os insumos devem ser combinados no ótimo, mas não *quanto* de cada insumo é necessário. Para isso, precisamos resolver simultaneamente a condição de tangência e a restrição tecnológica \(f(K, L) = q_0\). O resultado são as **demandas condicionadas** por insumos.

Resolvendo as condições de primeira ordem junto com a restrição \(f(K, L) = q_0\), obtemos as **demandas condicionadas** (ou demandas hicksianas na produção):

\[
L^c = L^c(w, v, q), \qquad K^c = K^c(w, v, q)
\label{eq:11.5} \tag{11.5}
\]

Estas funções expressam as quantidades ótimas de cada insumo como funções dos preços dos insumos e do nível de produto desejado. O adjetivo "condicionado" refere-se ao condicionamento sobre o nível de produto: diferentemente das demandas por insumos irrestrita (que resultam da maximização direta de lucro), as demandas condicionadas tomam \(q\) como dado e resolvem o problema de minimização de custos. Essa distinção é crucial: a demanda condicional por trabalho pode *aumentar* quando o salário sobe, se a firma também ajusta o capital — isso não é paradoxo, é consequência de estar condicionando sobre \(q\).

Uma propriedade importante das demandas condicionadas, imediatamente derivada do Capítulo 10, é que elas são homogêneas de grau zero nos preços dos insumos: \(L^c(tw, tv, q) = L^c(w, v, q)\). Se todos os preços dos insumos dobram, a combinação ótima de insumos não muda — apenas o custo mínimo dobra. Isso é consistente com a homogeneidade de grau 1 da função custo nos preços, que derivaremos na seção seguinte.

??? exercicio-resolvido "Exercício Resolvido 11.2 — Minimização de custos e Lema de Shephard com Cobb-Douglas"

    **Enunciado.** Uma firma tem função de produção \(q = K^{1/3}L^{2/3}\) e enfrenta preços de insumos \(w = 8\) e \(v = 2\).

    (a) Derive as demandas condicionadas por insumos.

    (b) Obtenha a função custo.

    (c) Verifique o Lema de Shephard.

    (d) Calcule o custo total, o custo médio e o custo marginal para \(q = 10\).

    **Solução.**

    **(a)** Com \(\alpha = 1/3\) e \(\beta = 2/3\) (\(\alpha + \beta = 1\), retornos constantes), a condição de tangência é:

    \[
    \frac{\alpha}{\beta} \cdot \frac{L}{K} = \frac{v}{w} \implies \frac{1}{2} \cdot \frac{L}{K} = \frac{2}{8} = \frac{1}{4} \implies L = \frac{K}{2}
    \]

    Substituindo na restrição \(K^{1/3}L^{2/3} = q\):

    \[
    K^{1/3} \left(\frac{K}{2}\right)^{2/3} = q \implies \frac{K}{2^{2/3}} = q \implies K^c = 2^{2/3} q
    \]

    \[
    L^c = \frac{K^c}{2} = \frac{2^{2/3} q}{2} = 2^{-1/3} q
    \]

    **(b)** Função custo:

    \[
    C = vK^c + wL^c = 2 \cdot 2^{2/3} q + 8 \cdot 2^{-1/3} q = 2^{5/3} q + 2^{8/3} q = 3 \cdot 2^{5/3} q \approx 9{,}52\, q
    \]

    **(c)** Para \(q = K^{1/3}L^{2/3}\), a função custo geral é \(C = \kappa \cdot w^{2/3} v^{1/3} q\), onde \(\kappa = 3/(2^{2/3})\). Então:

    \[
    \frac{\partial C}{\partial w} = \kappa \cdot \frac{2}{3} w^{-1/3} v^{1/3} q = L^c \quad \checkmark
    \]

    **(d)** Para \(q = 10\): \(CT = 3 \cdot 2^{5/3} \cdot 10 \approx 95{,}2\). Como \(\alpha + \beta = 1\) (retornos constantes), \(C\) é linear em \(q\):

    \[
    \mathrm{CMe} = \mathrm{CMg} = 3 \cdot 2^{5/3} \approx 9{,}52
    \]

    O custo médio e o custo marginal são constantes e iguais — consequência direta dos retornos constantes de escala.

---

## 11.4 A Função Custo e o Lema de Shephard

Na seção anterior, descobrimos *quanto* de cada insumo a firma usa para produzir ao menor custo. Agora vem o passo mágico: plugamos essas quantidades ótimas de volta na conta e obtemos a **função custo** — uma fórmula compacta que resume tudo o que a firma precisa saber sobre tecnologia e preços num único número: o custo mínimo para cada nível de produção. É o "extrato bancário" da firma eficiente. E dessa função brota um dos resultados mais bonitos da microeconomia: o Lema de Shephard, que permite recuperar as demandas por insumos simplesmente derivando a função custo.

A importância da função custo vai além da conveniência analítica. Empiricamente, custos são observáveis (aparecem nos balanços das firmas), enquanto as funções de produção são difíceis de mensurar diretamente. Por isso, a abordagem dual — estimar a função custo a partir de dados observados e recuperar as propriedades da tecnologia de produção por meio de derivações — tornou-se o método predominante na economia industrial e na regulação. Christensen e Greene (1976), em um artigo clássico discutido na seção de pesquisa, estimaram funções de custo para firmas de energia elétrica nos EUA e extraíram informações sobre economias de escala sem nunca precisar observar a tecnologia de produção diretamente.

### A função custo

!!! definition "Função custo"
    A **função custo** \(C(w, v, q)\) é o valor mínimo do custo de produzir \(q\) unidades, dados os preços dos insumos \(w\) e \(v\):

    \[
    C(w, v, q) = wL^c(w, v, q) + vK^c(w, v, q)
    \label{eq:11.6} \tag{11.6}
    \]

A função custo possui as seguintes propriedades:

1. **Não decrescente** em \(w\), \(v\) e \(q\).
2. **Homogênea de grau 1** nos preços dos insumos: \(C(tw, tr, q) = tC(w, v, q)\). Se todos os preços dos insumos dobram, o custo mínimo dobra.
3. **Côncava** nos preços dos insumos: a firma substitui o insumo que ficou mais caro pelo mais barato, de modo que o custo cresce menos que proporcionalmente ao aumento do preço de um insumo.
4. **Contínua** nos preços dos insumos.

### Lema de Shephard

!!! proof "Demonstração: Lema de Shephard"
    **Enunciado.** Se \(C(w, v, q)\) é a função custo e é diferenciável em \((w, v)\), então as demandas condicionadas por insumos são obtidas pela derivada parcial da função custo em relação ao preço do respectivo insumo:

    \[
    \frac{\partial C(w, v, q)}{\partial w} = L^c(w, v, q), \qquad \frac{\partial C(w, v, q)}{\partial v} = K^c(w, v, q)
    \label{eq:11.7} \tag{11.7}
    \]

    **Demonstração.**
    Considere o problema de minimização de custos. Pelo teorema da envoltória, a derivada da função valor (custo mínimo) em relação a um parâmetro é igual à derivada parcial do lagrangeano avaliado no ótimo.

    O lagrangeano é:

    \[
    \mathcal{L}(K, L, \lambda; w, v, q) = wL + vK + \lambda[q - f(K, L)]
    \]

    Pelo teorema da envoltória:

    \[
    \frac{\partial C}{\partial w} = \frac{\partial \mathcal{L}}{\partial w}\bigg|_{(K^c, L^c, \lambda^*)} = L^c(w, v, q)
    \]

    Analogamente:

    \[
    \frac{\partial C}{\partial v} = K^c(w, v, q)
    \]

    **Verificação com Cobb-Douglas.** Para \(q = K^{\alpha}L^{1-\alpha}\), a função custo é:

    \[
    C(w, v, q) = q \cdot \kappa \cdot w^{1-\alpha} \cdot v^{\alpha}
    \]

    onde \(\kappa = \left(\frac{\alpha}{1-\alpha}\right)^{-(1-\alpha)} + \left(\frac{\alpha}{1-\alpha}\right)^{\alpha}\) é uma constante. Derivando em relação a \(w\):

    \[
    \frac{\partial C}{\partial w} = q \cdot \kappa \cdot (1-\alpha) \cdot w^{-\alpha} \cdot v^{\alpha} = L^c(w, v, q)
    \]

    o que confirma o lema. \(\blacksquare\)

!!! tip "Significado econômico do Lema de Shephard"
    O Lema de Shephard é a contraparte, na teoria da produção, da **identidade de Roy** na teoria do consumidor. Ele permite recuperar as demandas condicionadas por insumos a partir de informações sobre custos — que são frequentemente mais fáceis de observar empiricamente do que as tecnologias de produção subjacentes. É uma ferramenta central na estimação empírica de funções de custo.

!!! idea "Intuição Econômica"
    **Em uma frase:** O Lema de Shephard diz que, se você sabe como o custo total muda quando o salário sobe um pouquinho, você já sabe quanta mão de obra a firma usa.

    **Pense assim:** Se o preço da energia sobe R$ 0,01 por kWh e a conta de luz da fábrica sobe R$ 500, você sabe que a fábrica consome 50.000 kWh. O lema formaliza essa ideia simples: a sensibilidade do custo ao preço de um insumo revela a quantidade usada desse insumo.

    **Por que isso importa:** Na prática, é muito mais fácil observar custos e preços do que medir diretamente a tecnologia de produção. O Lema de Shephard permite que economistas estimem demandas por insumos a partir de dados contábeis — algo essencial para política tributária e regulação no Brasil.

Um corolário imediato do Lema de Shephard e da homogeneidade de grau 1 da função custo nos preços é a **identidade de Euler** para a função custo:

\[
w \cdot L^c + v \cdot K^c = C(w, v, q)
\]

o que não é outra coisa senão a definição da função custo — uma verificação de consistência que todo economista deve checar ao derivar funções custo por método distinto. Outra propriedade importante, menos óbvia, é que a matriz hessiana das derivadas de segunda ordem da função custo em relação aos preços é **negativa semidefinida** — implicação direta da concavidade da função custo nos preços.

---

## 11.5 Curvas de Custo

A função custo é poderosa, mas abstrata — depende de três variáveis ao mesmo tempo. Agora, congelamos os preços dos insumos e deixamos só a quantidade variar. O resultado são as famosas curvas de custo total, custo médio e custo marginal — o trio que aparece em toda prova de micro, toda análise de empresa e toda reunião de diretoria (mesmo que disfarçado com outros nomes). Entender por que o custo marginal sempre cruza o custo médio no seu ponto de mínimo — como um corredor que puxa a média do pelotão para baixo enquanto é mais rápido — é a chave para a análise da oferta nos Capítulos 12 e 13.

Vale notar que, ao fixar os preços dos insumos, passamos de uma perspectiva tridimensional (\(C\) como função de \(w\), \(v\) e \(q\)) para a perspectiva usual (\(C\) como função apenas de \(q\)). Essa simplificação — perfeitamente justificada em um mercado de insumos competitivo onde a firma é tomadora de preços — nos permite focar na geometria das curvas de custo sem perda de generalidade.

<iframe src="../graficos/cap11/curvas-custo.html" title="Figura 11.2 — Curvas de custo total, médio e marginal" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 11.2 — Curvas de custo total, médio e marginal.** Ajuste os parâmetros da função cúbica de custo e observe as relações entre CT, CMe, CMg e CVMe. O ponto vermelho no CMg é arrastável. Destaque para o ponto de fechamento (mín CVMe) e o cruzamento CMg–CMe no mínimo do CMe.
</div>

### Custo total, custo médio e custo marginal

!!! definition "Curvas de custo"
    Para uma função custo \(C(q)\) (com preços de insumos fixos):

    - **Custo Total**: \(CT(q) = CF + CV(q)\), onde \(CF\) é o custo fixo e \(CV(q)\) é o custo variável.
    - **Custo Médio**: \(\mathrm{CMe}(q) = \frac{CT(q)}{q} = \frac{CF}{q} + \frac{CV(q)}{q} = \mathrm{CFMe} + \mathrm{CVMe}\)
    - **Custo Variável Médio**: \(\mathrm{CVMe}(q) = \frac{CV(q)}{q}\)
    - **Custo Marginal**: \(\mathrm{CMg}(q) = \frac{dCT(q)}{dq} = \frac{dCV(q)}{dq}\)

### Relações entre as curvas de custo

A [Tabela 11.1](#tabela-11-1) sintetiza as principais relações entre as curvas de custo.

<a id="tabela-11-1"></a>

| Relação | Expressão | Implicação |
|:---|:---|:---|
| CMg e CMe | Se \(\mathrm{CMg} < \mathrm{CMe}\), CMe é decrescente | CMg "puxa" CMe para baixo |
| CMg e CMe | Se \(\mathrm{CMg} > \mathrm{CMe}\), CMe é crescente | CMg "puxa" CMe para cima |
| CMg e CMe | Se \(\mathrm{CMg} = \mathrm{CMe}\), CMe é mínimo | CMg cruza CMe no ponto mínimo |
| CMg e CVMe | Se \(\mathrm{CMg} < \mathrm{CVMe}\), CVMe é decrescente | Mesma lógica do CMe |
| CMg e CVMe | Se \(\mathrm{CMg} = \mathrm{CVMe}\), CVMe é mínimo | CMg cruza CVMe no ponto mínimo |
| CMe e CVMe | \(\mathrm{CMe} = \mathrm{CVMe} + \mathrm{CFMe}\) | CMe está sempre acima de CVMe |
| CMe e CVMe | \(\mathrm{CMe} - \mathrm{CVMe} = CF/q \to 0\) | As curvas convergem quando \(q \to \infty\) |
| Área sob CMg | \(\int_0^q \mathrm{CMg}(x)\,dx = CV(q)\) | Custo variável = área sob CMg |

<div class="caption-obj" markdown>
**Tabela 11.1 — Relações entre as curvas de custo.**
</div>

A demonstração de que o CMg cruza o CMe no ponto de mínimo segue diretamente:

\[
\frac{d(\mathrm{CMe})}{dq} = \frac{d}{dq}\left(\frac{CT}{q}\right) = \frac{\mathrm{CMg} \cdot q - CT}{q^2} = \frac{\mathrm{CMg} - \mathrm{CMe}}{q}
\label{eq:11.8} \tag{11.8}
\]

Portanto, pela equação $\eqref{eq:11.8}$, \(\mathrm{CMe}\) é decrescente quando \(\mathrm{CMg} < \mathrm{CMe}\) e crescente quando \(\mathrm{CMg} > \mathrm{CMe}\).**

!!! idea "Intuição Econômica"
    **Em uma frase:** O custo marginal "puxa" o custo médio — se produzir uma unidade a mais custa menos que a média, a média cai; se custa mais, a média sobe.

    **Pense assim:** Pense na sua média de notas na faculdade. Se você tira 9 na próxima prova e sua média é 7, a média sobe. Se tira 5, a média cai. A nota marginal (a próxima prova) sempre arrasta a média na sua direção. Com custos é igual: o CMg cruza o CMe exatamente no ponto de mínimo do CMe.

    **Por que isso importa:** Essa relação determina a escala ótima de produção das firmas e é a base para entender por que empresas brasileiras em setores com altos custos fixos (como telecomunicações) precisam de escala grande para serem viáveis.

!!! warning "Cuidado"
    **Confusão frequente:** O CMg cruza o CMe no **mínimo do CMe** — não o contrário. É o CMe que tem seu ponto de mínimo onde o CMg o cruza; o CMg não tem seu mínimo no cruzamento. Confundir a direção de causalidade é um erro clássico em provas da ANPEC.

    Para reforçar: o CMg tem seu próprio mínimo (onde \(d\,\mathrm{CMg}/dq = 0\)), que ocorre *antes* do ponto de cruzamento com o CMe. Graficamente, o CMg tem formato de U, atinge seu mínimo, continua subindo, e só então cruza o CMe — que nesse instante está em seu próprio mínimo. Se o CMg está abaixo do CMe *e subindo*, o CMe ainda está caindo; o cruzamento ocorre apenas quando o CMg ultrapassa o CMe.

### Formato típico das curvas de custo

Com rendimentos marginais inicialmente crescentes e depois decrescentes (o formato clássico), as curvas de custo apresentam:

- **CMg**: formato de U — inicialmente decrescente (quando o produto marginal é crescente) e depois crescente (quando o produto marginal é decrescente).
- **CVMe**: formato de U — segue a mesma lógica, mas é mais suave.
- **CMe**: formato de U — soma de CVMe (U) com CFMe (decrescente). O mínimo do CMe ocorre à direita do mínimo do CVMe.

!!! idea "Intuição Econômica"
    **Em uma frase:** Custo marginal e produto marginal são espelhos: quando a produtividade do trabalhador sobe, o custo de mais uma unidade cai — e vice-versa.

    **Pense assim:** Se um padeiro experiente faz 100 pães por hora e o aprendiz faz 20, o custo por pão do aprendiz é cinco vezes maior. Quando a produtividade marginal cresce (o aprendiz melhora), o custo marginal cai. A curva de CMg é o "reflexo invertido" da curva de PMg.

    **Por que isso importa:** Essa relação inversa (\(\mathrm{CMg} = w / PMg_L\)) conecta diretamente a teoria da produção à teoria dos custos e explica por que a curva de CMg tem formato de U — herança direta da lei dos rendimentos marginais decrescentes.

A relação \(\mathrm{CMg} = w / PMg_L\) merece atenção especial porque faz a ponte explícita com o Capítulo 10. Quando o produto marginal do trabalho \(PMg_L\) é crescente (trecho inicial da função de produção), o custo marginal é decrescente — cada nova unidade de trabalho produz mais do que a anterior, tornando o custo por unidade menor. Quando \(PMg_L\) começa a cair (lei dos rendimentos marginais decrescentes), o custo marginal começa a subir. O ponto de mínimo do CMg corresponde exatamente ao ponto de máximo do \(PMg_L\) — as duas curvas são literalmente o reflexo uma da outra com relação a um espelho horizontal.

---

## 11.6 Deslocamentos nas Curvas de Custo

As curvas de custo analisadas até aqui foram derivadas para preços de insumos e tecnologia fixos. Mas o mundo real é dinâmico: salários sobem, o preço da energia flutua, novas tecnologias surgem e a regulação muda. Como essas mudanças afetam as curvas de custo da firma? Esta seção examina três fontes de deslocamento: variações nos preços dos insumos, progresso técnico e tributação. Essa análise é essencial para o Capítulo 12, onde veremos como deslocamentos nas curvas de custo se traduzem em deslocamentos na curva de oferta da firma competitiva.

### Mudanças nos preços dos insumos

Um aumento no salário \(w\) desloca para cima as curvas de custo. Pelo Lema de Shephard, o impacto é proporcional à quantidade de trabalho utilizada:

\[
\frac{\partial C}{\partial w} = L^c > 0
\]

O efeito sobre a curva de CMg depende de como a intensidade de trabalho varia com o nível de produto. Se a produção é intensiva em trabalho, o deslocamento será proporcionalmente maior.

### Progresso técnico

Uma melhoria tecnológica (aumento de \(A\) na função de produção) permite produzir a mesma quantidade com menos insumos, deslocando todas as curvas de custo para baixo. Se o progresso técnico é enviesado — por exemplo, poupador de trabalho —, ele reduz relativamente mais os custos de firmas intensivas em trabalho.

!!! tip "Exemplo: mecanização na agricultura brasileira"
    A adoção de colheitadeiras mecanizadas na produção de soja no Cerrado é um exemplo de progresso técnico poupador de trabalho. Segundo dados da EMBRAPA, o número de horas-homem por hectare na cultura da soja caiu de cerca de 25 h/ha nos anos 1980 para menos de 1 h/ha com plantio direto mecanizado. Essa redução desloca a curva de custo para baixo e altera a razão ótima capital/trabalho, tornando a produção mais intensiva em capital.

### Impostos e regulação

Impostos sobre insumos funcionam como aumentos nos preços dos insumos. Um imposto *ad valorem* sobre o trabalho de alíquota \(\tau\) eleva o custo efetivo do trabalho para \(w(1 + \tau)\), deslocando as curvas de custo para cima.

O Brasil oferece um laboratório rico para analisar os efeitos de impostos sobre os custos das firmas. Os encargos sobre a folha de pagamento — INSS patronal (20%), FGTS (8%), e contribuições para sistema S, RAT e outros — elevam o custo efetivo de contratar um trabalhador com salário formal de \(w\) para aproximadamente \(w \times 1{,}38\) a \(1{,}50\), dependendo do setor. Para firmas intensivas em trabalho, esse encargo representa um deslocamento significativo para cima da curva de CVMe e de CMg. O efeito é semelhante ao de uma elevação no preço do insumo trabalho: a firma pode substituir trabalho por capital (efeito de substituição) ou reduzir a produção (efeito escala), dependendo da elasticidade de substituição entre os insumos. O estudo de Ferreira e Rossi (2003), discutido na seção de pesquisa, documenta como a abertura comercial dos anos 1990 reduziu efetivamente os custos das firmas brasileiras ao expô-las à competição internacional e forçar a adoção de tecnologias mais eficientes.

---

## 11.7 Curto Prazo versus Longo Prazo: A Curva Envoltória

Imagine que você comprou um apartamento de dois quartos e agora precisa hospedar dez parentes no Natal. No curto prazo, a planta do apê é fixa — você empilha colchões, improvisa, e o custo por hóspede dispara. No longo prazo, você poderia ter alugado uma casa maior pagando menos por cabeça. A firma enfrenta exatamente esse dilema: no curto prazo, pelo menos um insumo (tipicamente o capital) está travado, e ela faz o que pode; no longo prazo, tudo é ajustável. A relação entre esses dois horizontes produz a célebre **curva envoltória** — e entendê-la é entender por que firmas investem, desinvestem e, às vezes, fecham as portas.

A curva envoltória tem uma história intelectual curiosa. Jacob Viner (1931), ao escrever seu artigo seminal sobre curvas de custo e oferta, pediu a seu assistente gráfico que desenhasse a curva de custo médio de longo prazo como a envoltória das curvas de curto prazo. O assistente acreditava que as curvas de curto prazo deveriam *cruzar* a curva de longo prazo no ponto de tangência (não tangenciá-la), o que é matematicamente incorreto. Viner percebeu o erro, mas o artigo foi publicado com uma nota de rodapé famosa explicando o problema — exemplo precioso de como conceitos aparentemente simples podem conter armadilhas até para os maiores economistas.

### Custos de curto prazo

No **curto prazo**, o capital é fixo em \(\bar{K}\). A firma só pode ajustar o trabalho. O custo total de curto prazo é:

\[
CT_{CP}(q; \bar{K}) = v\bar{K} + w \cdot L(q, \bar{K})
\label{eq:11.9} \tag{11.9}
\]

onde \(L(q, \bar{K})\) é a quantidade de trabalho necessária para produzir \(q\) dado \(\bar{K}\), obtida invertendo a função de produção de curto prazo.

### Custos de longo prazo

No **longo prazo**, todos os insumos são variáveis. A firma escolhe simultaneamente \(K\) e \(L\) para minimizar custos:

\[
CT_{LP}(q) = \min_{K, L} \{wL + vK \mid f(K, L) = q\}
\label{eq:11.10} \tag{11.10}
\]

### A curva envoltória

A Figura 11.3 mostra a envoltória em termos de **custo total**. Cada curva colorida representa o \(CT_{CP}(q; \bar{K}) = wq^2/\bar{K} + v\bar{K}\) para um nível fixo de capital, assumindo a tecnologia Cobb-Douglas \(q = K^{0{,}5}L^{0{,}5}\). A curva azul — o custo total de longo prazo — é calculada **numericamente** como \(CT_{LP}(q) = \min_{\bar{K}} CT_{CP}(q; \bar{K})\) para cada \(q\), confirmando que a envoltória inferior emerge da minimização ponto a ponto. Nos pontos de tangência (marcadores verdes), a inclinação do \(CT_{CP}\) é igual à do \(CT_{LP}\) — uma aplicação direta do **Teorema do Envelope**: a derivada da função valor em relação ao parâmetro (\(q\)) coincide com a derivada parcial do objetivo avaliada no ótimo.

<iframe src="../graficos/cap11/envoltoria-custo-total.html" title="Figura 11.3 — Envoltória de custo total: cada curva colorida é um \(CT_{CP}\) para um nível fixo de capital \(\bar{K}\); a curva azul (\(CT_{LP}\)) é a envoltória inferior, obtida numericamente" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 11.3 — Envoltória de custo total: cada curva colorida é um \(CT_{CP}\) para um nível fixo de capital \(\bar{K}\); a curva azul (\(CT_{LP}\)) é a envoltória inferior, obtida numericamente.** Os pontos verdes indicam onde cada \(CT_{CP}\) tangencia a envoltória. Use os controles para alterar \(w\) e \(v\), e as caixas de seleção para mostrar/ocultar curvas individuais e pontos de tangência.
</div>

!!! theorem "Teorema da curva envoltória"
    A curva de custo médio de longo prazo (\(\mathrm{CMe}_{LP}\)) é a **envoltória** das curvas de custo médio de curto prazo. Para cada nível de produto \(q\):

    \[
    \mathrm{CMe}_{LP}(q) \leq \mathrm{CMe}_{CP}(q; \bar{K}) \quad \text{para todo } \bar{K}
    \label{eq:11.11} \tag{11.11}
    \]

    com igualdade quando \(\bar{K} = K^*(q)\), o nível ótimo de capital de longo prazo para produzir \(q\).

!!! idea "Intuição Econômica"
    **Em uma frase:** No longo prazo, a firma pode ajustar tudo — por isso seus custos nunca superam os de curto prazo.

    **Pense assim:** Um restaurante com cozinha pequena (capital fixo) gasta muito para atender 200 clientes no sábado — precisa de horas extras, delivery externo. Mas se pudesse escolher o tamanho da cozinha (longo prazo), dimensionaria para 200 e gastaria menos. A curva de CMe de longo prazo "tangencia" cada curva de curto prazo no ponto ótimo de cada configuração.

    **Por que isso importa:** A envoltória de custos de longo prazo determina a escala eficiente da firma e, portanto, o número de firmas que o mercado comporta — informação crucial para política antitruste e regulação.

!!! idea "Intuição Econômica"
    **Em uma frase:** Cada curva de custo de curto prazo é tangente à curva de longo prazo em exatamente um ponto — onde o capital fixo coincide com o capital ótimo de longo prazo para aquele nível de produto.

    **Pense assim:** Imagine três tamanhos de planta industrial: pequena, média e grande. Para baixos volumes, a planta pequena é mais barata; para médios volumes, a planta média; para altos volumes, a grande. O LRAC é construído "selecionando" a parte mais barata de cada curva de curto prazo — tangenciando cada uma no volume para o qual aquela planta é ótima.

    **Por que isso importa:** Essa propriedade, derivada formalmente do Teorema do Envelope, conecta o curto e o longo prazo de forma precisa. Ela mostra por que firmas que antecipam crescimento forte investem em plantas maiores do que o necessário no presente — porque o SRAC da planta maior tangenciará o LRAC no volume futuro esperado, e isso representa uma vantagem de custo de longo prazo.

Propriedade importante: no ponto de tangência, conforme a equação $\eqref{eq:11.12}$, o CMg de curto prazo é igual ao CMg de longo prazo:

\[
\mathrm{CMg}_{CP}(q^*; \bar{K}^*) = \mathrm{CMg}_{LP}(q^*)
\label{eq:11.12} \tag{11.12}
\]

A Figura 11.4 complementa a visão anterior, agora em termos de **custo médio**. Cada curva cinza é um CMe de curto prazo (SRAC) para um nível fixo de capital; a curva azul (LRAC) é a envoltória.

<iframe src="../graficos/cap11/curto-longo-prazo.html" title="Figura 11.4 — Curva envoltória: CMe de curto e longo prazo" class="graph-iframe"></iframe>

<div class="caption-obj" markdown>
**Figura 11.4 — Curva envoltória: CMe de curto e longo prazo.** Cada curva cinza é um CMe de curto prazo (SRAC) para um nível fixo de capital; a curva azul (LRAC) é a envoltória. Selecione \(\bar{K}\) para destacar o SRAC correspondente e ver o ponto de tangência.
</div>

### Economias e deseconomias de escala

A forma da curva \(\mathrm{CMe}_{LP}\) reflete os rendimentos de escala:

- **Rendimentos crescentes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) decrescente \(\Leftrightarrow\) **economias de escala**.
- **Rendimentos constantes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) constante.
- **Rendimentos decrescentes de escala** \(\Leftrightarrow\) \(\mathrm{CMe}_{LP}\) crescente \(\Leftrightarrow\) **deseconomias de escala**.

A **escala mínima eficiente** (EME) é o menor nível de produto para o qual o CMe de longo prazo atinge seu mínimo. A EME tem implicações diretas para a estrutura de mercado: se a EME é grande em relação ao tamanho do mercado, o setor tende a ter poucas firmas (oligopólio ou monopólio natural). Por exemplo, se a EME de uma montadora de automóveis é de 200 mil veículos por ano e o mercado brasileiro absorve 2 milhões, o mercado comporta no máximo dez montadoras eficientes — o que ajuda a explicar a estrutura oligopolística observada nesse setor.

!!! idea "Intuição Econômica"
    **Em uma frase:** Economias de escala significam que produzir mais sai mais barato por unidade — o custo médio cai conforme a firma cresce.

    **Pense assim:** Uma fábrica de cerveja artesanal paga quase o mesmo aluguel, energia e licença sanitária que uma grande cervejaria, mas produz muito menos garrafas para diluir esses custos. Por isso a Ambev consegue vender a R$ 3 a lata enquanto a artesanal cobra R$ 15 — a escala mínima eficiente do setor é alta.

    **Por que isso importa:** Economias de escala explicam a concentração em setores como aviação, telecomunicações e siderurgia no Brasil, e são o principal argumento em análises de fusões pelo [CADE](https://www.gov.br/cade).

Uma última propriedade relevante da envoltória é que, no mínimo da curva de LRAC, a curva de curto prazo ótima tangencia a de longo prazo *e* também tem seu próprio mínimo no mesmo ponto — ou seja, no mínimo do LRAC, o SRAC ótimo também está em seu mínimo. Isso ocorre porque, nesse ponto, o capital fixo é exatamente igual ao capital ótimo de longo prazo para aquela quantidade, e não há "deformação" de curto prazo. Esse ponto especial define a **escala eficiente mínima** da firma.

??? exercicio-resolvido "Exercício Resolvido 11.3 — Curto prazo versus longo prazo"

    **Enunciado.** Uma firma tem função de produção \(q = K^{1/4}L^{1/4}\) com \(w = 10\) e \(v = 10\).

    (a) Derive a função custo de longo prazo e mostre que o CMg é crescente.

    (b) No curto prazo, o capital está fixo em \(\bar{K} = 1\). Derive a função custo de curto prazo.

    (c) Mostre que \(CT_{LP}(q) \leq CT_{CP}(q)\) para todo \(q\), com igualdade em um ponto.

    **Solução.**

    **(a)** Com \(\alpha = \beta = 1/4\) e \(\alpha + \beta = 1/2 < 1\) (retornos decrescentes), pela condição de tangência:

    \[
    \frac{1/4 \cdot L}{1/4 \cdot K} = \frac{v}{w} = 1 \implies K = L
    \]

    Substituindo: \(K^{1/4} K^{1/4} = q \implies K^{1/2} = q \implies K^c = L^c = q^2\).

    \[
    CT_{LP} = 10q^2 + 10q^2 = 20q^2
    \]

    \[
    \mathrm{CMg}_{LP} = 40q \quad (\text{crescente em } q)
    \]

    Isso confirma: retornos decrescentes (\(\alpha + \beta < 1\)) geram CMg crescente.

    **(b)** Com \(\bar{K} = 1\): \(q = 1^{1/4} L^{1/4} = L^{1/4} \implies L = q^4\).

    \[
    CT_{CP} = v\bar{K} + wL = 10 \cdot 1 + 10 \cdot q^4 = 10 + 10q^4
    \]

    **(c)** Comparando:

    \[
    CT_{CP} - CT_{LP} = 10 + 10q^4 - 20q^2 = 10(1 - 2q^2 + q^4) = 10(1 - q^2)^2 \geq 0
    \]

    A diferença é sempre não negativa, com igualdade quando \(q^2 = 1\), ou seja, \(q = 1\). Nesse ponto, \(K^*(q=1) = 1 = \bar{K}\) — o capital fixo coincide com o ótimo de longo prazo. Para qualquer outro nível de produto, o curto prazo é mais caro, pois a firma não pode ajustar o capital.

---

!!! box-brasil "Box Brasil: O peso do 'custo Brasil' na indústria de alimentos"

    O termo **"custo Brasil"** designa o conjunto de ineficiências sistêmicas que elevam os custos de produção no país acima dos padrões internacionais. Segundo levantamentos da **Confederação Nacional da Indústria (CNI)** e da **FIESP**, o custo Brasil representava, em estimativas recentes, um sobrecusto de cerca de **R$ 1,7 trilhão por ano** para a economia brasileira — equivalente a aproximadamente 20% do PIB.

    **Componentes do custo Brasil na indústria de alimentos:**

    | Componente | Impacto estimado | Descrição |
    |:---|:---|:---|
    | Carga tributária | 25–35% do faturamento | ICMS, PIS/COFINS, IPI, contribuições sobre folha |
    | Logística e transporte | 12–15% do custo total | Dependência do modal rodoviário, infraestrutura precária |
    | Energia elétrica | 8–12% dos custos industriais | Tarifas entre as mais altas do mundo |
    | Burocracia regulatória | 3–5% dos custos | Licenças, fiscalizações, cumprimento de obrigações acessórias |
    | Custo de capital | Variável | Taxas de juros historicamente elevadas |

    **Logística: o gargalo mais visível.**
    O Brasil transporta cerca de **65% de sua carga** pelo modal rodoviário, contra 25–30% nos EUA e menos de 10% na Europa. Para a indústria de alimentos, que opera com margens estreitas e produtos perecíveis, essa dependência eleva drasticamente os custos de distribuição. O frete de uma tonelada de soja de Sorriso (MT) ao Porto de Santos percorre mais de 2.000 km por estrada, a um custo estimado em US$ 90–120/tonelada — cerca do triplo do custo equivalente nos EUA (dados CNI, 2023).

    **Interpretação microeconômica.**
    Em termos da teoria dos custos, o "custo Brasil" representa um deslocamento para cima das curvas de custo das firmas brasileiras em relação a competidores internacionais. Trata-se, em grande parte, de **custos fixos** (burocracia, tributação fixa) e **custos variáveis** elevados (logística, energia). A consequência é que a **escala mínima eficiente** das firmas brasileiras tende a ser maior, dificultando a sobrevivência de empresas menores e reduzindo a competitividade internacional. A reforma tributária de 2023 (EC 132/2023), com a unificação de tributos sobre consumo (CBS e IBS), representa uma tentativa de reduzir uma das principais fontes do custo Brasil.

---

!!! box-brasil "Box Brasil: Escala mínima eficiente e concentração na produção de soja"

    A produção de soja no Brasil ilustra de forma nítida o papel das economias de escala na determinação da estrutura produtiva. Segundo dados do **Censo Agropecuário do [IBGE](https://www.ibge.gov.br) (2017)**, enquanto 70% dos estabelecimentos produtores de soja possuem menos de 100 hectares, esses estabelecimentos respondem por apenas 10% da produção total. Os 5% maiores produtores (acima de 1.000 ha) respondem por mais de 50% da produção nacional.

    **Por que a escala importa?**

    | Componente de custo | Pequeno produtor (<100 ha) | Grande produtor (>1.000 ha) |
    |:---|:---:|:---:|
    | Custo de máquinas/ha | Elevado (subutilização) | Baixo (diluição do CF) |
    | Custo de insumos/ha | Maior (menor poder de barganha) | Menor (compras em escala) |
    | Custo logístico/tonelada | Elevado (lotes pequenos) | Menor (contratos de frete) |
    | Assistência técnica | Custo fixo alto relativo | Diluído na produção |

    Esses dados são consistentes com uma curva de CMe de longo prazo em formato de L: custos médios decrescentes até uma escala mínima eficiente (EME) em torno de 500–1.000 hectares, após a qual os ganhos de escala se estabilizam. A **CONAB** estima que o custo total de produção de soja no Mato Grosso (safra 2023/24) foi de aproximadamente R$ 4.800/ha, com produtividade média de 57 sacas/ha, resultando em custo por saca de cerca de R$ 84 para produtores de grande escala — valor significativamente inferior ao de produtores menores.

    **Implicação para política pública:** programas como o **PRONAF** (Programa Nacional de Fortalecimento da Agricultura Familiar) podem ser interpretados como subsídios que deslocam a curva de custo de pequenos produtores para baixo, compensando parcialmente a desvantagem de escala e permitindo sua permanência no mercado.

    *Fontes: IBGE — Censo Agropecuário 2017; CONAB — Custos de Produção; [CEPEA/ESALQ](https://www.cepea.esalq.usp.br).*

---

!!! box-brasil "🇧🇷 Box Brasil 11.3 — Custo Brasil: burocracia, logística e tributação como deslocadores de custos"
    **Contexto:** O conceito de "Custo Brasil" vai além dos componentes setoriais analisados no Box Brasil anterior. Trata-se de um conjunto estrutural de ineficiências — tributárias, regulatórias, logísticas e institucionais — que desloca para cima as curvas de custo de *todas* as firmas que operam no país, independentemente do setor. Do ponto de vista da teoria dos custos, o Custo Brasil equivale a um aumento generalizado nos preços efetivos dos insumos (\(w\) e \(v\)), reduzindo a competitividade das firmas brasileiras em relação a concorrentes internacionais que operam com a mesma tecnologia, mas enfrentam custos institucionais menores.

    **Dados:** Estimativas da CNI (Confederação Nacional da Indústria, 2022) quantificam o Custo Brasil em R$ 1,7 trilhão anuais, distribuídos entre os seguintes componentes principais:

    | Componente | Custo estimado (R$ bi/ano) | Efeito teórico |
    |:---|:---:|:---|
    | Complexidade tributária | 684 | Eleva custos fixos (compliance) e variáveis (cumulatividade) |
    | Infraestrutura e logística | 382 | Eleva custo variável de transporte de insumos e produtos |
    | Insegurança jurídica | 250 | Eleva custo de capital (prêmio de risco) |
    | Burocracia e regulação | 224 | Eleva custos fixos de entrada e operação |
    | Custo do crédito | 160 | Eleva \(v\) (preço efetivo do capital) |

    Segundo o *Doing Business* do Banco Mundial (última edição, 2020), uma firma brasileira gastava em média **1.501 horas por ano** para cumprir obrigações tributárias — contra 175 horas na média da OCDE e 138 horas no Chile. Abrir uma empresa demandava 17 dias no Brasil versus 4 na Nova Zelândia. Esses custos de transação, embora não apareçam diretamente na função de produção \(f(L,K)\), funcionam como um imposto implícito sobre todos os insumos.

    **Análise:** A teoria dos custos oferece um enquadramento preciso para o Custo Brasil. Pelo Lema de Shephard, \(\partial C / \partial w = L^c > 0\): qualquer elevação no preço efetivo de um insumo desloca a função custo para cima proporcionalmente à intensidade de uso daquele insumo. A burocracia tributária funciona como um aumento em \(w\) (horas de trabalho desviadas para compliance em vez de produção); a infraestrutura precária funciona como um aumento no custo de transporte (insumo intermediário); e o custo elevado do crédito funciona como um aumento em \(v\), encarecendo o capital. O efeito combinado é uma elevação da escala mínima eficiente (EME): firmas menores, que não conseguem diluir esses custos fixos, são desproporcionalmente penalizadas — o que ajuda a explicar a alta informalidade empresarial brasileira (cerca de 40% do PIB, segundo estimativas do IBRE/FGV).

    **Para refletir:** Se a reforma tributária (EC 132/2023) reduzir o tempo de compliance de 1.501 para 500 horas/ano e o custo logístico cair 20% com investimentos em ferrovias, qual seria o efeito esperado sobre a curva de CMe das firmas brasileiras? Que tipos de firma — intensivas em trabalho ou em capital, grandes ou pequenas — se beneficiariam mais?

---

## 11.8 Demandas Condicionais e Função Custo por Tipo de Função de Produção

As seções anteriores desenvolveram os conceitos gerais de minimização de custos, função custo e curvas de custo. Agora é hora de aplicar esses conceitos de forma sistemática às quatro funções de produção clássicas estudadas no Capítulo 10 — Cobb-Douglas, linear, Leontief e CES. Para cada uma, derivamos explicitamente as demandas condicionais por insumos, a função custo resultante e, quando a solução existe, as demandas por insumos via maximização de lucro. Esse catálogo de resultados será referência constante nos capítulos seguintes e nos exercícios da ANPEC.

Nesta seção, derivamos as demandas condicionais por insumos, a função custo e (quando aplicável) as demandas por insumos via maximização de lucro para as quatro formas funcionais mais utilizadas. Usamos \(w\) e \(v\) para os preços do trabalho e do capital, \(q\) para a quantidade produzida, e \(L\) e \(K\) para trabalho e capital.

Vale destacar a lógica comum subjacente a todos os casos: a firma sempre minimiza custo operando no ponto onde a taxa marginal de substituição técnica iguala a razão dos preços dos insumos (quando a solução é interior), ou usa apenas o insumo de menor custo por unidade de produto (quando a solução é de canto, como na tecnologia linear). A diversidade de formas funcionais gera perfis de custo muito diferentes — do custo linear da Leontief ao custo côncavo da Cobb-Douglas com retornos crescentes —, e compreender essas diferenças é essencial para a modelagem empírica de setores industriais.

### 11.8.1 Cobb-Douglas: q = Kᵅ Lᵝ

**Demandas condicionais (minimização de custo).** A firma resolve:

\[
\min_{K,L} \; vK + wL \quad \text{s.a.} \quad K^\alpha L^\beta = q
\]

O Lagrangeano é:

\[
\mathcal{L} = vK + wL + \lambda(q - K^\alpha L^\beta)
\]

Condições de primeira ordem:

\[
\frac{\partial \mathcal{L}}{\partial K} = v - \lambda \alpha K^{\alpha-1} L^\beta = 0
\]

\[
\frac{\partial \mathcal{L}}{\partial L} = w - \lambda \beta K^\alpha L^{\beta-1} = 0
\]

Dividindo a primeira CPO pela segunda:

\[
\frac{v}{w} = \frac{\alpha L}{\beta K} \quad \Longrightarrow \quad K = \frac{\alpha\, w}{\beta\, v}\, L
\]

Substituindo na restrição tecnológica:

\[
\left(\frac{\alpha\, w}{\beta\, v}\right)^\alpha L^{\alpha+\beta} = q \quad \Longrightarrow \quad L^c = q^{1/(\alpha+\beta)} \left(\frac{\alpha\, w}{\beta\, v}\right)^{-\alpha/(\alpha+\beta)}
\]

\[
\boxed{L^c(w,v,q) = q^{1/(\alpha+\beta)} \left(\frac{\beta\, v}{\alpha\, w}\right)^{\alpha/(\alpha+\beta)}}
\label{eq:11.13} \tag{11.13}
\]

\[
\boxed{K^c(w,v,q) = q^{1/(\alpha+\beta)} \left(\frac{\alpha\, w}{\beta\, v}\right)^{\beta/(\alpha+\beta)}}
\label{eq:11.14} \tag{11.14}
\]

**Função custo.** Avaliando o gasto mínimo \(C = vK^c + wL^c\):

\[
\boxed{C(w,v,q) = q^{1/(\alpha+\beta)} \cdot \frac{\alpha+\beta}{\alpha^\alpha \beta^\beta} \cdot \frac{w^{\beta/(\alpha+\beta)}\, v^{\alpha/(\alpha+\beta)}}{(\alpha+\beta)^{(\alpha+\beta)/(\alpha+\beta)}} \cdot (\alpha+\beta) \left(\frac{w}{\beta}\right)^{\beta/(\alpha+\beta)} \left(\frac{v}{\alpha}\right)^{\alpha/(\alpha+\beta)}}
\]

Simplificando, a função custo Cobb-Douglas tem a forma:

\[
C(w,v,q) = \kappa \cdot w^{\beta/(\alpha+\beta)}\, v^{\alpha/(\alpha+\beta)} \cdot q^{1/(\alpha+\beta)}
\label{eq:11.15} \tag{11.15}
\]

onde \(\kappa = (\alpha+\beta)\left(\alpha^{-\alpha}\beta^{-\beta}\right)^{1/(\alpha+\beta)}\) é uma constante.

**Retornos de escala e custos:**

- Se \(\alpha+\beta = 1\) (retornos constantes): \(C\) é linear em \(q\) → CMg constante
- Se \(\alpha+\beta > 1\) (retornos crescentes): \(C\) é côncava em \(q\) → CMg decrescente
- Se \(\alpha+\beta < 1\) (retornos decrescentes): \(C\) é convexa em \(q\) → CMg crescente

*Verificação pelo Lema de Shephard*: \(\partial C/\partial w = L^c\) ✓

**Demandas por insumos (maximização de lucro).** Com retornos decrescentes (\(\alpha+\beta < 1\)), a firma maximiza \(\pi = pq - wL - vK\). Substituindo \(q = K^\alpha L^\beta\) e derivando:

\[
p\alpha K^{\alpha-1}L^\beta = v, \qquad p\beta K^\alpha L^{\beta-1} = w
\]

Resolvendo o sistema (detalhes em Cap. 12):

\[
\boxed{L^*(w,v,p) = \left(\frac{p\,\alpha^\alpha\,\beta^{1-\alpha}}{w^{1-\alpha}\,v^\alpha}\right)^{1/(1-\alpha-\beta)}, \quad K^*(w,v,p) = \left(\frac{p\,\alpha^{1-\beta}\,\beta^\beta}{w^\beta\,v^{1-\beta}}\right)^{1/(1-\alpha-\beta)}}
\]

Estas demandas só existem com retornos decrescentes. Com retornos constantes ou crescentes, o lucro não tem máximo finito.

### 11.8.2 Tecnologia Linear (Substitutos Perfeitos): q = αK + βL

Com tecnologia linear, os insumos são perfeitamente substituíveis. As isoquantas são retas com inclinação \(-\beta/\alpha\).

**Demandas condicionais.** A firma compara o custo por unidade de produto de cada insumo:

- Custo de uma unidade de produto via capital: \(v/\alpha\)
- Custo de uma unidade de produto via trabalho: \(w/\beta\)

\[
\boxed{K^c = \begin{cases} q/\alpha & \text{se } v/\alpha < w/\beta \\ 0 & \text{se } v/\alpha > w/\beta \end{cases}, \qquad L^c = \begin{cases} 0 & \text{se } v/\alpha < w/\beta \\ q/\beta & \text{se } v/\alpha > w/\beta \end{cases}}
\]

Se \(v/\alpha = w/\beta\), qualquer combinação sobre a isoquanta é ótima.

**Função custo.**

\[
\boxed{C(w,v,q) = q \cdot \min\left\{\frac{v}{\alpha},\; \frac{w}{\beta}\right\}}
\label{eq:11.16} \tag{11.16}
\]

Os custos são sempre lineares em \(q\) (retornos constantes de escala), com CMg constante igual a \(\min\{v/\alpha, w/\beta\}\).

**Demandas por insumos (maximização de lucro).** Com retornos constantes de escala, o lucro é linear em \(q\). Se \(p > \min\{v/\alpha, w/\beta\}\), a firma deseja produzir infinito; se \(p < \min\{v/\alpha, w/\beta\}\), a firma produz zero. O problema de maximização de lucro só tem solução interior com rendimentos decrescentes.

### 11.8.3 Tecnologia Leontief (Proporções Fixas): q = min{K/α, L/β}

Com tecnologia Leontief, os insumos são usados em proporções fixas \(\alpha:\beta\). As isoquantas têm formato de "L".

**Demandas condicionais.** No ótimo, a firma opera no vértice da isoquanta: \(K/\alpha = L/\beta = q\). Qualquer outro ponto desperdiça insumos. Portanto:

\[
\boxed{K^c = \alpha\, q, \qquad L^c = \beta\, q}
\]

As demandas condicionais são **independentes dos preços dos insumos** — não há margem para substituição.

**Função custo.**

\[
\boxed{C(w,v,q) = (\alpha\, v + \beta\, w)\, q}
\label{eq:11.17} \tag{11.17}
\]

O custo é linear em \(q\), com CMg constante igual a \(\alpha v + \beta w\). Uma mudança nos preços dos insumos desloca a curva de CMg paralelamente, mas não altera a combinação de insumos.

**Demandas por insumos (maximização de lucro).** Com retornos constantes, valem as mesmas considerações do caso linear: o problema só tem solução finita se \(p = \alpha v + \beta w\). Para ter solução interior, seriam necessários retornos decrescentes, por exemplo, \(q = [\min\{K/\alpha, L/\beta\}]^\gamma\) com \(\gamma < 1\).

### 11.8.4 CES: q = (αKᵖ + βLᵖ)¹ᐟᵖ

A função CES generaliza os três casos anteriores. O parâmetro \(\rho\) determina a elasticidade de substituição entre insumos: \(\sigma = 1/(1-\rho)\).

**Demandas condicionais.** A firma resolve:

\[
\min_{K,L} \; vK + wL \quad \text{s.a.} \quad (\alpha K^\rho + \beta L^\rho)^{1/\rho} = q
\]

O Lagrangeano é \(\mathcal{L} = vK + wL + \lambda[q - (\alpha K^\rho + \beta L^\rho)^{1/\rho}]\). As CPOs, após simplificação, fornecem:

\[
\frac{v}{w} = \frac{\alpha K^{\rho-1}}{\beta L^{\rho-1}} \quad \Longrightarrow \quad \frac{K}{L} = \left(\frac{\alpha\, w}{\beta\, v}\right)^\sigma
\]

Definimos o **índice de preços de insumos CES**:

\[
W \equiv \left(\alpha^\sigma\, v^{1-\sigma} + \beta^\sigma\, w^{1-\sigma}\right)^{1/(1-\sigma)}
\]

As demandas condicionais ficam:

\[
\boxed{K^c = \alpha^\sigma\, v^{-\sigma}\, W^{\sigma-1}\, q, \qquad L^c = \beta^\sigma\, w^{-\sigma}\, W^{\sigma-1}\, q}
\]

**Função custo.**

\[
\boxed{C(w,v,q) = W \cdot q = q \cdot \left(\alpha^\sigma\, v^{1-\sigma} + \beta^\sigma\, w^{1-\sigma}\right)^{1/(1-\sigma)}}
\label{eq:11.18} \tag{11.18}
\]

A função custo é linear em \(q\) (retornos constantes de escala) e tem a estrutura de um índice de preços CES.

*Verificação pelo Lema de Shephard*: \(\partial C/\partial w = L^c\) ✓

**Demandas por insumos (maximização de lucro).** Com retornos constantes, o lucro é linear em \(q\) e o problema não tem solução finita a menos que \(p = W\). Para uma versão com retornos decrescentes, \(q = (\alpha K^\rho + \beta L^\rho)^{\gamma/\rho}\) com \(\gamma < 1\), a função custo torna-se \(C = W \cdot q^{1/\gamma}\), convexa em \(q\), e as demandas não condicionais podem ser obtidas via \(\max_q \; pq - W q^{1/\gamma}\).

!!! info "Casos limite da CES na produção"
    - \(\rho \to 0\) (\(\sigma \to 1\)): converge para Cobb-Douglas \(q = K^\alpha L^\beta\) (com \(\alpha + \beta = 1\) sob CRS)
    - \(\rho \to 1\) (\(\sigma \to \infty\)): converge para tecnologia linear \(q = \alpha K + \beta L\)
    - \(\rho \to -\infty\) (\(\sigma \to 0\)): converge para Leontief \(q = \min\{K, L\}\) (na parametrização com pesos \(\delta, 1-\delta\); para a forma \(\min\{K/a, L/b\}\), os coeficientes devem estar dentro da função \(\min\))

A função custo CES em \eqref{eq:11.18} também permite derivar diretamente as participações dos insumos no custo total. Definindo \(s_K = vK^c/C\) e \(s_L = wL^c/C\), a participação do capital no custo é:

\[
s_K = \frac{\alpha^\sigma v^{1-\sigma}}{W^{1-\sigma}}
\]

Quando \(\sigma > 1\) (alta elasticidade de substituição), um aumento em \(v/w\) reduz a participação do capital no custo mais do que proporcionalmente — a firma substitui fortemente capital por trabalho. Quando \(\sigma < 1\), a substituição é mais limitada e a participação do capital pode até *aumentar* com o aumento de seu preço relativo (efeito gasto domina o efeito substituição). Esse fenômeno, análogo ao paradoxo de Giffen no consumo mas para insumos, raramente é observado na prática, mas é teoricamente possível.

!!! info "Prêmio Nobel — Ronald Coase (1991)"
    **Ronald Harry Coase** (1910–2013) recebeu o Nobel de Economia em 1991 "pela descoberta e esclarecimento do significado dos custos de transação e dos direitos de propriedade para a estrutura institucional e funcionamento da economia".

    Coase é mais conhecido por dois artigos transformadores. Em "The Nature of the Firm" (1937), ele perguntou: se os mercados são tão eficientes, por que as firmas existem? Por que não toda a produção é organizada via contratos de mercado entre agentes independentes? Sua resposta: os **custos de transação** — os custos de negociar, redigir e fazer cumprir contratos —  tornam a coordenação interna (hierarquia) mais barata que a coordenação de mercado para certas atividades. A firma existe onde os custos de transação do mercado excedem os custos de organização interna. Esse insight muda radicalmente como pensamos a estrutura de custos da firma: além dos custos explícitos de insumos, há custos organizacionais que determinam os limites da firma.

    Em "The Problem of Social Cost" (1960), Coase desenvolveu o que ficou conhecido como Teorema de Coase: na ausência de custos de transação, as partes negociarão e chegarão ao resultado eficiente independentemente da alocação inicial de direitos de propriedade. A existência de custos de transação positivos é, portanto, o que justifica intervenções regulatórias e arranjos institucionais. Para a teoria dos custos, a implicação é que o custo econômico completo de uma atividade inclui não apenas os custos diretos de insumos, mas também os custos de transação associados à organização da produção.

    *Referência: Coase, R. H. (1937). The Nature of the Firm. Economica, 4(16), 386–405.*

---

A dona da padaria do início sabia: não basta saber fazer — é preciso saber quanto custa. Agora ela tem o instrumental completo: custo de oportunidade para não se enganar, Shephard para extrair demandas por insumos de uma única função, e a envoltória de Viner para distinguir o improviso do curto prazo da eficiência do longo prazo. O mapa de custos está desenhado. Falta a pergunta que paga as contas: quanto produzir?

*Custos mapeados. Agora a firma enfrenta o mercado: quanto produzir, a que preço, e quando fechar as portas.*

---

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. A diferença fundamental entre custo econômico e custo contábil é que:"
    - (a) O custo econômico inclui apenas desembolsos monetários efetivos
    - (b) O custo econômico inclui o custo de oportunidade dos recursos próprios (capital, tempo do empreendedor), enquanto o contábil não
    - (c) O custo contábil é sempre maior que o econômico
    - (d) O custo econômico ignora os custos fixos

    ??? success "Resposta"
        **(b)** O custo econômico considera o custo de oportunidade de todos os recursos, incluindo os próprios do empresário (retorno que obteria em alternativas). O lucro contábil pode ser positivo enquanto o lucro econômico é zero ou negativo. A alternativa (a) descreve o custo contábil; (c) inverte — o econômico é pelo menos tão grande quanto o contábil.

??? question "2. No curto prazo, a curva de custo marginal (CMg) cruza a curva de custo variável médio (CVMe) em seu:"
    - (a) Ponto de máximo
    - (b) Ponto de mínimo
    - (c) Ponto de inflexão
    - (d) Intercepto vertical

    ??? success "Resposta"
        **(b)** Quando $\text{CMg} < \text{CVMe}$, o CVMe está caindo; quando $\text{CMg} > \text{CVMe}$, o CVMe está subindo. Portanto, o CMg cruza o CVMe exatamente no mínimo do CVMe. O mesmo raciocínio se aplica à relação entre CMg e CTMe. A alternativa (a) é incorreta — as curvas médias em U não têm máximo relevante neste contexto; (c) refere-se a outra propriedade.

??? question "3. Economias de escala existem quando:"
    - (a) O custo marginal é crescente
    - (b) O custo médio de longo prazo é decrescente — produzir mais reduz o custo por unidade
    - (c) O custo fixo é zero
    - (d) O custo total é proporcional à quantidade produzida

    ??? success "Resposta"
        **(b)** Economias de escala significam que o custo médio de longo prazo (CMeLP) cai à medida que a produção aumenta. Ocorrem por indivisibilidades, especialização do trabalho ou vantagens tecnológicas. A alternativa (a) é compatível com deseconomias de escala; (c) eliminaria parte das economias de escala (que vêm de diluir custos fixos); (d) implica custo médio constante (nem economias nem deseconomias).

??? question "4. No longo prazo, todos os insumos são variáveis. Isso implica que:"
    - (a) Os custos fixos de longo prazo são positivos
    - (b) A curva de custo médio de longo prazo é a envoltória inferior das curvas de custo médio de curto prazo
    - (c) O custo marginal de longo prazo é sempre maior que o de curto prazo
    - (d) A firma não pode ajustar a escala da planta

    ??? success "Resposta"
        **(b)** No longo prazo, a firma escolhe a escala ótima para cada nível de produção. O CMeLP é a envoltória das curvas de CMeCP — para cada $q$, é o menor custo médio possível entre todas as escalas de planta. A alternativa (a) é falsa por definição; (c) inverte — o CMgLP é geralmente menor que o CMgCP porque há mais flexibilidade; (d) contradiz a definição de longo prazo.

??? question "5. A curva de custo total de curto prazo tem formato em S (sigmoide) porque:"
    - (a) Os preços dos insumos variam com a quantidade produzida
    - (b) Inicialmente há rendimentos crescentes do fator variável (custo cresce a taxas decrescentes) e depois rendimentos decrescentes (custo cresce a taxas crescentes)
    - (c) Os custos fixos aumentam com a produção
    - (d) A firma sempre opera com excesso de capacidade

    ??? success "Resposta"
        **(b)** A forma em S reflete a lei dos rendimentos marginais: com pouco uso do fator variável, há ganhos de especialização (rendimentos crescentes → custo marginal decrescente); além de certo ponto, o congestionamento do fator fixo causa rendimentos decrescentes → custo marginal crescente. A alternativa (c) contradiz a definição de custos fixos.

## 📋 Resumo do Capítulo

- O **custo econômico** difere do custo contábil por incluir o custo de oportunidade dos recursos próprios da firma (capital do proprietário, tempo do empreendedor), enquanto o custo contábil registra apenas desembolsos efetivos. Essa distinção é fundamental para avaliar corretamente a lucratividade de um negócio.
- No **curto prazo**, a firma opera com pelo menos um insumo fixo, gerando custos fixos e variáveis. As curvas de custo marginal (CMg), custo variável médio (CVMe) e custo total médio (CTMe) possuem formato em U — reflexo da lei dos rendimentos marginais decrescentes — e se relacionam de maneira precisa: o CMg cruza o CVMe e o CTMe em seus respectivos pontos de mínimo.
- No **longo prazo**, todos os insumos são variáveis e a firma resolve o problema de **minimização de custos** sujeita à restrição tecnológica, o que gera a condição de tangência entre a isocusto e a isoquanta: $\mathrm{TMST} = w/v$.
- O **Lema de Shephard** estabelece que as demandas condicionadas por insumos podem ser obtidas como derivadas parciais da função custo em relação aos preços dos insumos, conectando a dualidade entre produção e custos.
- As **economias de escala** e as **economias de escopo** explicam por que firmas maiores ou diversificadas podem ter custos médios menores, sendo conceitos centrais para a organização industrial. A curva de custo médio de longo prazo é a envoltória das curvas de curto prazo.
- No contexto brasileiro, o chamado **"custo Brasil"** — carga tributária, logística deficiente, burocracia — representa um deslocamento para cima da curva de custos das firmas nacionais, reduzindo sua competitividade internacional.

## 🔑 Conceitos-Chave

<a id="tabela-11-2"></a>

| Conceito | Definição |
|----------|-----------|
| Custo econômico | Custo total de utilização de recursos, incluindo custos explícitos (desembolsos) e implícitos (custo de oportunidade dos recursos próprios). |
| Custo de oportunidade | Valor do melhor uso alternativo de um recurso; base do conceito de custo econômico. |
| Custo fixo (CF) | Custo que não varia com o nível de produção no curto prazo (aluguel, depreciação de equipamentos). |
| Custo variável (CV) | Custo que varia com o nível de produção (matéria-prima, mão de obra variável). |
| Custo marginal (CMg) | Acréscimo ao custo total decorrente da produção de uma unidade adicional: $\mathrm{CMg} = dCT/dq$. |
| Isocusto | Reta representando todas as combinações de insumos que geram o mesmo custo total: $C = wL + vK$. |
| Lema de Shephard | As demandas condicionadas (hicksianas) por insumos são obtidas derivando a função custo em relação ao preço de cada insumo: $L^*(w,v,q) = \partial C/\partial w$. |
| Economias de escala | Redução do custo médio de longo prazo à medida que a escala de produção aumenta. |
| Economias de escopo | Redução de custos ao produzir dois ou mais bens conjuntamente em vez de separadamente. |
| Curva envoltória | Curva de custo médio de longo prazo, tangente a cada curva de custo médio de curto prazo no ponto ótimo de escala de planta. |

<div class="caption-obj" markdown>
**Tabela 11.2 — Conceitos-chave.**
</div>

---

## ✏️ Exercícios

<a id="ex-11-1"></a>**Exercício 11.1.** 
Uma firma com função de produção Cobb-Douglas \(q = K^{1/2}L^{1/2}\) enfrenta preços de insumos \(w = 4\) e \(v = 1\).

(a) Derive as demandas condicionadas por insumos \(K^c(w, v, q)\) e \(L^c(w, v, q)\).

(b) Obtenha a função custo \(C(w, v, q)\).

(c) Verifique o Lema de Shephard calculando \(\partial C / \partial w\) e \(\partial C / \partial v\).

(d) Calcule o custo total para produzir \(q = 10\).

(e) Determine o custo marginal e o custo médio e mostre que são constantes. Explique por que isso ocorre (dica: relacione com rendimentos de escala).

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-1)

---

<a id="ex-11-2"></a>**Exercício 11.2.** 
Considere a função de custo total de curto prazo \(CT(q) = 100 + 10q - 2q^2 + q^3/3\).

(a) Identifique o custo fixo e o custo variável.

(b) Derive as expressões de CMe, CVMe e CMg.

(c) Encontre o nível de produção que minimiza o CMe e o nível que minimiza o CVMe.

(d) Verifique que o CMg cruza o CMe e o CVMe nos respectivos pontos de mínimo.

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-2)

---

<a id="ex-11-3"></a>**Exercício 11.3.** 
Uma firma opera com a tecnologia \(q = \min\{K, 2L\}\) e enfrenta preços \(v = 8\) e \(w = 2\).

(a) Derive a função custo \(C(q)\).

(b) Calcule CMe e CMg. São constantes? Justifique.

(c) Compare com o caso de uma Cobb-Douglas com rendimentos constantes. Em que se assemelham os custos?

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-3)

---

<a id="ex-11-4"></a>**Exercício 11.4.** 
Explique graficamente e algebricamente por que a curva de custo médio de longo prazo é a envoltória das curvas de custo médio de curto prazo. Use o caso de uma firma com função de produção \(q = K^{1/3}L^{1/3}\) e preços de insumos \(w = v = 1\) para:

(a) Derivar a função custo de longo prazo.

(b) Fixar \(\bar{K} = 4\) e derivar a função custo de curto prazo.

(c) Mostrar que \(\mathrm{CMe}_{LP}(q) \leq \mathrm{CMe}_{CP}(q; \bar{K}=4)\) para todo \(q\), com igualdade em um ponto específico.

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-4)

---

<a id="ex-11-5"></a>**Exercício 11.5.** 
Uma firma produz com a tecnologia \(q = AL^{\alpha}K^{\beta}\), onde \(\alpha + \beta = 1\) (rendimentos constantes de escala).

(a) Mostre que a função custo é linear em \(q\): \(C(w, v, q) = c(w, v) \cdot q\), onde \(c(w, v)\) é o custo unitário.

(b) Derive a expressão de \(c(w, v)\) e mostre que ele é homogêneo de grau 1 nos preços dos insumos.

(c) Mostre que, neste caso, \(\mathrm{CMg} = \mathrm{CMe} = c(w, v)\) — o custo marginal é constante e igual ao custo médio.

(d) Interprete economicamente: por que rendimentos constantes de escala implicam custos marginais constantes?

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-5)

---

<a id="ex-11-6"></a>**Exercício 11.6.** *(Fácil)*
Considere a função de custo \(C(q) = 100 + 4q + q^2\).

(a) Identifique o custo fixo e o custo variável.

(b) Derive as expressões de CMg, CMe e CVMe.

(c) Determine o nível de produção \(q^*\) para o qual \(\mathrm{CMg} = \mathrm{CMe}\). Qual o valor do custo médio nesse ponto?

(d) Interprete economicamente: o que representa o ponto \(q^*\)?

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-6)

---

<a id="ex-11-7"></a>**Exercício 11.7.** *(Fácil — Verdadeiro ou Falso)*
Julgue cada afirmação como Verdadeira (V) ou Falsa (F) e justifique brevemente:

(a) Custos irrecuperáveis (*sunk costs*) devem ser levados em conta ao determinar o nível ótimo de produção corrente.

(b) A curva de custo médio de longo prazo (LRAC) está sempre abaixo de qualquer curva de custo médio de curto prazo (SRAC).

(c) Se uma tecnologia exibe rendimentos constantes de escala, então o LRAC é constante.

(d) O Lema de Shephard afirma que as demandas condicionadas por insumos são obtidas derivando a função custo em relação ao preço do respectivo insumo.

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-7)

---

<a id="ex-11-8"></a>**Exercício 11.8.** *(Médio)*
Uma firma produz com a tecnologia Cobb-Douglas \(q = K^{0{,}3}L^{0{,}7}\) e enfrenta preços de insumos \(w = 10\) (trabalho) e \(r = 20\) (capital).

(a) Derive a função custo de longo prazo \(C(q)\).

(b) Calcule o custo marginal e o custo médio.

(c) Verifique o Lema de Shephard: confirme que \(\partial C / \partial w = L^c(w,r,q)\) e \(\partial C / \partial r = K^c(w,r,q)\).

(d) O que os rendimentos de escala implicam para o formato de \(C(q)\) neste caso?

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-8)

---

<a id="ex-11-9"></a>**Exercício 11.9.** *(Médio — Contexto Brasileiro)*
Um processador de soja no Brasil pode operar com duas plantas de tamanhos diferentes. A curva de custo médio de curto prazo da planta 1 (pequena) é \(\mathrm{SRAC}_1(q) = 50 + 2q\) e da planta 2 (grande) é \(\mathrm{SRAC}_2(q) = 200 + 0{,}5q\), onde \(q\) é medido em toneladas por dia.

(a) Encontre a curva de custo médio de longo prazo (LRAC) como a envoltória inferior das duas SRACs.

(b) A partir de qual nível de produção \(q^{**}\) a planta 2 se torna mais eficiente que a planta 1? Calcule o custo médio nesse ponto.

(c) Interprete economicamente: por que o processador deveria investir na planta 2 apenas quando a demanda esperada superar \(q^{**}\)?

(d) Como o "custo Brasil" (tributação, logística) poderia afetar esse limiar de escala eficiente?

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-9)

---

<a id="ex-11-10"></a>**Exercício 11.10.** *(Difícil)*
Prove que a função custo \(C(w, r, q)\) é **côncava** nos preços dos insumos \((w, r)\). Siga os passos:

(a) Mostre que, para qualquer \(\lambda \in [0,1]\) e dois vetores de preços \((w_1, r_1)\) e \((w_2, r_2)\):

\[
C(\lambda w_1 + (1-\lambda) w_2, \; \lambda r_1 + (1-\lambda) r_2, \; q) \;\geq\; \lambda C(w_1, r_1, q) + (1-\lambda) C(w_2, r_2, q)
\]

(b) *Dica:* Denote por \((K^*, L^*)\) a combinação ótima de insumos para o vetor de preços misturado \((\bar{w}, \bar{r}) = (\lambda w_1 + (1-\lambda)w_2, \lambda r_1 + (1-\lambda)r_2)\). Use o fato de que \(C(w_i, r_i, q) \leq w_i L^* + r_i K^*\) para \(i = 1, 2\) (por definição de mínimo).

(c) Interprete economicamente: o que a concavidade da função custo nos preços implica sobre o comportamento da firma frente a aumentos nos preços dos insumos?

[:material-arrow-right: Ver solução](../solucoes/cap11.md#ex-11-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2020 — Questão 6"
    Em um ano, uma empresa apresentou os seguintes dados contábeis: \$ 1 milhão de receitas, \$ 300 mil de compras de matérias primas, \$ 30 mil de despesas com água e energia elétrica, \$ 100 mil de gastos com a folha de salários e \$ 120 mil de gasto com o salário do proprietário da empresa. O empresário tem a opção de fechar sua empresa e alugar as instalações por \$ 200 mil por ano. Ele também tem duas ofertas de emprego: uma com salário anual de \$ 90 mil e outra com salário anual de \$ 150 mil. O proprietário somente pode aceitar uma dessas ofertas, caso decida fazê-lo, e seria obrigado a fechar seu negócio. Levando em conta essas informações e a teoria dos custos, indique quais das afirmações a seguir são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | O custo contábil anual da empresa é de \$ 550 mil. |
    | 1 | O custo econômico anual da empresa é de \$ 780 mil. |
    | 2 | O lucro econômico anual da empresa é de \$ 100 mil. |
    | 3 | Sendo racional, o proprietário deve continuar a operar sua empresa, pois o lucro econômico é positivo. |
    | 4 | O proprietário deveria fechar a sua empresa se tivesse registrado um custo irrecuperável de \$ 300 mil. |

    ??? success "Gabarito"
        **Respostas: V V F V F**

        **Justificativa por item:**

        - **Item 0 — V:** Custos contábeis (explícitos) = \$300k (matéria-prima) + \$30k (água/energia) + \$100k (salários) + \$120k (pró-labore) = **\$550k**.
        - **Item 1 — V:** Custo de oportunidade do trabalho do proprietário: \$150k (melhor oferta) − \$120k (pró-labore já pago) = \$30k adicional implícito. Custo de oportunidade das instalações: \$200k (aluguel). Custos implícitos = \$30k + \$200k = \$230k. Custo econômico = \$550k + \$230k = **\$780k**.
        - **Item 2 — F:** Lucro econômico = \$1.000k − \$780k = **\$220k**, não \$100k.
        - **Item 3 — V:** Como o lucro econômico é \$220k > 0, a empresa remunera todos os fatores acima de seu custo de oportunidade. O proprietário deve continuar operando.
        - **Item 4 — F:** Custos irrecuperáveis (*sunk costs*) **não devem influenciar** decisões correntes. O lucro econômico continua \$220k > 0 independentemente de custos já afundados. A decisão racional é continuar operando — o custo irrecuperável é irrelevante para a decisão prospectiva (Seção 11.1).

??? question "ANPEC 2018 — Questão 5"
    Com relação aos custos de produção, indique quais das afirmações abaixo são verdadeiras e quais são falsas:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Quando há níveis discretos do fator fixo, a curva de custo marginal de longo prazo será composta por trechos das curvas de custo marginal de curto prazo associados a cada nível de fator fixo. |
    | 1 | No caso de uma empresa com duas fábricas, a curva de custo marginal de curto prazo da empresa é a soma vertical das curvas de custo marginal de curto prazo das duas fábricas. |
    | 2 | A função de custo total quadrática do tipo \(CT = aq + bq^2\) resulta em uma curva de custo marginal linear. |
    | 3 | Uma função de custo total cúbica do tipo \(C = aq + bq^2 + cq^3\) resulta em curvas de custo médio e marginal em forma de U. |
    | 4 | Custos quase fixos independem do nível de produção, mas só precisam ser pagos se a empresa produzir uma quantidade positiva de bens. |

    ??? success "Gabarito"
        **Respostas: V F V V V**

        **Justificativa por item:**

        - **Item 0 — V:** Quando o capital assume apenas valores discretos (\(\bar{K}_1, \bar{K}_2, \ldots\)), cada nível gera uma curva de CMg de curto prazo. A curva de CMg de longo prazo é obtida selecionando, para cada nível de produto, o trecho da CMg de curto prazo correspondente ao nível de capital que minimiza o custo total — formando uma curva "composta" por segmentos das diversas CMg de curto prazo. Isso é a contrapartida discreta da envoltória contínua (Seção 11.7).
        - **Item 1 — F:** A soma é **horizontal**, não vertical. Com duas fábricas, a firma aloca produção de modo a igualar os custos marginais entre elas. Para cada nível de CMg, soma-se as quantidades produzidas nas duas fábricas — essa é a soma horizontal. A soma vertical seria somar os custos marginais a cada quantidade, o que não descreve corretamente a agregação de CMg entre plantas.
        - **Item 2 — V:** \(CT = aq + bq^2 \implies CMg = a + 2bq\), que é uma função linear de \(q\).
        - **Item 3 — V:** \(CMe = a + bq + cq^2\) e \(CMg = a + 2bq + 3cq^2\). Para os parâmetros convencionais (\(b < 0, c > 0\)), ambas são parábolas com concavidade para cima, gerando o formato de U clássico (Seção 11.5).
        - **Item 4 — V:** Custos quase fixos são custos que não variam com o nível de produção, mas que só existem quando a firma produz (\(q > 0\)). Diferem dos custos fixos tradicionais, que são incorridos mesmo com \(q = 0\). Exemplos incluem o custo de aquecimento de um forno industrial ou a equipe mínima de operação.

??? question "ANPEC 2022 — Questão 5"
    Com relação à Teoria dos Custos, julgue os itens a seguir:

    | Item | Afirmação |
    |------|-----------|
    | 0 | Uma empresa produz mensalmente um bem a partir de capital (K) e trabalho (L) de acordo com dois processos de produção do tipo Leontief (de proporções fixas): o primeiro processo é dado por \(f_1(K,L) = \min\{K, L/4\}\) e o segundo processo é dado por \(f_2(K,L) = \min\{K/5, L\}\). Denote por Q a quantidade mensal produzida do bem. O custo de oportunidade do capital é \(v = 1\) e o do trabalho é \(w = 2\). Então, a função custo da empresa é \(c(Q) = 7Q\). |
    | 1 | Um bem é produzido numa quantidade q a partir de capital (K) e trabalho (L), com os respectivos preços fatoriais denotados por \(v > 0\) e \(w > 0\). Um econometrista estimou a seguinte função de custo do tipo Cobb-Douglas: \(c(v, w, q) = 2v^{5/8}w^{3/8}\). Suponha que \(v = 1\) e \(w = 256 = 2^8\). Então, a demanda fatorial por capital é \(K = 16\). |
    | 2 | Uma empresa possui função de produção dada por \(f(K, L) = \sqrt{KL}\), em que K denota o capital e L o trabalho. No curto prazo, o capital está fixo em \(\bar{K} = 4\). Suponha que o preço fatorial do capital é \(v = 1\) e que o preço fatorial do trabalho é \(w = 4\). Então, a função de custo de curto prazo é \(c(q) = 4 + q^2\). |
    | 3 | No curto prazo, se o preço do produto é inferior ao custo médio mínimo, então a firma necessariamente não produzirá. |
    | 4 | Uma firma tem função de produção \(f(K, L) = \min\{K + L, 2L\}\). Sejam \(v, w > 0\) os custos de oportunidade do capital e do trabalho, respectivamente. Suponha que \(v < w\). O fator trabalho está limitado a um máximo de 10 unidades. Então, a restrição sobre o trabalho só afeta a função custo da firma para níveis de produção acima de 20 unidades de produto. |

    ??? success "Gabarito"
        **Respostas: V F V F V**

        **Justificativa por item:**

        - **Item 0 — V:** Processo 1 usa 1K e 4L por unidade: custo unitário = \(1 \cdot 1 + 4 \cdot 2 = 9\). Processo 2 usa 5K e 1L por unidade: custo unitário = \(5 \cdot 1 + 1 \cdot 2 = 7\). Como \(7 < 9\), a firma usa apenas o processo 2 e \(c(Q) = 7Q\).
        - **Item 1 — F:** Pelo Lema de Shephard: \(K = \partial c / \partial v = 2 \cdot \frac{5}{8} v^{-3/8} w^{3/8} = \frac{5}{4} v^{-3/8} w^{3/8}\). Com \(v = 1\) e \(w = 256\): \(K = \frac{5}{4} \cdot 1 \cdot 256^{3/8} = \frac{5}{4} \cdot (2^8)^{3/8} = \frac{5}{4} \cdot 2^3 = \frac{5}{4} \cdot 8 = 10\), não 16. O Lema de Shephard (Seção 11.4) é a ferramenta para resolver este item.
        - **Item 2 — V:** \(q = \sqrt{4L} = 2\sqrt{L} \implies L = q^2/4\). Custo de curto prazo: \(c = v\bar{K} + wL = 1 \cdot 4 + 4 \cdot q^2/4 = 4 + q^2\).
        - **Item 3 — F:** No curto prazo, se \(P < \mathrm{CMe}_{min}\) mas \(P > \mathrm{CVMe}_{min}\), a firma produz — ela cobre seus custos variáveis e parte dos custos fixos. A firma só encerra produção se \(P < \mathrm{CVMe}_{min}\) (ponto de fechamento). A condição é sobre o CVMe, não sobre o CMe (Seção 11.5).
        - **Item 4 — V:** \(f(K,L) = \min\{K+L, 2L\}\). Com \(v < w\), a firma prefere usar mais K e menos L. Para \(q = \min\{K+L, 2L\}\), no ótimo com \(v < w\): \(K+L \geq 2L\) (i.e., \(K \geq L\)), de modo que \(q = 2L\), logo \(L = q/2\). A restrição \(L \leq 10\) se torna ativa quando \(q/2 > 10\), ou seja, \(q > 20\).

---

## 🔬 Pesquisa em Ação

??? pesquisa "Christensen, Laurits R.; Greene, William H. (1976). [Economies of Scale in U.S. Electric Power Generation](https://doi.org/10.1086/260470). *Journal of Political Economy*, 84(4, Part 1), 655-676. DOI: [10.1086/260470](https://doi.org/10.1086/260470)"
    **Pergunta central:** A indústria de geração de energia elétrica apresenta economias de escala? E, se sim, até que ponto? Essa questão era central para o debate regulatório dos anos 1970: se houvesse economias de escala ilimitadas, o monopólio natural seria a estrutura eficiente e a regulação seria justificada; se as economias de escala se esgotassem a partir de certo porte, a competição entre firmas seria viável.

    **Método:** Christensen e Greene estimaram funções de custo translog (*transcendental logarithmic*) — uma forma funcional flexível que não impõe *a priori* o formato da curva de CMe de longo prazo — para uma amostra de 114 empresas de geração de energia elétrica nos Estados Unidos em 1970. A função translog permite que o formato de U do CMe emerja dos dados, em vez de ser imposto pela especificação funcional.

    **Resultado principal:** Os resultados mostraram que a curva de CMe de longo prazo tinha de fato formato de U: economias de escala significativas para firmas pequenas e médias, custos médios aproximadamente constantes para firmas com geração acima de 20 bilhões de kWh, e leves deseconomias para as maiores. Isso contrastava com estimativas anteriores (usando formas funcionais restritivas como a Cobb-Douglas), que encontravam economias de escala ilimitadas — artefato da imposição de retornos crescentes homogêneos.

    **Relevância para o capítulo:** O artigo é uma aplicação empírica direta dos conceitos das Seções 11.4 e 11.7: estimação da função custo, teste de economias de escala e determinação da escala mínima eficiente. A lição metodológica é poderosa: a escolha da forma funcional para a função custo (Cobb-Douglas vs. translog) pode alterar dramaticamente as conclusões sobre a estrutura de mercado eficiente. No Brasil, o setor elétrico passou por reformas estruturais nos anos 1990 e 2000, com a separação entre geração, transmissão e distribuição — decisão que pressupõe, implicitamente, que as economias de escala na geração não são ilimitadas, consistente com os achados de Christensen e Greene.

??? pesquisa "Bustos, Paula; Caprettini, Bruno; Ponticelli, Jacopo. (2016). [Agricultural Productivity and Structural Transformation: Evidence from Brazil](https://doi.org/10.1257/aer.20131061). *American Economic Review*, 106(6), 1320-1365. DOI: [10.1257/aer.20131061](https://doi.org/10.1257/aer.20131061)"
    **Pergunta central:** Como choques de produtividade na agricultura — que reduzem os custos de produção — afetam a estrutura produtiva e o emprego nas economias locais? A redução de custos no setor agrícola libera mão de obra para outros setores ou intensifica a produção agrícola?

    **Método:** Os autores exploraram a introdução da soja geneticamente modificada (transgênica) no Brasil a partir de 2003 como um "experimento natural". A soja GM reduziu significativamente os custos de produção — especialmente os custos com herbicidas e mão de obra — em regiões com solo e clima adequados. Usando variação geográfica na adequação à soja GM, os autores estimaram o efeito causal da redução de custos agrícolas sobre a realocação de trabalho entre setores.

    **Resultado principal:** Municípios mais adequados à soja GM experimentaram: (i) aumento da área plantada com soja e redução da área de outras culturas; (ii) queda no emprego agrícola (a soja GM é poupadora de trabalho); (iii) crescimento do emprego industrial nos municípios afetados. Porém, o efeito sobre a indústria dependia do tipo de inovação: tecnologias poupadoras de trabalho (como a soja GM) liberavam mão de obra para a indústria, enquanto tecnologias que aumentavam o valor do produto por hectare (como a cana-de-açúcar para etanol) atraíam mais trabalhadores para a agricultura.

    **Relevância para o capítulo:** O artigo conecta diretamente a Seção 11.6 (deslocamentos nas curvas de custo por progresso técnico) e a Seção 11.7 (economias de escala). A adoção da soja GM representou uma redução de custos enviesada — poupadora de trabalho — que deslocou a curva de custo das fazendas para baixo e alterou a razão ótima capital/trabalho. Além disso, a expansão da escala de produção nas fazendas de soja ilustra as economias de escala discutidas no Box Brasil sobre agropecuária: a tecnologia GM favoreceu desproporcionalmente os grandes produtores, que podiam adquirir as sementes modificadas e o maquinário complementar.

??? pesquisa "Syverson, Chad. (2011). [What Determines Productivity?](https://doi.org/10.1257/jel.49.2.326) *Journal of Economic Literature*, 49(2), 326–365. DOI: [10.1257/jel.49.2.326](https://doi.org/10.1257/jel.49.2.326)"
    **Pergunta central:** Por que firmas no mesmo setor e país têm produtividades tão diferentes — e, consequentemente, custos tão distintos? A dispersão de produtividade entre firmas é enorme: a firma no percentil 90 de produtividade de um setor tipicamente produz o dobro com os mesmos insumos que a firma no percentil 10. Quais são as fontes dessa heterogeneidade persistente?

    **Método:** Syverson realiza um levantamento abrangente da literatura empírica sobre determinantes da produtividade, organizando os fatores em duas categorias: (i) fatores internos à firma — gestão, tecnologia, capital humano, aprendizado — e (ii) fatores externos — competição de mercado, acesso a insumos, spillovers tecnológicos. A revisão cobre dezenas de estudos com dados em painel de firmas em múltiplos países, incluindo economias em desenvolvimento.

    **Resultado principal:** Competição de mercado mais intensa está entre os correlatos mais robustos de maior produtividade média e menor dispersão. Firmas expostas a maior competição têm incentivos para reduzir ineficiências X (custos acima do mínimo possível) e para adotar novas tecnologias mais rapidamente. Gestão de qualidade, por sua vez, responde por uma fração surpreendentemente grande da dispersão de produtividade entre firmas — até mesmo dentro do mesmo país e setor.

    **Relevância para o capítulo:** O artigo de Syverson conecta a teoria dos custos (Seções 11.5–11.7) à realidade empírica. Na teoria, assumimos que as firmas estão sempre sobre a curva de custo mínimo — mas na prática, ineficiência X (operar acima do custo mínimo) é ubíqua. A dispersão de custos entre firmas brasileiras, documentada por Ferreira e Rossi (2003) no contexto da abertura comercial, é exatamente o tipo de fenômeno que Syverson analisa em escala global. Para o Brasil especificamente, a heterogeneidade de produtividade entre firmas formais e informais, e entre regiões, é uma das principais fontes de ineficiência alocativa.

??? pesquisa "Benkard, C. Lanier. (2000). [Learning and Forgetting: The Dynamics of Aircraft Production.](https://doi.org/10.1257/aer.90.4.1034) *American Economic Review*, 90(4), 1034–1054. DOI: [10.1257/aer.90.4.1034](https://doi.org/10.1257/aer.90.4.1034)"
    **Pergunta central:** As firmas realmente "aprendem fazendo" — isto é, seus custos unitários caem com a experiência acumulada de produção? E, se a produção for interrompida, a firma "esquece" o que aprendeu, de modo que os custos voltam a subir?

    **Método:** Benkard utiliza dados detalhados de produção do avião comercial Lockheed L-1011 TriStar (1970–1984) para estimar uma curva de aprendizado que incorpora não apenas *learning by doing* (redução de custos com experiência acumulada), mas também *forgetting* (depreciação do conhecimento acumulado quando a taxa de produção cai). O modelo estima a função de custos de trabalho por unidade como função da experiência acumulada e da taxa corrente de produção, usando variação temporal na demanda por aeronaves como fonte de identificação.

    **Resultado principal:** Os custos de trabalho por unidade caíam substancialmente com a experiência acumulada — consistente com a curva de aprendizado clássica — mas o efeito de *forgetting* era igualmente importante: quando a produção desacelerava, os custos por unidade voltavam a subir significativamente. O estoque de conhecimento depreciava-se a uma taxa de aproximadamente 40% ao ano. Isso implica que a curva de aprendizado não é um caminho unidirecional de redução de custos: interrupções na produção destroem capital organizacional e elevam os custos novamente.

    **Relevância para o capítulo:** O artigo conecta diretamente a Seção 11.6 (deslocamentos nas curvas de custo) à dinâmica temporal dos custos. A curva de aprendizado é um mecanismo pelo qual a curva de CMe se desloca para baixo ao longo do tempo — mas o *forgetting* mostra que esse deslocamento pode ser parcialmente revertido. Para a indústria aeronáutica brasileira (Embraer), a lição é direta: manter ritmo de produção estável é crucial para preservar os ganhos de aprendizado e manter custos competitivos. Interrupções na linha de montagem — por choques de demanda ou reestruturações — podem elevar os custos unitários muito acima do que a experiência acumulada sugeriria.

??? pesquisa "Ferreira, Pedro C.; Rossi, José L. (2003). [New Evidence from Brazil on Trade Liberalization and Productivity Growth.](https://doi.org/10.1111/1468-2354.t01-1-00101) *International Economic Review*, 44(4), 1383–1405. DOI: [10.1111/1468-2354.t01-1-00101](https://doi.org/10.1111/1468-2354.t01-1-00101)"
    **Pergunta central:** A abertura comercial brasileira dos anos 1990, ao expor as firmas nacionais à competição internacional, reduziu seus custos de produção? Qual o mecanismo: disciplina competitiva (eliminação de ineficiência X) ou acesso a insumos importados de menor custo (deslocamento para baixo da função custo)?

    **Método:** Os autores usam um painel de firmas industriais brasileiras no período de abertura comercial (1985–1997), explorando variação setorial nas tarifas de importação como instrumento para identificação causal. A ideia é que setores com maior redução tarifária sofreram maior choque competitivo externo — e as firmas neles deveriam, se a hipótese de disciplina competitiva for verdadeira, apresentar maior crescimento de produtividade.

    **Resultado principal:** A abertura comercial causou aumento significativo da produtividade total dos fatores (PTF) nas firmas brasileiras, com magnitude maior nos setores mais expostos à competição estrangeira. Os autores estimam elasticidades da PTF em relação às tarifas de importação entre −0,3 e −0,5: uma redução de 10 pontos percentuais nas tarifas elevou a produtividade em 3–5%. O efeito operou principalmente via intensificação da concorrência, que forçou firmas a reduzir ineficiências internas — o mecanismo de disciplina competitiva de Syverson, aplicado ao Brasil.

    **Relevância para o capítulo:** O artigo é a contrapartida empírica brasileira da teoria de deslocamentos nas curvas de custo (Seção 11.6). A abertura comercial funcionou como um choque exógeno que forçou as firmas a se moverem em direção à curva de custo mínimo. Em termos gráficos, a abertura deslocou para *baixo* as curvas de CMg e CMe das firmas expostas à competição estrangeira — não via mudança tecnológica (que deslocaria a curva de produção), mas via eliminação de folgas organizacionais. O artigo ilustra a importância de distinguir, na análise de custos, entre a curva de custo teórica (o mínimo possível dada a tecnologia) e o custo efetivamente observado das firmas.

---

!!! box-mundo "Box Mundo 11.1 — Economias de escala na indústria de semicondutores: TSMC e a lei de Moore"

    **Contexto.** A Taiwan Semiconductor Manufacturing Company (TSMC), fundada em 1987, é hoje a maior fabricante contratada de chips do mundo, respondendo por mais de 50% da capacidade global de fundição de semicondutores avançados. Seus clientes incluem Apple, NVIDIA, AMD e Qualcomm. O setor de semicondutores oferece um dos exemplos mais extremos de economias de escala e de estrutura de custos dominada por custos fixos que existem na economia mundial.

    **Dados.** A construção de uma fábrica de chips de última geração (uma "fab") custa entre US$ 15 bilhões e US$ 20 bilhões — e esse custo tem crescido mais de 10% ao ano. A fab N5 da TSMC em Taiwan (processo de 5 nanômetros, inaugurada em 2020) custou aproximadamente US$ 17 bilhões. Uma vez construída, o custo marginal de produzir um wafer adicional é relativamente baixo: estimativas apontam para US$ 3.000–5.000 por wafer de 300mm para os nós mais avançados. O custo fixo da planta, amortizado ao longo de sua vida útil de 10–15 anos, representa mais de 70% do custo total por chip produzido.

    **Análise.** Em termos da teoria das curvas de custo (Seção 11.7), a estrutura de custos da TSMC exibe economias de escala maciças: o custo médio de longo prazo cai acentuadamente com o volume de chips produzidos, até que a planta opere próxima de sua capacidade máxima. A escala mínima eficiente de uma fab moderna é de cerca de 100.000 wafers por mês — o que explica por que apenas 3–4 empresas no mundo (TSMC, Samsung, Intel, e possivelmente a chinesa SMIC no futuro) conseguem operar com eficiência as tecnologias mais avançadas. A lei de Moore — a observação empírica de que o número de transistores por chip dobra aproximadamente a cada dois anos — é sustentada por investimentos crescentes em P&D (outro custo fixo elevado) que se tornam viáveis apenas com altíssima escala de produção. Para o Brasil, a ausência de uma indústria nacional de semicondutores de ponta é em grande parte consequência dessa estrutura de custos: a escala mínima eficiente do setor excede em muitas vezes o tamanho do mercado doméstico brasileiro, tornando a entrada economicamente inviável sem subsídios massivos do Estado.

    *Fontes: TSMC Annual Report (2023); International Technology Roadmap for Semiconductors (ITRS); Flamm, K. (2019). The Semiconductor Industry and the U.S. Economy. MIT Press.*

---

!!! box-mundo "Box Mundo 11.2 — O custo de oportunidade do lockdown: estimativas da OCDE"

    **Contexto.** Durante a pandemia de COVID-19 (2020–2021), governos de todo o mundo adotaram medidas de distanciamento social e lockdowns para conter a propagação do vírus. Do ponto de vista econômico, essas medidas representam um custo de oportunidade colossal — a produção econômica sacrificada em troca de vidas salvas. A Organização para a Cooperação e Desenvolvimento Econômico (OCDE) coordenou estimativas comparativas entre países que permitem avaliar esse tradeoff com dados empíricos.

    **Dados.** A contração do PIB em 2020 variou enormemente entre os países membros da OCDE. A zona do euro encolheu 6,4%; o Reino Unido, 9,4%; os EUA, apenas 3,4% (beneficiados por maior adoção de trabalho remoto). Entre os emergentes, a Índia contraiu 7,3%; o Brasil, 4,1% (dados: OCDE Economic Outlook, dezembro de 2020). Estimativas de custos de saúde e óbitos evitados são mais difíceis de quantificar, mas estudos do *National Bureau of Economic Research* (EUA) estimam o valor estatístico de uma vida (VSL) entre US$ 7 milhões e US$ 10 milhões nos EUA, e entre US$ 500 mil e US$ 1,5 milhão no Brasil, dependendo da metodologia.

    **Análise.** Em termos microeconômicos, a decisão de adotar um lockdown é um problema clássico de custo de oportunidade (Seção 11.1): o custo das restrições é a produção econômica sacrificada (PIB perdido); o benefício é a redução de mortes e sequelas de saúde. A comparação entre países revela que não existe uma relação simples entre o rigor das restrições e o custo econômico — economias com maior capacidade de trabalho remoto (serviços e tecnologia) sofreram contrações menores para o mesmo nível de restrições. Isso equivale, na linguagem da teoria dos custos, a ter uma curva de custo de adaptação mais favorável: a "tecnologia de resposta à pandemia" variou entre países, gerando diferentes funções custo para o mesmo objetivo (salvar vidas). Para o Brasil, a análise da OCDE sugere que os custos econômicos foram relativamente moderados em comparação com o PIB per capita, mas os custos em termos de saúde foram desproporcionalmente altos — reflexo de desigualdades no acesso a serviços de saúde que amplificam o custo de oportunidade social das crises.

    *Fontes: OCDE. (2021). OECD Economic Outlook, Volume 2020, Issue 2. Paris: OECD Publishing. DOI: 10.1787/39a88ab1-en; Viscusi, W. K. (2018). Pricing Lives: Guideposts for a Safer Society. Princeton University Press.*

---

!!! box-mundo "Box Mundo 11.3 — Custos irrecuperáveis na indústria aeronáutica: o caso Concorde"

    **Contexto.** O Concorde foi um avião supersônico comercial desenvolvido conjuntamente pela França e pelo Reino Unido a partir de 1962, com os primeiros voos comerciais em 1976 e operações encerradas em 2003. Do ponto de vista da história econômica, o Concorde é o exemplo mais citado de *sunk cost fallacy* em projetos governamentais: décadas de investimentos continuaram sendo realizados mesmo quando as estimativas econômicas tornaram-se claramente desfavoráveis.

    **Dados.** O custo total do desenvolvimento do Concorde foi de aproximadamente £1,3 bilhão (valores da época, equivalentes a mais de £10 bilhões em valores de 2020). Apenas 14 aeronaves foram produzidas para uso comercial — números insuficientes para recuperar qualquer fração dos custos fixos de desenvolvimento. Cada voo transatlântico (Londres–Nova York em 3h 30min) consumia 25.000 litros de combustível, contra 60.000 litros de um Boeing 747 para cobrir a mesma rota em 7–8 horas — ou seja, o Concorde queimava mais de 4 vezes mais combustível por passageiro-km. Com a crise do petróleo de 1973, o custo operacional por assento disparou para níveis que tornaram a rentabilidade praticamente impossível sem subsídios governamentais contínuos.

    **Análise.** Economicamente, o Concorde exemplifica com clareza a falácia dos custos irrecuperáveis (Seção 11.1). O argumento frequentemente usado para continuar o projeto era "já investimos muito para parar agora" (*we have too much invested to stop*) — o exato raciocínio que a teoria econômica identifica como irracional. Os custos de desenvolvimento já realizados eram irrecuperáveis: independentemente de continuar ou não, o dinheiro estava gasto. A decisão correta, em cada ponto do tempo, era avaliar apenas os custos e benefícios futuros: custará mais operar o Concorde ou encerrá-lo? Somente quando os custos de operação não puderam mais ser cobertos pelas receitas de bilhetes (após o acidente de 2000 e os efeitos do 11 de setembro de 2001 sobre a aviação de luxo) é que os governos finalmente encerraram o projeto. O "efeito Concorde" tornou-se um termo consagrado na psicologia econômica e na teoria das organizações para descrever esse tipo de comprometimento excessivo com investimentos passados.

    *Fontes: Owen, K. (2001). Concorde: Story of a Supersonic Pioneer. Science Museum. London; Arkes, H. R.; Blumer, C. (1985). The Psychology of Sunk Cost. Organizational Behavior and Human Decision Processes, 35(1), 124–140.*

## 📚 Referências do Capítulo

- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Cap. 5 (Seções 5.C–5.D).
- Nicholson, Walter, e Christopher M. Snyder. 2017. [*Microeconomic Theory: Basic Principles and Extensions*](https://books.google.com/books/about/Microeconomic_Theory_Basic_Principles_an.html?id=YdkhCwAAQBAJ). 12ª ed. Boston: Cengage Learning. Cap. 10.
- Pindyck, Robert S., e Daniel L. Rubinfeld. 2013. [*Microeconomia*](https://books.google.com/books/about/Microeconomics.html?id=h6e7AAAAIAAJ). 8ª ed. São Paulo: Pearson. Cap. 7.
- Varian, Hal R. 2015. [*Microeconomia: Uma Abordagem Moderna*](https://books.google.com/books/about/Intermediate_Microeconomics_with_Calculu.html?id=9mabDwAAQBAJ). 9ª ed. Rio de Janeiro: Elsevier. Cap. 20–22.
- Benkard, C. Lanier. 2000. "[Learning and Forgetting: The Dynamics of Aircraft Production.](https://doi.org/10.1257/aer.90.4.1034)" *American Economic Review*, 90(4), 1034–1054.
