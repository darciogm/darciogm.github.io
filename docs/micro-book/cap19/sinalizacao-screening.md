# 19.5–19.6 Sinalização e Screening

## 19.5 O Diploma Que Não Ensina Nada (Mas Vale Ouro): Sinalização {#195}

Se você fosse um vendedor de carro impecável, preso num mercado cheio de abacaxis, como convenceria o comprador de que o *seu* carro é diferente? Dizer "confie em mim" não basta — todo vendedor de abacaxi diria o mesmo. A saída, como percebeu Michael Spence (1973), é fazer algo que *só* quem tem carro bom faria: oferecer uma garantia de um ano, por exemplo, ou pagar uma vistoria independente. Em certas condições, a parte informada pode tomar ações custosas e observáveis que funcionam como sinais críveis de suas características ocultas. A chave é que o custo do sinal deve diferir entre os tipos — caso contrário, todos sinalizariam da mesma forma e nenhuma informação seria transmitida. Essa condição é conhecida como *single-crossing* e é o que garante que a sinalização seja crível.

!!! definition "Sinalização (Signaling)"
    Mecanismo pelo qual a parte informada (agente) toma uma **ação custosa e observável** para transmitir credibilmente sua informação privada à parte desinformada (principal). Para que o sinal seja efetivo, ele deve ser **diferencialmente custoso** entre os tipos.

### 19.5.1 Educação como sinal (Spence, 1973)

Michael Spence propôs, em sua tese de doutorado em Harvard (1972, publicada em 1973 no QJE), que a educação pode funcionar como sinal de produtividade, mesmo que não aumente diretamente as habilidades do trabalhador. A ideia central — provocativa e influente — é que adquirir educação é **menos custoso** para trabalhadores de alta produtividade. Mesmo que a faculdade não ensine nada diretamente útil para o trabalho, o fato de o trabalhador ter conseguido completá-la transmite informação sobre disciplina, inteligência e capacidade de aprendizado — todas características correlacionadas com produtividade.

Essa ideia contrasta frontalmente com a teoria do capital humano de Gary Becker (Nobel 1992), segundo a qual a educação aumenta diretamente a produtividade do trabalhador — por exemplo, ao ensinar habilidades técnicas, raciocínio analítico ou capacidade de comunicação. Na visão de Becker, o retorno salarial à educação reflete ganhos reais de produtividade; na visão de Spence, pode refletir apenas a revelação de informação pré-existente. Na prática, ambos os mecanismos provavelmente operam simultaneamente, e a questão empírica — quanto do retorno à educação é capital humano vs. sinalização? — permanece aberta e é de enorme importância para a política educacional. O paper de Tyler, Murnane e Willett (2000), discutido na seção "Pesquisa em Ação", oferece uma das estimativas mais limpas do componente de sinalização.

Considere dois tipos de trabalhadores:

- **Alta produtividade** (\(\theta_H\)): produção \(\theta_H\), custo de educação \(c_H(s) = s / \theta_H\)
- **Baixa produtividade** (\(\theta_L\)): produção \(\theta_L\), custo de educação \(c_L(s) = s / \theta_L\)

com \(\theta_H > \theta_L\), de modo que \(c_H(s) < c_L(s)\) para todo \(s > 0\): a educação custa menos ao trabalhador mais produtivo (hipótese de **single-crossing**).

No gráfico interativo abaixo, visualize as curvas de custo de educação para ambos os tipos e o intervalo de sinais que sustenta um equilíbrio separador.

<iframe src="/micro-book/graficos/cap19/sinalizacao.html" title="Figura 19.4 — Sinalização por educação (Spence, 1973)" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 19.4 — Sinalização por educação (Spence, 1973).** Visualize as curvas de custo de educação para ambos os tipos, o salário de equilíbrio e a condição de single-crossing. A região azul indica o intervalo de níveis de educação que sustentam um equilíbrio separador.
</div>

### 19.5.2 Equilíbrio separador vs. equilíbrio agregador

!!! definition "Equilíbrio Separador e Agregador"
    - **Equilíbrio separador**: os diferentes tipos escolhem sinais distintos, permitindo que a parte desinformada identifique cada tipo. Cada tipo recebe um salário igual à sua produtividade.
    - **Equilíbrio agregador (pooling)**: todos os tipos escolhem o mesmo nível de sinal, e a parte desinformada não consegue distingui-los. O salário ofertado é a produtividade média.

No **equilíbrio separador**, o tipo \(H\) escolhe nível de educação \(s^*\) e o tipo \(L\) escolhe \(s = 0\). O nível \(s^*\) deve satisfazer simultaneamente:

\[
\theta_H - \frac{s^*}{\theta_H} \geq \theta_L \quad \text{(tipo H prefere sinalizar)} \label{eq:19.12} \tag{19.12}
\]

\[
\theta_L \geq \theta_H - \frac{s^*}{\theta_L} \quad \text{(tipo L prefere não sinalizar)} \label{eq:19.13} \tag{19.13}
\]

Resolvendo:

\[
\theta_L(\theta_H - \theta_L) \leq s^* \leq \theta_H(\theta_H - \theta_L)
\label{eq:19.14} \tag{19.14} \]

As restrições $\eqref{eq:19.12}$ e $\eqref{eq:19.13}$ delimitam o intervalo $\eqref{eq:19.14}$, e o equilíbrio separador de menor custo (equilíbrio de Riley ou *least-cost separating*) ocorre em \(s^* = \theta_L(\theta_H - \theta_L)\).

!!! idea "Intuição Econômica"
    **Em uma frase:** Um diploma pode funcionar como um "selo de qualidade" do trabalhador, mesmo que a faculdade em si não ensine nada diretamente útil para o cargo.

    **Pense assim:** No Brasil, muitas empresas exigem diploma superior para vagas que não precisam de conhecimento acadêmico. Por que? Porque concluir uma graduação sinaliza disciplina, persistência e capacidade de aprender — qualidades que o empregador não consegue medir numa entrevista. Quem tem alta produtividade acha a faculdade mais fácil, e por isso o sinal é crível.

    **Por que isso importa:** O modelo de Spence levanta uma provocação importante para a política educacional: parte do retorno à educação pode ser sinalização pura, não ganho de produtividade real — o que muda completamente a análise de custo-benefício de expandir o ensino superior.

!!! note "Eficiência da Sinalização"
    No modelo de Spence, a sinalização envolve um **custo social** real: recursos são gastos em educação apenas para sinalizar tipo, sem ganho de produtividade. O equilíbrio separador pode ser Pareto-inferior ao equilíbrio agregador se a perda de bem-estar do sinal superar o ganho informacional. Esse resultado ilustra que a revelação de informação nem sempre é socialmente desejável — um paradoxo que contrasta com a intuição de que "mais informação é sempre melhor".

??? exercicio-resolvido "Exercício Resolvido 19.5 — Sinalização por educação: equilíbrio separador"
    **Enunciado:** No modelo de Spence, \(\theta_H = 80\), \(\theta_L = 40\), \(c_H(s) = s/80\), \(c_L(s) = s/40\). (a) Encontre o intervalo de \(s^*\) para o equilíbrio separador. (b) Encontre o *least-cost separating equilibrium*. (c) Qual é o custo social da sinalização nesse equilíbrio?

    ---

    **(a)** Pela equação $\eqref{eq:19.14}$:

    \[
    s^* \in [\theta_L(\theta_H - \theta_L),\; \theta_H(\theta_H - \theta_L)] = [40 \times 40,\; 80 \times 40] = [1.600,\; 3.200]
    \]

    **(b)** O *least-cost separating*: \(s^* = 1.600\).

    Verificação — Tipo H: ganho = \(\theta_H - \theta_L = 40\), custo = \(1.600/80 = 20\). Líquido = \(+20 > 0\). ✓

    Tipo L: ganho = \(\theta_H - \theta_L = 40\), custo = \(1.600/40 = 40\). Líquido = \(0\). Indiferente, mas por convenção não sinaliza. ✓

    **(c)** Custo social: o tipo H gasta \(1.600/80 = 20\) em educação que (por hipótese) não aumenta a produtividade. Se 50% dos trabalhadores são tipo H, o custo médio por trabalhador é \(0{,}5 \times 20 = 10\).

    **Interpretação:** A sinalização é individualmente racional para o tipo H (ganho líquido positivo), mas socialmente custosa se a educação não tem valor produtivo. Esse resultado fundamenta o debate sobre se políticas de expansão universitária geram ganhos reais de produtividade ou apenas inflação de credenciais.

<iframe src="/micro-book/graficos/cap19/webr-sinalizacao.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 19.4 — Sinalização por educação (Spence).** Modifique as produtividades θH e θL para visualizar a condição de single-crossing, o intervalo separador e o custo social da sinalização.

</div>

---

## 19.6 O Cardápio Que Faz Você Se Revelar: Screening e Triagem {#196}

A sinalização e a triagem são duas faces da mesma moeda: ambas buscam resolver o problema de tipos ocultos, mas diferem em quem toma a iniciativa. Na sinalização, a parte informada age primeiro, investindo em um sinal custoso; na triagem, é a parte desinformada que age primeiro, desenhando um menu de opções. Na prática, essa distinção é relevante porque define quem arca com os custos da revelação de informação e, portanto, como o excedente se distribui entre as partes.

!!! definition "Triagem (Screening)"
    Mecanismo pelo qual a parte desinformada (principal) oferece um **menu de opções** desenhado de forma que cada tipo de agente revele voluntariamente sua informação privada ao escolher a opção mais adequada ao seu tipo.

A [Tabela 19.1](#tabela-19-1) apresenta exemplos práticos de mecanismos de triagem:

<a id="tabela-19-1"></a>

| Contexto | Mecanismo de Triagem |
|----------|---------------------|
| Seguros | Menu de apólices com diferentes combinações de prêmio/franquia |
| Mercado de trabalho | Oferta de contratos com diferentes combinações salário fixo/bônus |
| Companhias aéreas | Classes tarifárias com diferentes restrições (antecedência, reembolso) |
| Telecomunicações | Planos com diferentes volumes de dados e preços por unidade |
| Educação | Programas com diferentes graus de seletividade e rigor |

<div class="caption-obj" markdown>
**Tabela 19.1 — Exemplos de mecanismos de triagem.**
</div>

A conexão entre triagem e discriminação de preços de segundo grau (Capítulo 15, Seção 15.7.2) é direta e profunda: o menu de contratos desenhado para induzir autosseleção é exatamente o mesmo problema que o monopolista resolve ao oferecer versões "básica" e "premium" de um produto. A diferença é que, aqui, o objetivo do principal pode ser alocação eficiente (seguros), não maximização de lucro (monopólio). Mas a estrutura matemática é idêntica — restrições de participação e de incentivo-compatibilidade —, e os resultados qualitativos também: distorção para baixo no tipo de baixa valoração, nenhuma distorção no topo, e renda informacional para o tipo de alta valoração.

Na prática, a triagem é onipresente. Quando uma operadora de celular oferece um plano básico de 5 GB por R$ 30 e um plano premium de 20 GB por R$ 80, ela não está apenas vendendo dados — está fazendo triagem. O usuário intensivo se revela ao escolher o premium; o casual se revela ao escolher o básico. O plano básico é deliberadamente "distorcido" (menos dados por real) para torná-lo pouco atrativo ao tipo de alta demanda, preservando a compatibilidade de incentivos. Essa lógica se repete em seguros (menus de franquias), educação (programas de diferentes seletividades), e telecomunicações (planos pós-pago vs. pré-pago).

A diferença fundamental entre sinalização e triagem é quem toma a iniciativa:

- **Sinalização**: a parte informada age primeiro, escolhendo um sinal custoso.
- **Triagem**: a parte desinformada age primeiro, desenhando um menu de contratos.

Em equilíbrio, os dois mecanismos podem levar a alocações equivalentes (como nos modelos de [Rothschild-Stiglitz](https://doi.org/10.2307/1885326)), mas o timing e a distribuição de excedentes podem diferir.

!!! idea "Intuição Econômica"
    **Em uma frase:** Na triagem, o principal desenha um cardápio estratégico que faz cada tipo de agente se revelar sozinho pela opção que escolhe.

    **Pense assim:** Quando uma companhia aérea oferece classe econômica (sem reembolso, sem escolha de assento) e classe executiva (flexível, assento amplo), ela não está apenas vendendo conforto — está fazendo triagem. O viajante corporativo, cuja empresa paga e que precisa de flexibilidade, se revela escolhendo a executiva. O estudante com orçamento apertado se revela escolhendo a econômica. Ninguém precisa declarar sua renda — o menu faz o trabalho de separação.

    **Por que isso importa:** O desenho de menus que induzam autosseleção é uma habilidade central em economia aplicada — da regulação de telecomunicações ao desenho de impostos. O resultado fundamental da teoria é que a autosseleção exige distorções: o tipo de baixa valoração sempre recebe menos do que receberia sob informação simétrica.
