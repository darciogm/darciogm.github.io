# 10.4 Braços ou Máquinas? A Elasticidade de Substituição

Quando o salário mínimo sobe, o iFood substitui motoboys por drones? Quando o juro cai, a montadora troca robôs por operários? A TMST nos diz *que* a firma pode trocar um insumo por outro — mas não responde o quanto essa troca é fácil ou dolorosa. É aqui que entra a elasticidade de substituição: um único número que resume se a tecnologia da firma é flexível como um canivete suíço ou rígida como uma receita de bolo.

A **elasticidade de substituição** é o parâmetro que responde a essa pergunta. Trata-se de uma medida adimensional que sintetiza a curvatura da isoquanta e, portanto, a facilidade de substituição entre insumos. Esse conceito é central não apenas para a teoria da produção, mas também para a análise da distribuição funcional da renda e o debate contemporâneo sobre automação e desigualdade.

É importante compreender a intuição geométrica por trás da definição: a elasticidade de substituição captura o quanto a isoquanta "se dobra". Uma isoquanta muito curvada (quase em forma de L) implica baixa elasticidade — mover-se ao longo dela exige uma grande variação percentual na TMST para obter uma pequena variação na razão \(K/L\). Uma isoquanta mais reta implica alta elasticidade — uma pequena mudança na TMST já provoca uma grande mudança na proporção de insumos. Matematicamente, \(\sigma\) é o inverso da elasticidade da TMST em relação à razão \(K/L\): quanto menos a isoquanta "resiste" ao movimento, maior é \(\sigma\).

A ligação com a distribuição de renda é fundamental. Sob mercados competitivos, o salário real iguala o produto marginal do trabalho e o retorno ao capital iguala o produto marginal do capital. A participação do trabalho na renda é \(wL/q = \mathrm{PMg}_L \cdot L/q\). Para a Cobb-Douglas com CRS, essa participação é sempre \(\beta\) — constante, independentemente dos preços dos fatores. Para a CES com \(\sigma \neq 1\), a participação do trabalho varia com \(w/r\): se \(\sigma > 1\), uma queda no custo do capital eleva a participação do capital; se \(\sigma < 1\), ocorre o contrário. Esse mecanismo está no centro das preocupações de economistas como Lawrence Katz, Alan Krueger e, mais recentemente, Daron Acemoglu sobre os impactos distributivos da automação. Acemoglu e Restrepo (2019) modelam o efeito da automação como substituição de *tarefas* antes realizadas por trabalho: quando \(\sigma\) é alto, a automação desloca trabalhadores para novas tarefas; quando \(\sigma\) é baixo, o deslocamento é mais doloroso e lento — exatamente a tensão que define o debate sobre IA e futuro do trabalho.[^black-knight-prod]

[^black-knight-prod]: O Black Knight de Monty Python é o caso extremo de rendimentos marginais decrescentes do trabalho sob ataque tecnológico. A cada braço cortado pelo Rei Arthur (automação), sua capacidade produtiva de luta cai drasticamente. Mas ele insiste: "'Tis but a scratch!" — exatamente como o gerente que acredita que mais um funcionário numa fábrica já automatizada vai fazer diferença. O Black Knight é, essencialmente, um trabalhador com \(\sigma \approx 0\): não há substituição possível entre braços e determinação.

!!! definition "Elasticidade de substituição"
    A **elasticidade de substituição** \(\sigma\) mede a facilidade com que a firma pode substituir um insumo por outro ao longo de uma isoquanta. Formalmente:

    \[
    \sigma = \frac{d \ln(K/L)}{d \ln(\mathrm{TMST}_{L,K})} = \frac{d \ln(K/L)}{d \ln(f_L / f_K)}
    \label{eq:10.8} \tag{10.8}
    \]

Intuitivamente, \(\sigma\) capta a curvatura da isoquanta:

- Se \(\sigma \to \infty\), os insumos são **substitutos perfeitos** (isoquanta linear).
- Se \(\sigma \to 0\), os insumos são **complementares perfeitos** (isoquanta em L, Leontief).
- Se \(\sigma = 1\), temos o caso intermediário da **Cobb-Douglas**.

A elasticidade de substituição é um parâmetro central na análise da distribuição funcional da renda, pois determina como mudanças nos preços relativos dos fatores afetam as participações do capital e do trabalho na renda total. Quando \(\sigma > 1\), um barateamento relativo do capital leva a uma substituição tão intensa que a participação do capital na renda *aumenta*; quando \(\sigma < 1\), o efeito é o oposto. Esse mecanismo está no centro do debate contemporâneo sobre desigualdade, como argumentou Thomas Piketty em *O Capital no Século XXI* (2014).

!!! idea "Intuição Econômica"
    **Em uma frase:** A elasticidade de substituição mede o quão fácil é trocar máquinas por pessoas (ou vice-versa) sem perder produção.

    **Pense assim:** Em um call center, substituir atendentes humanos por chatbots de IA é relativamente fácil (elasticidade alta). Já em uma cirurgia cardíaca, trocar o cirurgião por um robô é muito mais difícil (elasticidade baixa). Quanto mais rígida a receita de produção, menor a elasticidade.

    **Por que isso importa:** A elasticidade de substituição determina quem ganha e quem perde quando o salário mínimo sobe ou quando a automação avança — questões centrais no debate sobre desigualdade e futuro do trabalho no Brasil.

### Demonstração: Elasticidade de substituição para Cobb-Douglas

!!! proof "Demonstração: \(\sigma = 1\) para a função Cobb-Douglas"
    Considere a função de produção Cobb-Douglas:

    \[
    q = A K^{\alpha} L^{\beta}
    \]

    **Passo 1.** Calculamos os produtos marginais:

    \[
    f_K = \alpha A K^{\alpha - 1} L^{\beta}, \qquad f_L = \beta A K^{\alpha} L^{\beta - 1}
    \]

    **Passo 2.** A TMST é:

    \[
    \mathrm{TMST}_{L,K} = \frac{f_L}{f_K} = \frac{\beta A K^{\alpha} L^{\beta - 1}}{\alpha A K^{\alpha - 1} L^{\beta}} = \frac{\beta}{\alpha} \cdot \frac{K}{L}
    \]

    **Passo 3.** Portanto:

    \[
    \ln\left(\frac{K}{L}\right) = \ln\left(\frac{\alpha}{\beta}\right) + \ln(\mathrm{TMST}_{L,K})
    \]

    **Passo 4.** Diferenciando:

    \[
    \sigma = \frac{d \ln(K/L)}{d \ln(\mathrm{TMST}_{L,K})} = 1
    \]

    Portanto, a elasticidade de substituição da função Cobb-Douglas é unitária, independentemente dos valores de \(\alpha\) e \(\beta\). \(\blacksquare\)

!!! example "Exemplo: Elasticidade de substituição na indústria brasileira"
    A elasticidade de substituição tem implicações diretas para o mercado de trabalho. Quando \(\sigma\) é alto, as firmas substituem trabalho por capital (automação) com relativa facilidade. A literatura empírica aponta valores de \(\sigma\) entre 0,4 e 0,6 para o setor manufatureiro em diversas economias (Chirinko, 2008), e estudos com dados brasileiros encontram valores consistentemente abaixo de 1. Isso indica que capital e trabalho são complementares — mas não tanto quanto no caso Leontief puro (\(\sigma = 0\)). Esse grau intermediário de complementaridade ajuda a explicar por que a automação industrial desloca trabalhadores de forma menos abrupta do que ocorreria com \(\sigma\) mais elevado, mas ainda assim gera pressão sobre ocupações de baixa qualificação.

??? exercicio-resolvido "Exercício Resolvido 10.4"
    **Enunciado:** Uma firma opera com a função de produção CES \(q = \left[0{,}5 K^{-1} + 0{,}5 L^{-1}\right]^{-1}\). Calcule a elasticidade de substituição e a TMST quando \(K = 8\) e \(L = 2\).

    **Dados:** \(\delta = 0{,}5\), \(\rho = -1\), \(\gamma = 1\).

    **Resolução:**

    **Passo 1 — Elasticidade de substituição**

    Para a CES, \(\sigma = \frac{1}{1 - \rho} = \frac{1}{1 - (-1)} = \frac{1}{2} = 0{,}5\).

    **Passo 2 — Produto total**

    \[
    q = \left[0{,}5 \cdot 8^{-1} + 0{,}5 \cdot 2^{-1}\right]^{-1} = \left[0{,}5 \cdot 0{,}125 + 0{,}5 \cdot 0{,}5\right]^{-1} = \left[0{,}0625 + 0{,}25\right]^{-1} = (0{,}3125)^{-1} = 3{,}2
    \]

    **Passo 3 — TMST**

    Para a CES: \(\mathrm{TMST}_{L,K} = \frac{1 - \delta}{\delta} \left(\frac{K}{L}\right)^{1-\rho} = \frac{0{,}5}{0{,}5} \left(\frac{8}{2}\right)^{1-(-1)} = 1 \cdot 4^{2} = 16\)

    **Resultado:** \(\sigma = 0{,}5\), \(q = 3{,}2\), \(\mathrm{TMST} = 16\).

    **Interpretação econômica:** Com \(\sigma = 0{,}5 < 1\), capital e trabalho são mais complementares do que na Cobb-Douglas. A TMST de 16 indica que, nessa combinação capital-intensiva (\(K/L = 4\)), a firma precisaria de 16 unidades adicionais de trabalho para compensar a perda de 1 unidade de capital — a substituição é muito difícil, justamente porque a baixa elasticidade torna os insumos pouco intercambiáveis. Esse padrão é compatível com setores industriais brasileiros como a petroquímica, onde a substituição entre trabalho e capital é limitada pela natureza dos processos produtivos.

!!! box-mundo "Box Mundo 10.2 — A elasticidade de substituição capital-trabalho na Europa"

    **Contexto:** A participação do trabalho na renda nacional — a fração do PIB que vai para salários e remunerações — declinou em quase todos os países desenvolvidos entre 1975 e 2012. Entender esse fenômeno exige estimar a elasticidade de substituição \(\sigma\) entre capital e trabalho: se \(\sigma > 1\), a queda no preço relativo do capital (impulsionada pela revolução das TIC e pela globalização) leva as firmas a substituir trabalho por capital tão intensamente que a participação do capital na renda *aumenta* e a do trabalho *cai*.

    **Dados:** Karabarbounis e Neiman (2014) compilaram dados de 59 países ao longo de três décadas e documentaram uma queda média da participação do trabalho na renda de aproximadamente **5 pontos percentuais** — um declínio expressivo e generalizável. O preço relativo dos bens de capital (máquinas, equipamentos) caiu em média 25% no mesmo período, refletindo os ganhos de produtividade na indústria de TI. No Brasil, o IBGE registra participação dos salários no valor adicionado em torno de 40–45%, abaixo da média de economias avançadas (50–55%).

    **Análise:** Usando uma especificação CES para a função de produção agregada, Karabarbounis e Neiman estimam \(\hat{\sigma} \approx 1{,}25\) — *acima* de 1. Isso significa que, com a queda no custo do capital, as firmas o substituíram pelo trabalho mais do que proporcionalmente, reduzindo a participação salarial. A implicação para a teoria da produção é direta: a escolha entre Cobb-Douglas (\(\sigma = 1\)) e CES (\(\sigma \neq 1\)) não é indiferente — ela determina previsões qualitativas distintas sobre distribuição de renda. Oberfield & Raval (2021, *Econometrica*), usando microdados de plantas industriais americanas, chegam a estimativas menores (\(\sigma \approx 0{,}7\)), ilustrando que a elasticidade de substituição é sensível ao nível de agregação analisado.

    **Fonte:** Karabarbounis, L.; Neiman, B. (2014). "The Global Decline of the Labor Share." *Quarterly Journal of Economics*, 129(1), 61–103. Oberfield, E.; Raval, D. (2021). "Micro Data and Macro Technology." *Econometrica*, 89(2), 703–732.
