# 18.1–18.2 Capital e Taxa de Juros

## 18.1 Máquinas Não Caem do Céu: Capital e Taxa de Retorno {#181}

### O conceito de capital

!!! definition "Capital"
    **Capital** é o estoque de bens produzidos que são utilizados como insumos na produção de outros bens e serviços. Diferentemente do trabalho e da terra, o capital é um **fator de produção produzido** — máquinas, equipamentos, edifícios, infraestrutura, estoques.

É fundamental distinguir entre:

- **Estoque de capital** (\(K\)): o valor total dos bens de capital em um dado momento;
- **Fluxo de serviços do capital**: a contribuição produtiva do capital por unidade de tempo;
- **Investimento** (\(I\)): a variação no estoque de capital, \(I = \Delta K + \delta K\), onde \(\delta\) é a taxa de depreciação.

Essa distinção entre estoque e fluxo é análoga à diferença entre a quantidade de água em um lago (estoque) e a vazão de um rio que alimenta o lago (fluxo). Uma empresa que possui uma frota de 100 caminhões detém um estoque de capital; os serviços de transporte que esses caminhões prestam por mês constituem o fluxo. O investimento é a compra de caminhões novos que repõem os depreciados e expandem a frota. A depreciação — a perda de valor do capital por desgaste, obsolescência ou passagem do tempo — é o que torna a manutenção do estoque de capital um desafio permanente. Sem investimento, o estoque encolhe ao ritmo \(\delta K\) por período.

Uma implicação prática dessa distinção é que o capital, por ser durável, introduz uma dimensão temporal inescapável nas decisões econômicas. Quando uma firma compra uma máquina, ela não consome o bem no ato da compra — ela o utiliza ao longo de anos, coletando um fluxo de retornos. Essa separação entre o desembolso inicial e o fluxo de benefícios futuros é a essência do problema intertemporal que permeia todo este capítulo.

### Taxa de retorno do capital

A **taxa de retorno** (\(r\)) de um investimento mede a remuneração do capital por unidade monetária investida, por período. Se um investimento de \(K_0\) reais gera um fluxo de rendimento líquido \(\pi\) por período, a taxa de retorno é:

\[
r = \frac{\pi}{K_0}
\label{eq:18.1} \tag{18.1} \]

Pela equação $\eqref{eq:18.1}$, no equilíbrio competitivo de longo prazo, a taxa de retorno do capital se iguala à **taxa de juros** do mercado, pois o investidor é indiferente entre aplicar recursos no mercado financeiro e investir em capital físico. Se a taxa de retorno do capital excedesse a taxa de juros, haveria incentivo para investir mais em capital físico; se fosse inferior, seria mais vantajoso aplicar no mercado financeiro. Esse mecanismo de arbitragem garante a equalização das taxas no equilíbrio.

A convergência entre taxa de retorno do capital e taxa de juros é uma das predições mais fundamentais da teoria neoclássica, mas deve ser interpretada com cuidado. Na prática, os retornos do capital físico são incertos e ilíquidos, enquanto aplicações financeiras podem ser líquidas e com risco mais previsível. Por isso, a taxa de retorno do capital físico tipicamente embute um **prêmio de risco** e um **prêmio de iliquidez** sobre a taxa de juros livre de risco — um tema ao qual retornaremos na [Seção 18.5](ativos-investimento.md#185).

---

## 18.2 O Preço da Impaciência: Determinação da Taxa de Juros {#182}

Se a taxa de juros é o preço da impaciência, quem define esse preço? Não é um burocrata com caneta vermelha (embora o presidente do Banco Central chegue perto). Em uma economia de mercado, a taxa de retorno do capital emerge de um cabo de guerra silencioso entre quem quer poupar — "segura aí que eu gasto depois" — e quem quer investir — "me empresta que eu multiplico". Esse equilíbrio no mercado de fundos emprestáveis é a peça central da teoria dos juros.

### Equilíbrio intertemporal

A taxa de juros de equilíbrio é determinada pela interação entre:

- **Oferta de fundos emprestáveis** (poupança): positivamente relacionada à taxa de juros — juros mais altos incentivam a poupança;
- **Demanda de fundos emprestáveis** (investimento): negativamente relacionada à taxa de juros — juros mais altos encarecem o custo do capital e reduzem o investimento.

No equilíbrio:

\[
S(r) = I(r)
\label{eq:18.2} \tag{18.2} \]

onde \(S\) é a poupança agregada e \(I\) é o investimento agregado. A taxa de juros \(r^*\) que iguala oferta e demanda de fundos é a **taxa de juros de equilíbrio**.

É importante notar que a relação entre taxa de juros e poupança não é necessariamente monotônica. Como veremos na [Seção 18.3](fisher-inflacao.md#183), um aumento na taxa de juros gera dois efeitos opostos sobre a poupança: o efeito substituição (que incentiva poupar mais) e o efeito renda (que, para um poupador, permite consumir mais hoje). Em nível agregado, a evidência empírica sugere que a elasticidade-juro da poupança é positiva, mas relativamente pequena — o que significa que a curva de oferta de fundos emprestáveis é positivamente inclinada, porém relativamente inelástica.

A demanda por investimento, por outro lado, é mais claramente decrescente na taxa de juros: juros altos encarecem o custo do capital e reduzem o número de projetos com Valor Presente Líquido positivo ([Seção 18.6](ativos-investimento.md#186)). A elasticidade-juro do investimento tende a ser maior que a da poupança, conferindo à demanda um papel mais ativo na determinação do equilíbrio.

!!! idea "Intuição Econômica"
    **Em uma frase:** A taxa de juros é o preço do tempo — quanto custa trazer dinheiro do futuro para o presente, ou quanto se ganha por abrir mão do consumo hoje.

    **Pense assim:** Quando você parcela uma compra no cartão com juros, está pagando pela impaciência de ter o produto agora. Quando coloca dinheiro na poupança, está sendo recompensado por esperar. A taxa de juros equilibra os impacientes (que querem gastar hoje) com os pacientes (que preferem poupar).

    **Por que isso importa:** Com a Selic historicamente elevada no Brasil, o "preço da impaciência" é muito alto, desestimulando investimentos de longo prazo e encarecendo o crédito para famílias e empresas.

### Fatores que afetam a taxa de juros

A [Tabela 18.1](#tabela-18-1) resume os principais fatores que afetam a taxa de juros de equilíbrio.

<a id="tabela-18-1"></a>

| Fator | Efeito sobre \(r^*\) | Mecanismo |
|---|---|---|
| Aumento da produtividade do capital | \(\uparrow r^*\) | Desloca demanda por investimento para a direita |
| Aumento da preferência pelo consumo presente | \(\uparrow r^*\) | Reduz oferta de poupança |
| Aumento da oferta de fundos (ex.: poupança externa) | \(\downarrow r^*\) | Desloca oferta de poupança para a direita |
| Aumento do risco percebido | \(\uparrow r^*\) | Exige prêmio de risco maior |
| Política monetária expansionista | \(\downarrow r^*\) (curto prazo) | Banco Central injeta liquidez no mercado |
| Crescimento populacional / envelhecimento | Ambíguo | Mais trabalhadores poupam (+S), mas também investem (+I) |

<div class="caption-obj" markdown>
**Tabela 18.1 — Fatores que afetam a taxa de juros.**
</div>

!!! box-brasil "Box Brasil 18.1 — O preço da paciência no Brasil: por que a Selic real é outlier global?"

    O Brasil é, há décadas, um dos países com a maior taxa de juros real do mundo. Isso não é apenas uma curiosidade macroeconômica — é um fenômeno microeconômico com consequências profundas para as decisões de consumo intertemporal, investimento e poupança estudadas neste capítulo.

    **Dados comparativos (taxa de juros real *ex ante*, dez/2024):**

    | País | Taxa nominal | Inflação esperada | Taxa real |
    |---|---|---|---|
    | **Brasil** | **12,25%** | **4,5%** | **≈ 7,4%** |
    | México | 10,00% | 4,2% | ≈ 5,6% |
    | Colômbia | 9,50% | 5,3% | ≈ 4,0% |
    | EUA | 4,50% | 2,4% | ≈ 2,1% |
    | Zona do Euro | 3,00% | 2,1% | ≈ 0,9% |
    | Japão | 0,25% | 2,5% | ≈ −2,2% |

    *Fontes: BCB, Fed, ECB, BoJ. Taxa real aproximada pela equação de Fisher (Seção 18.4).*

    **Por que o Brasil é outlier?** A teoria oferece várias explicações complementares, todas conectadas aos fatores da Tabela 18.1:

    - **Risco percebido elevado** (↑ prêmio de risco): histórico de moratória (1987), hiperinflação (1980–94) e crises fiscais recorrentes elevam o prêmio exigido por credores. A dívida pública bruta acima de 75% do PIB e a trajetória fiscal incerta amplificam esse efeito.
    - **Taxa de poupança doméstica baixa** (~15% do PIB vs. ~45% na China): a oferta de fundos emprestáveis é relativamente escassa, pressionando \(r^*\) para cima.
    - **Crédito direcionado e BNDES**: parte significativa do crédito no Brasil é concedida a taxas subsidiadas (TLP), criando segmentação no mercado de fundos. A Selic precisa ser mais alta para equilibrar o segmento livre, onde a demanda residual é concentrada.
    - **Dominância fiscal**: expectativas de expansão fiscal futura elevam a inflação esperada e, via equação de Fisher, a taxa nominal — mas o componente real também sobe pela incerteza associada.

    **Consequências microeconômicas:**

    - **Investimento:** Com taxa real de 7%, o VPL de projetos de longo prazo (infraestrutura, P&D) é dramaticamente reduzido — a Seção 18.6 mostra que o VPL é \(\sum \frac{R_t}{(1+r)^t} - C_0\), e juros altos "esmagam" os fluxos futuros. Um projeto que seria viável nos EUA (r = 2%) pode ter VPL negativo no Brasil (r = 7%).
    - **Consumo intertemporal:** No modelo de Fisher (Seção 18.3), juros reais elevados incentivam a poupança (efeito substituição domina para poupadores) mas encarecem drasticamente o crédito ao consumidor. A taxa média de juros do cartão de crédito rotativo no Brasil atingiu 431% a.a. em 2024 (BCB) — quase certamente a maior do mundo.
    - **Custo de oportunidade:** Para o investidor brasileiro, o Tesouro Selic oferece retorno real de ~7% com risco praticamente zero. Isso eleva o custo de oportunidade de qualquer investimento produtivo e ajuda a explicar por que o Brasil investe apenas ~16% do PIB (vs. 25–30% em economias asiáticas).

    **Fontes:** BCB — SGS (séries temporais); Arida, Bacha e Lara-Resende (2005). "Credit, Interest, and Jurisdictional Uncertainty." In: Giavazzi, Goldfajn e Herrera (eds.), *Inflation Targeting, Debt, and the Brazilian Experience*. MIT Press.

Historicamente, a teoria econômica ofereceu explicações distintas para a existência de juros positivos. Para os economistas clássicos (Böhm-Bawerk, Fisher), os juros refletem a **preferência temporal** — o fato de que as pessoas valorizam mais o presente que o futuro — combinada com a **produtividade do capital** — o fato de que métodos de produção mais demorados (roundabout) são mais produtivos. Keynes enfatizou o papel da **preferência pela liquidez**: como reter moeda proporciona flexibilidade, os agentes exigem uma compensação (juros) para abrir mão dessa liquidez. Na síntese moderna, todos esses fatores interagem no mercado de fundos emprestáveis.
