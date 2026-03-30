# 18.10–18.11 Hotelling e Recursos

## 18.10 Os Números na Mesa: VPL, Taxa de Desconto e Decisão {#1810}

A teoria é bonita, mas o empresário quer números. Nesta seção, pegamos o VPL e a TIR e os colocamos para trabalhar num cenário concreto — um projeto de investimento avaliado a diferentes taxas de desconto. O resultado é uma lição visual sobre por que o Brasil, com juros historicamente altos, é um país hostil a projetos de longa maturação.

Considere um projeto com investimento inicial de R$ 100.000 e fluxos de caixa anuais conforme a tabela abaixo:

<a id="tabela-18-2"></a>

| Ano | Fluxo de caixa (R$) |
|---|---|
| 0 | −100.000 |
| 1 | 30.000 |
| 2 | 35.000 |
| 3 | 40.000 |
| 4 | 45.000 |

<div class="caption-obj" markdown>
**Tabela 18.2 — Fluxos de caixa do projeto de investimento.**
</div>

A TIR deste projeto é aproximadamente 15,2%. A [Tabela 18.3](#tabela-18-3) mostra o VPL para diferentes taxas de desconto:

<a id="tabela-18-3"></a>

| Taxa de desconto (\(r\)) | VPL (R$) | Decisão |
|---|---|---|
| 5% | 35.460 | Aceitar |
| 8% | 24.689 | Aceitar |
| 10% | 18.444 | Aceitar |
| 12% | 12.658 | Aceitar |
| 15% | 4.474 | Aceitar |
| 15,2% (TIR) | ≈ 0 | Indiferente |
| 18% | −5.536 | Rejeitar |
| 20% | −10.648 | Rejeitar |
| 25% | −22.560 | Rejeitar |

<div class="caption-obj" markdown>
**Tabela 18.3 — VPL, taxa de desconto e decisão de investimento.**
</div>

A tabela ilustra dois pontos fundamentais: (i) o VPL é decrescente na taxa de desconto; (ii) projetos viáveis a juros baixos podem se tornar inviáveis quando a taxa de juros sobe — um problema particularmente relevante no contexto brasileiro de juros historicamente elevados. Note que, a uma taxa de 5% (típica de economias avançadas), o projeto gera R$ 35.460 de valor; a 15% (taxa real elevada), gera apenas R$ 4.474 — o projeto mal se sustenta. A 18%, é rejeitado. A mesma tecnologia, o mesmo projeto, a mesma demanda — apenas a taxa de juros difere, e a decisão se inverte.

!!! box-mundo "Box Mundo 18.2 — Stern vs. Nordhaus: a taxa de desconto e as mudanças climáticas"

    **Contexto:** Um dos debates mais acalorados em economia ambiental nas últimas décadas gira em torno da taxa de desconto a ser usada na avaliação de políticas climáticas. Como os benefícios de reduzir emissões hoje se materializam em 50, 100 ou 200 anos, a escolha da taxa de desconto tem consequências dramáticas sobre as conclusões.

    **Dados:** O Stern Review (2006), encomendado pelo governo britânico, usou uma taxa de desconto social de ~1,4% ao ano e concluiu que os custos das mudanças climáticas equivaleriam a uma perda permanente de 5–20% do PIB global, justificando ação imediata e agressiva. William Nordhaus (Nobel 2018), usando uma taxa de ~5–6% calibrada por taxas de mercado, concluiu que a política ótima seria uma redução gradual de emissões, com custo presente muito menor. A diferença no VPL dos danos climáticos entre as duas abordagens é de dezenas de trilhões de dólares.

    **Análise:** A divergência ilustra perfeitamente a sensibilidade do VPL à taxa de desconto discutida na [Seção 18.6](ativos-investimento.md#186). Stern argumentou que questões intergeracionais exigem uma taxa de desconto social próxima de zero — seria eticamente indefensável descontar o bem-estar de gerações futuras. Nordhaus contrapôs que taxas de desconto devem refletir preferências e oportunidades reais de investimento: se o capital rende 5% ao ano, investir em mitigação que rende menos que isso é ineficiente. A fórmula de Ramsey, \(r = \rho + \eta \cdot g\), onde \(\rho\) é a taxa de desconto puro, \(\eta\) a elasticidade da utilidade marginal e \(g\) o crescimento do consumo, está no centro do debate.

    **Para refletir:** Se a taxa de desconto "correta" para políticas climáticas é tão incerta, que implicações isso tem para a robustez das análises de custo-benefício em geral?

---

!!! box-brasil "🇧🇷 Box Brasil 18.2 — Por que os juros brasileiros são historicamente altos?"
    O Brasil é conhecido internacionalmente por praticar uma das taxas de juros reais mais elevadas do mundo. A taxa Selic — a taxa básica de juros definida pelo Comitê de Política Monetária (Copom) do [Banco Central do Brasil](https://www.bcb.gov.br) — atingiu níveis estratosféricos ao longo das últimas décadas.

    **Evolução histórica da Selic:**

    - Nos anos 1990 (pós-Plano Real), a taxa Selic real frequentemente superava 20% ao ano.
    - Entre 2003 e 2012, houve redução gradual, mas a Selic real ainda oscilava entre 5% e 10% ao ano.
    - Em 2020, durante a pandemia de COVID-19, a Selic nominal atingiu o mínimo histórico de 2% ao ano (taxa real negativa).
    - A partir de 2021, o ciclo de aperto monetário elevou a Selic a 13,75% ao ano em 2022, com taxa real em torno de 7-8%.

    **Por que os juros são tão altos? Principais hipóteses:**

    1. **Dominância fiscal**: a elevada dívida pública e a percepção de risco fiscal exigem prêmios de risco maiores para financiamento do governo. Quanto maior a desconfiança sobre a sustentabilidade fiscal, maiores os juros que o [Tesouro Nacional](https://www.tesouronacional.fazenda.gov.br) precisa oferecer.

    2. **Crédito direcionado e segmentação**: uma parcela significativa do crédito no Brasil é direcionada ([BNDES](https://www.bndes.gov.br), crédito rural, habitacional) a taxas subsidiadas. Isso reduz a eficácia da política monetária, exigindo uma Selic mais alta para atingir o mesmo efeito contracionista sobre a parcela livre do crédito.

    3. **Inércia inflacionária e indexação**: a memória inflacionária do período de hiperinflação (1980-1994) e mecanismos de indexação residuais tornam as expectativas de inflação mais resistentes, exigindo juros mais altos para ancorar expectativas.

    4. **Incerteza jurisdicional**: instabilidade regulatória, mudanças frequentes de regras tributárias e insegurança jurídica elevam o prêmio de risco exigido por investidores.

    5. **Baixa taxa de poupança doméstica**: a taxa de poupança bruta do Brasil (~15% do PIB) é significativamente inferior à de outros emergentes como China (~45%) e Índia (~30%), pressionando os juros de equilíbrio para cima.

    **Impacto sobre o investimento privado:**

    A taxa de investimento brasileira (Formação Bruta de Capital Fixo / PIB) oscila em torno de 15-18%, bem abaixo dos ~25% considerados necessários para sustentar crescimento robusto. Juros elevados encarecem o custo de uso do capital (\(c_K = p_K(r + \delta)\)), tornando inviáveis projetos que seriam rentáveis em ambientes de juros mais baixos.

    Dados do BNDES mostram que, historicamente, o banco de desenvolvimento desempenhou um papel de "compensação" parcial, oferecendo crédito de longo prazo a taxas subsidiadas (TJLP, depois TLP). Contudo, a partir de 2017, a substituição da TJLP pela TLP (atrelada a taxas de mercado) reduziu esse subsídio, aproximando o custo do crédito do BNDES ao custo de mercado.

    **Consequências para a avaliação de projetos:**

    Conforme a tabela de VPL apresentada na seção anterior, projetos que seriam viáveis a uma taxa de desconto de 5% (como em muitos países desenvolvidos) tornam-se inviáveis a 15% ou 20% (taxas reais historicamente observadas no Brasil). Isso representa um viés contra investimentos de longo prazo, especialmente em infraestrutura, pesquisa e desenvolvimento, e indústrias capital-intensivas.

---

## 18.11 Extrair Hoje ou Deixar no Solo: A Regra de Hotelling {#1811}

!!! info "Material Avançado"
    O modelo completo de Hotelling com custo de extração crescente, backstop technology e incerteza sobre reservas é **material complementar** — pode ser omitido numa primeira leitura sem perda de continuidade. A versão básica (regra $\dot{p}/p = r$) é suficiente para a maioria dos cursos de graduação. A versão completa é recomendada para cursos de pós-graduação e para a conexão com o [Capítulo 24 (Economia Ambiental)](../cap24/index.md).

VPL e TIR funcionam bem quando o ativo em questão foi construído por mãos humanas — uma fábrica, um galpão, um software. Mas o que fazer com aquilo que a natureza criou e que, uma vez consumido, não volta? Petróleo, minério de ferro, mogno nativo: são estoques finitos, e cada barril extraído hoje é um barril a menos para amanhã. Isso cria um dilema intertemporal que nenhum engenheiro de produção resolve sozinho: extrair agora e aplicar o dinheiro, ou deixar o recurso no solo apostando que valerá mais no futuro? A resposta, formalizada por Harold Hotelling em 1931, é uma das proposições mais elegantes da economia dos recursos naturais.

### O problema do recurso exaurível

Considere o proprietário de uma mina com estoque finito \(S_0\) de um recurso natural não renovável (petróleo, minério, gás). Em cada período, ele deve decidir quanto extrair (\(q_t\)) e quanto preservar para o futuro.

Se o preço do recurso é \(p_t\), o custo marginal de extração é \(c\) (constante) e a taxa de juros é \(r\), o proprietário enfrenta um problema de otimização intertemporal: maximizar o valor presente dos lucros da extração, sujeito à restrição de que a extração total não pode exceder o estoque.

!!! proof "Demonstração: Derivação da Regra de Hotelling"
    O proprietário da mina maximiza o valor presente dos lucros da extração:

    \[
    \max_{\{q_t\}} \sum_{t=0}^{\infty} \frac{(p_t - c) \cdot q_t}{(1+r)^t} \quad \text{sujeito a} \quad \sum_{t=0}^{\infty} q_t \leq S_0, \quad q_t \geq 0
    \]

    O lagrangeano é:

    \[
    \mathcal{L} = \sum_{t=0}^{\infty} \frac{(p_t - c) q_t}{(1+r)^t} + \lambda \left( S_0 - \sum_{t=0}^{\infty} q_t \right)
    \]

    A condição de primeira ordem para \(q_t > 0\) é:

    \[
    \frac{\partial \mathcal{L}}{\partial q_t} = \frac{p_t - c}{(1+r)^t} - \lambda = 0
    \]

    Portanto:

    \[
    p_t - c = \lambda (1+r)^t
    \]

    Definindo a **renda de escassez** (ou *royalty*) como \(R_t \equiv p_t - c\), temos:

    \[
    R_t = \lambda (1+r)^t = R_0 (1+r)^t
    \]

    onde \(R_0 = \lambda\) é a renda de escassez no período inicial. Tomando a razão entre dois períodos consecutivos:

    \[
    \frac{R_{t+1}}{R_t} = 1 + r
    \]

    Ou, equivalentemente:

    \[
    \frac{R_{t+1} - R_t}{R_t} = r
    \]

    **Esta é a Regra de Hotelling**: em equilíbrio, a renda de escassez (preço líquido do custo de extração) de um recurso natural exaurível deve crescer à taxa de juros \(r\).

    **Intuição**: se a renda de escassez crescesse a uma taxa superior a \(r\), seria mais lucrativo não extrair hoje e esperar — o proprietário reduziria a extração presente, elevando o preço hoje e reduzindo a taxa de crescimento. Se crescesse a uma taxa inferior a \(r\), seria melhor extrair tudo agora e aplicar no mercado financeiro — a extração presente aumentaria, reduzindo o preço hoje e elevando a taxa de crescimento. No equilíbrio, os dois incentivos se equilibram. \(\blacksquare\)

!!! theorem "Regra de Hotelling"
    Em equilíbrio competitivo, o preço líquido (preço menos custo marginal de extração) de um recurso natural exaurível cresce à taxa de juros:

    \[
    \frac{\dot{R}}{R} = r \quad \text{(em tempo contínuo)} \qquad \text{ou} \qquad \frac{R_{t+1} - R_t}{R_t} = r \quad \text{(em tempo discreto)}
    \label{eq:18.12} \tag{18.12} \]

    onde \(R = P - c\) é a renda de escassez do recurso.

!!! idea "Intuição Econômica"
    **Em uma frase:** O preço de um recurso que vai acabar precisa subir ao longo do tempo à mesma taxa dos juros — senão, o dono preferiria extrair tudo hoje e aplicar o dinheiro.

    **Pense assim:** Imagine um fazendeiro no Pará com mogno nativo na propriedade. Se o preço da madeira não estiver subindo pelo menos tanto quanto o rendimento de um CDB, ele corta tudo agora e coloca o dinheiro no banco. Mas se o mogno está valorizando mais que os juros, compensa deixar a árvore crescendo. No equilíbrio, as duas opções se equivalem.

    **Por que isso importa:** A regra de Hotelling é a base para pensar a exploração sustentável de petróleo, minérios e outros recursos finitos — e ajuda a entender por que juros altos aceleram o desmatamento e a extração mineral.

<iframe src="/micro-book/graficos/cap18/hotelling-recurso.html" title="Figura 18.4 — Regra de Hotelling: trajetória de preço e extração de recurso exaurível" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 18.4 — Regra de Hotelling.** O preço do recurso cresce à taxa de juros \(r\) até atingir o preço da tecnologia substituta (\(\bar{p}\)). Aumente \(r\) e observe a extração se acelerar — juros altos devoram o futuro.
</div>

### Implicações

1. **O preço do recurso tende a subir ao longo do tempo**, refletindo sua crescente escassez;
2. **Recursos com custo de extração constante** terão preços que convergem assintoticamente para um caminho exponencial;
3. **A taxa de juros determina a velocidade de exaustão**: juros altos aceleram a extração (o futuro é mais fortemente descontado);
4. **A existência de uma *backstop technology*** — um substituto disponível a custo fixo — coloca um teto no preço do recurso e pode antecipar a exaustão (como na relação entre petróleo e energias renováveis).

!!! tip "A regra de Hotelling na prática"
    Empiricamente, os preços de muitos recursos naturais não seguem a trajetória prevista pela regra de Hotelling. Isso pode ser explicado por: (i) descobertas de novas reservas; (ii) progresso tecnológico que reduz custos de extração; (iii) desenvolvimento de substitutos; (iv) poder de mercado (OPEP, por exemplo).

!!! box-mundo "Box Mundo 18.3 — A maldição do petróleo: Hotelling encontra instituições"

    **Contexto:** A regra de Hotelling prevê que proprietários racionais de recursos exauríveis administram a extração de forma a maximizar o valor presente dos royalties. Na prática, porém, muitos países ricos em petróleo experimentaram a chamada "maldição dos recursos naturais" (*resource curse*): crescimento econômico inferior ao esperado, deterioração institucional e volatilidade macroeconômica.

    **Dados:** Sachs e Warner (2001) documentaram que países com alta dependência de exportações de recursos naturais cresceram, em média, mais lentamente entre 1970 e 1990 do que países com base exportadora diversificada. A Nigéria, apesar de ter exportado mais de US$ 600 bilhões em petróleo entre 1970 e 2020 (dados da OPEC), viu sua renda per capita estagnar. A Venezuela, com as maiores reservas provadas do mundo, entrou em colapso econômico a partir de 2014. Em contraste, a Noruega (Box 18.1) e o Botswana (diamantes) usaram seus recursos para financiar poupança e investimento em capital humano.

    **Análise:** A divergência sugere que o problema não é a regra de Hotelling em si — que é uma condição de equilíbrio —, mas as instituições que mediam a decisão de extração. Em países com instituições fracas, os agentes políticos enfrentam uma taxa de desconto efetiva altíssima (governantes podem perder o poder a qualquer momento), incentivando extração acelerada e consumo imediato das receitas. A renda de escassez é dissipada em rent-seeking, corrupção e gastos correntes, em vez de ser convertida em capital produtivo ou fundos soberanos. A teoria de Hotelling, portanto, funciona melhor como benchmark normativo do que como descrição positiva.

    **Para refletir:** O pré-sal brasileiro gera um dilema intertemporal análogo. Que mecanismos institucionais poderiam garantir que os royalties do pré-sal sejam convertidos em ativos produtivos, e não em gasto corrente?

<iframe src="/micro-book/graficos/cap18/desconto-exponencial-hiperbolico.html" title="Figura 18.3 — Desconto exponencial vs quasi-hiperbolico" class="graph-iframe" style="height:580px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 18.3 — Desconto exponencial vs quasi-hiperbólico.** O desconto exponencial padrão (\(\delta^t\)) trata todos os períodos igualmente, enquanto o modelo quasi-hiperbólico (\(\beta\delta^t\)) desconta o futuro próximo mais fortemente que o distante, gerando viés pelo presente e inconsistência temporal (Laibson, 1997).
</div>

No gráfico abaixo, ajuste \(\beta\) e \(\delta\) para visualizar a reversão de preferências: um agente que hoje prefere R$110 amanhã a R$100 hoje pode, quando amanhã chega, mudar de ideia — o viés do presente é a queda abrupta entre \(t=0\) e \(t=1\).

<iframe src="/micro-book/graficos/cap18/desconto-hiperbolico.html" title="Figura 18.3b — Desconto Quasi-Hiperbólico: Viés do Presente e Reversão de Preferências" class="graph-iframe" style="height:520px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 18.3b — Viés do Presente.** A queda entre \(t=0\) e \(t=1\) (curva vermelha) é o viés do presente \(\beta\). Com \(\beta = 1\), as curvas coincidem (desconto exponencial puro). Com \(\beta < 1\), o agente é impaciente no curto prazo mas paciente no longo — gerando inconsistência temporal.
</div>

---

Começamos este capítulo com uma pergunta de supermercado — quanto custam os juros do parcelamento? — e terminamos com uma regra para extrair petróleo do fundo do oceano. O fio condutor é o mesmo: o tempo transforma escolhas simples em problemas de otimização, e a taxa de juros é o preço que conecta presente e futuro. No Brasil, onde esse preço é particularmente alto, as consequências se espalham por cada decisão de investimento, cada barril extraído, cada fábrica que não foi construída.

*O tempo cobra seu preço — em juros, em depreciação, em impaciência. No próximo capítulo, outra falha de mercado: quando uma das partes sabe mais que a outra.*
