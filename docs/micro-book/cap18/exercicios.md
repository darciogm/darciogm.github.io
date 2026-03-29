# Exercícios — Capítulo 18

## 🧠 Revisão Rápida

Teste seu entendimento dos conceitos centrais deste capítulo.

??? question "1. O Valor Presente Líquido (VPL) de um projeto de investimento é negativo quando:"
    - (a) O projeto gera fluxos de caixa positivos em todos os períodos
    - (b) A soma dos fluxos de caixa futuros descontados à taxa de juros é menor que o investimento inicial
    - (c) A taxa de juros é zero
    - (d) O projeto tem horizonte infinito

    ??? success "Resposta"
        **(b)** O VPL é $\sum_{t=0}^{T} \frac{FC_t}{(1+r)^t}$. Se esse valor é negativo, o custo inicial supera o valor presente dos benefícios futuros — o projeto destrói valor à taxa de desconto $r$. A alternativa (a) não garante VPL positivo se os fluxos forem pequenos; (c) tornaria o VPL igual à soma simples dos fluxos; (d) não determina o sinal.

??? question "2. A Taxa Interna de Retorno (TIR) é a taxa de desconto que:"
    - (a) Maximiza o VPL do projeto
    - (b) Torna o VPL igual a zero
    - (c) Iguala a taxa de juros de mercado
    - (d) Minimiza o risco do investimento

    ??? success "Resposta"
        **(b)** A TIR é definida como a taxa $r^*$ tal que $\text{VPL}(r^*) = 0$. Se a TIR excede o custo de capital, o projeto é viável. A alternativa (a) confunde — o VPL é maximizado quando $r = 0$; (c) descreve o critério de decisão, não a definição; (d) não tem relação com a TIR.

??? question "3. A regra de Hotelling para recursos não renováveis afirma que, em equilíbrio:"
    - (a) O preço do recurso deve cair ao longo do tempo para estimular o consumo
    - (b) A renda do recurso (preço menos custo de extração) deve crescer à taxa de juros
    - (c) O recurso deve ser extraído o mais rápido possível
    - (d) O preço é determinado exclusivamente pelo custo de extração

    ??? success "Resposta"
        **(b)** A regra de Hotelling é a condição de arbitragem intertemporal: o proprietário deve ser indiferente entre extrair hoje e investir a receita ou esperar e extrair amanhã. Isso exige que a renda líquida do recurso cresça à taxa de juros. Se crescesse mais rápido, valeria esperar; se mais devagar, extrair tudo hoje. A alternativa (c) seria racional apenas se a renda nunca crescesse.

??? question "4. Um agente com desconto exponencial e fator $\\delta = 0{,}95$ por período valoriza R\\$100 daqui a 2 períodos como:"
    - (a) R$100,00
    - (b) R$95,00
    - (c) R$90,25
    - (d) R$85,00

    ??? success "Resposta"
        **(c)** Com desconto exponencial, o valor presente de $X$ em $t$ períodos é $\delta^t \cdot X = (0{,}95)^2 \times 100 = 0{,}9025 \times 100 = 90{,}25$. A alternativa (b) desconta apenas um período; (d) aplica taxa incorreta; (a) ignora o desconto.

??? question "5. A equação de Fisher $(1+i) = (1+r)(1+\\pi)$ relaciona taxa nominal $i$, taxa real $r$ e inflação $\\pi$. Se $i = 10\\%$ e $\\pi = 4\\%$, a taxa real aproximada é:"
    - (a) 14%
    - (b) 6%
    - (c) 10%
    - (d) 4%

    ??? success "Resposta"
        **(b)** Pela aproximação de Fisher, $r \approx i - \pi = 10\% - 4\% = 6\%$. O valor exato é $r = (1{,}10/1{,}04) - 1 \approx 5{,}77\%$, próximo de 6%. A alternativa (a) soma em vez de subtrair; (c) ignora a inflação; (d) confunde taxa real com inflação.

---

## 📋 Resumo do Capítulo

- A taxa de juros é o preço do tempo, determinada pelo equilíbrio entre oferta de poupança e demanda de investimento no mercado de fundos emprestáveis. A taxa de juros de equilíbrio depende da produtividade do capital, das preferências intertemporais, da oferta de poupança e do risco percebido.
- A distinção entre taxa de juros nominal e real é essencial. A equação de Fisher (\(1+i = (1+r)(1+\pi)\)) conecta as duas, e o efeito Fisher prevê que variações na inflação esperada se refletem proporcionalmente na taxa nominal.
- O modelo de dois períodos de Fisher formaliza a escolha intertemporal do consumidor: no ótimo, a taxa marginal de substituição entre consumo presente e futuro iguala \(1 + r\). O consumidor é poupador se sua taxa de desconto subjetiva é menor que a taxa de juros, e devedor caso contrário. A equação de Euler governa a dinâmica ótima do consumo.
- O CAPM estabelece que o retorno esperado de um ativo arriscado depende de seu beta (risco sistemático), enquanto o fator de desconto estocástico generaliza a precificação para qualquer ativo. O enigma do prêmio de risco (equity premium puzzle) desafia os modelos padrão.
- A firma demanda capital até que o valor do produto marginal iguale o custo de uso do capital \(c_K = p_K(r + \delta)\). O VPL é o critério superior para avaliação de investimentos: projetos com VPL positivo geram valor acima do custo de oportunidade do capital. A TIR é complementar, mas apresenta limitações.
- A Regra de Hotelling estabelece que o preço líquido de um recurso natural exaurível deve crescer à taxa de juros no equilíbrio, equilibrando o incentivo entre extrair hoje e preservar para o futuro. Juros altos aceleram a extração.
- No Brasil, a taxa Selic historicamente elevada encarece o custo de capital, torna inviáveis projetos de longo prazo e cria viés contra investimentos produtivos, especialmente em infraestrutura e P&D.

## 🔑 Conceitos-Chave

<a id="tabela-18-4"></a>

| Conceito | Definição |
|----------|-----------|
| Capital | Estoque de bens produzidos utilizados como insumos na produção; fator de produção produzido (máquinas, equipamentos, infraestrutura) |
| Taxa de juros de equilíbrio | Taxa que iguala oferta de poupança e demanda de investimento no mercado de fundos emprestáveis |
| Equação de Fisher | Relação entre taxa nominal, real e inflação: \(1+i = (1+r)(1+\pi)\) |
| Riqueza intertemporal | Valor presente de toda a renda futura: \(W = Y_1 + Y_2/(1+r)\) |
| Equação de Euler | Condição de ótimo intertemporal: \(u'(C_1) = \beta(1+r)u'(C_2)\) |
| Taxa de preferência intertemporal | Taxa de desconto subjetiva \(\rho\) que mede a impaciência do consumidor; no ótimo, iguala-se à taxa de juros |
| Custo de uso do capital | Custo por período de utilizar uma unidade de capital: \(c_K = p_K(r + \delta)\), incluindo custo de oportunidade e depreciação |
| Valor Presente Líquido (VPL) | Soma dos fluxos de caixa descontados a valor presente; critério superior para decisão de investimento |
| Taxa Interna de Retorno (TIR) | Taxa de desconto que torna o VPL igual a zero; aceitar o projeto se TIR > custo de oportunidade |
| Regra de Hotelling | Em equilíbrio, o preço líquido de um recurso exaurível cresce à taxa de juros: \(\dot{R}/R = r\) |
| Beta (CAPM) | Medida de risco sistemático de um ativo: \(\beta_i = \text{Cov}(r_i, r_m)/\text{Var}(r_m)\) |
| Perpetuidade | Fluxo de pagamentos constante e infinito cujo valor presente é \(VP = F/r\) |

<div class="caption-obj" markdown>
**Tabela 18.4 — Conceitos-chave.**
</div>

---

## 🎯 Exercícios Resolvidos

??? exercicio-resolvido "Exercício Resolvido 18.1 — Consumo intertemporal e classificação poupador/devedor"
    **Enunciado.** Um consumidor vive dois períodos com renda \(Y_1 = 80\) e \(Y_2 = 66\). Suas preferências são \(U(C_1, C_2) = \ln C_1 + \frac{1}{1{,}1}\ln C_2\). A taxa de juros é \(r = 10\%\). (a) Calcule a riqueza intertemporal. (b) Encontre o consumo ótimo em cada período. (c) O consumidor é poupador ou devedor?

    **Resolução.**

    **(a) Riqueza intertemporal.**

    \[
    W = Y_1 + \frac{Y_2}{1+r} = 80 + \frac{66}{1{,}1} = 80 + 60 = 140
    \]

    **(b) Consumo ótimo.**

    Com preferências Cobb-Douglas intertemporais \(U = \ln C_1 + \beta \ln C_2\), onde \(\beta = 1/1{,}1\), o consumidor aloca uma fração \(\frac{1}{1+\beta}\) da riqueza para \(C_1\):

    \[
    C_1^* = \frac{1}{1 + 1/1{,}1} \cdot W = \frac{1}{1 + 10/11} \cdot 140 = \frac{11}{21} \cdot 140 = \frac{1.540}{21} \approx 73{,}3
    \]

    Para \(C_2\), usamos a restrição orçamentária:

    \[
    C_2^* = (1+r)(W - C_1^*) = 1{,}1 \times (140 - 73{,}3) = 1{,}1 \times 66{,}7 \approx 73{,}3
    \]

    Verificação pela condição de ótimo: \(TMS = C_2/(C_1 \cdot \beta) = 73{,}3/(73{,}3 \times 10/11) = 11/10 = 1{,}1 = 1+r\). ✓

    **(c) Poupador ou devedor?**

    Poupança: \(S = Y_1 - C_1^* = 80 - 73{,}3 = 6{,}7 > 0\).

    O consumidor é **poupador**. Ele transfere R$ 6,7 do período 1 para o período 2. Isso ocorre porque sua renda é relativamente mais concentrada no período 1, enquanto suas preferências (com \(\beta = 1/1{,}1 \approx 0{,}91\), ou seja, taxa de desconto subjetiva \(\rho = 10\%\) igual à taxa de juros) induzem consumo suave ao longo do tempo.

<iframe src="/micro-book/graficos/cap18/webr-fisher.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 18.3 — Modelo de Fisher: consumo intertemporal.** Modifique rendas, taxa de juros e taxa de desconto subjetiva para visualizar a restrição orçamentária intertemporal, a curva de indiferença e a escolha ótima entre poupar e tomar emprestado.

</div>

??? exercicio-resolvido "Exercício Resolvido 18.2 — VPL, TIR e decisão de investimento"
    **Enunciado.** Uma empresa avalia instalar painéis solares por R$ 200.000, com economia anual de R$ 55.000 durante 5 anos. O custo de oportunidade do capital é 12% a.a. (a) Calcule o VPL. (b) Calcule a TIR por interpolação. (c) O projeto deve ser aceito?

    **Resolução.**

    **(a) VPL a 12%.**

    \[
    VPL = -200.000 + 55.000 \times \frac{1 - (1{,}12)^{-5}}{0{,}12}
    \]

    O fator de anuidade é:

    \[
    \frac{1 - (1{,}12)^{-5}}{0{,}12} = \frac{1 - 0{,}5674}{0{,}12} = \frac{0{,}4326}{0{,}12} = 3{,}6048
    \]

    \[
    VPL = -200.000 + 55.000 \times 3{,}6048 = -200.000 + 198.264 = -1.736
    \]

    **(b) TIR por interpolação.**

    A 11%: fator de anuidade = \(\frac{1-(1{,}11)^{-5}}{0{,}11} = 3{,}6959\). VPL = \(-200.000 + 55.000 \times 3{,}6959 = 3.275\).

    A 12%: VPL = \(-1.736\) (calculado acima).

    Por interpolação linear:

    \[
    TIR \approx 11\% + \frac{3.275}{3.275 + 1.736} \times 1\% = 11\% + 0{,}65\% \approx 11{,}65\%
    \]

    **(c) Decisão.**

    Como \(VPL < 0\) (equivalentemente, \(TIR \approx 11{,}65\% < 12\% = r\)), o projeto **não deve ser aceito**. No contexto brasileiro, onde a taxa Selic real historicamente supera 5%, muitos projetos de infraestrutura e energia limpa que seriam viáveis em países com juros baixos tornam-se marginais ou inviáveis — ilustrando o impacto dos juros elevados sobre o investimento produtivo.

<iframe src="/micro-book/graficos/cap18/webr-vpl-tir.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 18.4 — VPL, TIR e decisão de investimento.** Altere o investimento inicial, fluxos de caixa e custo de oportunidade para ver como a curva VPL(r) determina a viabilidade do projeto. Compare decisões a taxas brasileiras e americanas.

</div>

??? exercicio-resolvido "Exercício Resolvido 18.3 — Regra de Hotelling e trajetória de preços"
    **Enunciado.** Um depósito de lítio tem estoque \(S_0 = 5.000\) toneladas. O preço inicial é \(p_0 = 80\) mil reais/tonelada, o custo de extração é \(c = 20\) mil reais/tonelada e a taxa de juros real é \(r = 4\%\) ao ano. (a) Qual a renda de escassez inicial? (b) Segundo Hotelling, qual será o preço em 10 e 20 anos? (c) Se uma nova tecnologia de reciclagem de baterias surgir em 15 anos, tornando disponível um substituto perfeito a R$ 100 mil/tonelada, como isso afeta a trajetória?

    **Resolução.**

    **(a) Renda de escassez inicial.**

    \[
    R_0 = p_0 - c = 80 - 20 = 60 \text{ mil reais/tonelada}
    \]

    **(b) Preços futuros pela regra de Hotelling.**

    A renda de escassez cresce à taxa de juros: \(R_t = R_0(1+r)^t\).

    Em 10 anos: \(R_{10} = 60 \times (1{,}04)^{10} = 60 \times 1{,}4802 = 88{,}81\). Logo \(p_{10} = 88{,}81 + 20 = 108{,}81\) mil reais.

    Em 20 anos: \(R_{20} = 60 \times (1{,}04)^{20} = 60 \times 2{,}1911 = 131{,}47\). Logo \(p_{20} = 131{,}47 + 20 = 151{,}47\) mil reais.

    **(c) Efeito do substituto (backstop technology).**

    Se em \(t = 15\) surge um substituto perfeito a R$ 100 mil, o preço do lítio não pode ultrapassar esse teto (ninguém pagaria mais pelo lítio do que pelo substituto). Portanto, o preço terminal é \(p_{15} = 100\), o que implica \(R_{15} = 80\).

    A renda de escassez inicial se ajusta: \(R_0' = R_{15}/(1{,}04)^{15} = 80/1{,}8009 = 44{,}42\). Logo o preço inicial cairia para \(p_0' = 44{,}42 + 20 = 64{,}42\) mil reais — menor que os R$ 80 mil originais.

    **Interpretação:** A perspectiva de um substituto futuro reduz o valor presente do recurso e acelera sua extração. Isso é relevante para o Brasil, maior produtor de nióbio e com reservas significativas de lítio no Vale do Jequitinhonha (MG): o desenvolvimento de tecnologias alternativas para baterias afeta diretamente a estratégia ótima de exploração desses recursos.

<iframe src="/micro-book/graficos/cap18/webr-hotelling.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 18.5 — Regra de Hotelling e trajetória de preços.** Explore como a taxa de juros e a backstop technology afetam a trajetória ótima de preços de recursos não renováveis. Modifique os parâmetros para simular cenários de lítio, petróleo ou nióbio.

</div>

---

## ✏️ Exercícios

!!! note "Exercícios do Capítulo 18"

<a id="ex-18-1"></a>**Exercício 18.1.** Um consumidor vive dois períodos, com renda \(Y_1 = 100\) e \(Y_2 = 110\), e preferências \(U(C_1, C_2) = \ln C_1 + \frac{1}{1{,}1} \ln C_2\). A taxa de juros é \(r = 10\%\).

(a) Calcule a riqueza intertemporal \(W\).
(b) Encontre as escolhas ótimas \(C_1^*\) e \(C_2^*\).
(c) O consumidor é poupador ou tomador de empréstimo?
(d) Se \(r\) sobe para 20%, como mudam \(C_1^*\) e \(C_2^*\)? Decomponha em efeitos substituição e renda.

[→ Solução](../solucoes/cap18/#ex-18-1)

---

<a id="ex-18-2"></a>**Exercício 18.2.** Uma firma considera investir em uma máquina que custa R$ 500.000, tem vida útil de 5 anos com depreciação linear e gera receita líquida anual de R$ 150.000.

(a) Calcule o VPL para \(r = 8\%\) e \(r = 15\%\).
(b) Encontre a TIR por interpolação.
(c) Se a taxa Selic real é 8% e o prêmio de risco setorial é 4%, o investimento deve ser realizado?

[→ Solução](../solucoes/cap18/#ex-18-2)

---

<a id="ex-18-3"></a>**Exercício 18.3.** Um recurso não renovável tem estoque \(S_0 = 1.000\) unidades, preço inicial \(P_0 = 50\), custo marginal de extração \(c = 10\) e taxa de juros \(r = 5\%\).

(a) Qual será o preço em 10 anos pela regra de Hotelling?
(b) Se uma inovação tecnológica reduz o custo de extração para \(c = 5\), como isso afeta a trajetória de preços e a velocidade de exaustão?
(c) Se a taxa de juros sobe para 10%, a extração se torna mais rápida ou mais lenta? Explique usando a lógica de Hotelling.

[→ Solução](../solucoes/cap18/#ex-18-3)

---

<a id="ex-18-4"></a>**Exercício 18.4.** Dois projetos mutuamente excludentes têm os seguintes fluxos:

| | Projeto A | Projeto B |
|---|---|---|
| Investimento | 100.000 | 200.000 |
| Fluxo anual | 35.000 | 62.000 |
| Duração | 5 anos | 5 anos |
| TIR | 22,1% | 16,8% |

(a) Calcule o VPL de cada projeto para \(r = 10\%\).
(b) Qual projeto seria escolhido pelo critério do VPL? E pelo critério da TIR?
(c) Encontre a taxa de Fisher (taxa de desconto em que ambos os projetos têm o mesmo VPL).
(d) Explique por que o VPL é considerado o critério superior à TIR.

[→ Solução](../solucoes/cap18/#ex-18-4)

---

<a id="ex-18-5"></a>**Exercício 18.5.** Um economista afirma: "Se a taxa de juros real de longo prazo caísse de 6% para 3%, o investimento produtivo no Brasil dobraria."

(a) A afirmação é fundamentada em sólida base teórica? Justifique utilizando o custo de uso do capital e o critério do VPL.
(b) Que fatores poderiam impedir que a redução da taxa de juros se traduzisse em mais investimento?

[→ Solução](../solucoes/cap18/#ex-18-5)

---

<a id="ex-18-6"></a>**Exercício 18.6.** Um consumidor tem preferências \(U = \sqrt{C_1} + 0{,}9\sqrt{C_2}\), renda \(Y_1 = 120\) e \(Y_2 = 55\), e a taxa de juros é \(r = 10\%\).

(a) Escreva a equação de Euler para este consumidor.
(b) Encontre o consumo ótimo em cada período.
(c) O consumidor é poupador ou devedor?
(d) Se \(r\) cai para 5%, o que acontece com a poupança? Interprete em termos de efeitos substituição e renda.

[→ Solução](../solucoes/cap18/#ex-18-6)

---

<a id="ex-18-7"></a>**Exercício 18.7.** Um município avalia construir uma estação de tratamento de água. O investimento é R$ 10 milhões, a receita líquida anual é R$ 1,2 milhão por 20 anos. A taxa livre de risco é 6%, o prêmio de risco do mercado é 6,7% e o beta do setor de saneamento é 1,2.

(a) Calcule o custo de capital pelo CAPM e o VPL do projeto.
(b) Se o governo subsidia 30% do investimento, o projeto se torna viável?
(c) Se a regulação do setor melhorasse (reduzindo o beta para 0,8), qual seria o novo VPL?

[→ Solução](../solucoes/cap18/#ex-18-7)

---

<a id="ex-18-8"></a>**Exercício 18.8.** Compare dois títulos do Tesouro Direto: Tesouro Prefixado (12% nominal, 3 anos) e Tesouro IPCA+ (6% real + IPCA, 3 anos). A inflação pode ser 2%, 4% ou 8%, cada com probabilidade 1/3.

(a) Calcule o retorno real esperado de cada título.
(b) Calcule a variância do retorno real de cada título.
(c) Qual título um investidor avesso ao risco preferiria? Justifique usando o conceito de equivalente de certeza.

[→ Solução](../solucoes/cap18/#ex-18-8)

---

<a id="ex-18-9"></a>**Exercício 18.9.** Um consumidor com \(U = C_1^{0{,}5} C_2^{0{,}5}\), rendas \(Y_1 = 200\) e \(Y_2 = 100\) e taxa de juros \(r = 8\%\).

(a) Encontre o consumo ótimo e classifique o consumidor como poupador ou devedor.
(b) Suponha que o consumidor enfrenta uma restrição de crédito: \(S \geq 0\) (não pode tomar empréstimo). A solução muda? Discuta.
(c) Discuta a relevância das restrições de crédito na economia brasileira.

[→ Solução](../solucoes/cap18/#ex-18-9)

---

<a id="ex-18-10"></a>**Exercício 18.10.** Uma jazida de minério tem estoque \(S_0 = 2.000\) unidades, preço inicial \(p_0 = 120\), custo marginal de extração \(c = 40\) e taxa de juros \(r = 6\%\). A demanda inversa é \(p_t = 200 - 2q_t\).

(a) Calcule a renda de escassez inicial e em 10 anos.
(b) Derive a quantidade extraída em cada período como função de \(R_0\) e \(t\).
(c) Usando a restrição de estoque, determine \(R_0\) para o caso de 2 períodos.
(d) Se o governo impuser uma taxa de carbono de R$ 20/unidade, como isso afeta a velocidade de exaustão?

[→ Solução](../solucoes/cap18/#ex-18-10)

---

## 🏆 Vem, ANPEC!

??? question "ANPEC 2021 — Questão 12"
    Classifique como Verdadeiro (V) ou Falso (F):

    ⓪ No modelo de Fisher de dois períodos, um aumento da taxa de juros sempre reduz o consumo no período 1.

    ① A Regra de Hotelling prevê que o preço de um recurso não renovável cresce à taxa de juros no equilíbrio.

    ② O Valor Presente Líquido de um projeto é crescente na taxa de desconto.

    ③ A Taxa Interna de Retorno é sempre única para qualquer perfil de fluxos de caixa.

    ④ Se o custo de uso do capital é \(c_K = p_K(r + \delta)\), um aumento na taxa de depreciação \(\delta\) reduz a demanda por capital da firma.

    ??? success "Gabarito"
        ⓪ **Falso.** Para um poupador, o efeito renda (positivo sobre \(C_1\)) pode dominar o efeito substituição (negativo). O resultado depende da posição do consumidor.

        ① **Falso (com ressalva).** A regra de Hotelling afirma que a **renda de escassez** (preço líquido do custo de extração), e não o preço bruto, cresce à taxa de juros. Se o custo de extração é zero, as duas coincidem.

        ② **Falso.** O VPL é **decrescente** na taxa de desconto para projetos com investimento inicial seguido de fluxos positivos (caso convencional).

        ③ **Falso.** A TIR pode não ser única quando há múltiplas mudanças de sinal nos fluxos de caixa (regra de Descartes).

        ④ **Verdadeiro.** O aumento de \(\delta\) eleva \(c_K\), tornando o capital mais caro e reduzindo a quantidade demandada pela firma.

        **Gabarito: F, F, F, F, V**

??? question "ANPEC 2010 — Questão 05"
    Classifique como Verdadeiro (V) ou Falso (F):

    ⓪ A restrição orçamentária intertemporal de um consumidor que vive dois períodos é \(C_1 + C_2/(1+r) = Y_1 + Y_2/(1+r)\), onde \(r\) é a taxa de juros.

    ① Se a taxa de desconto subjetiva de um consumidor excede a taxa de juros de mercado, ele será devedor no primeiro período.

    ② Em uma economia fechada, a taxa de juros de equilíbrio é determinada pela igualdade entre poupança e investimento.

    ③ A equação de Fisher afirma que a taxa de juros real é aproximadamente igual à diferença entre a taxa nominal e a taxa de inflação.

    ④ O custo de oportunidade de manter um bem de capital é a taxa de juros multiplicada pelo preço do bem de capital.

    ??? success "Gabarito"
        ⓪ **Verdadeiro.** Essa é a restrição orçamentária intertemporal em valor presente, derivada da condição de que o consumidor pode poupar ou tomar empréstimo à taxa \(r\).

        ① **Verdadeiro.** Se \(\rho > r\), o consumidor é "impaciente" e prefere consumir mais no presente, tomando empréstimo.

        ② **Verdadeiro.** No equilíbrio do mercado de fundos emprestáveis, \(S(r) = I(r)\) determina a taxa de juros.

        ③ **Verdadeiro.** Pela equação de Fisher, \(r \approx i - \pi\) quando as taxas são pequenas.

        ④ **Verdadeiro.** O custo de oportunidade de manter capital é \(p_K \cdot r\) — o retorno que se obteria aplicando o valor do capital no mercado financeiro. Somando a depreciação, obtém-se o custo de uso completo \(c_K = p_K(r + \delta)\).

        **Gabarito: V, V, V, V, V**

??? question "ANPEC — Escolha Intertemporal e VPL (Questão Complementar 1)"
    Classifique como Verdadeiro (V) ou Falso (F):

    ⓪ No modelo de Fisher, a riqueza intertemporal do consumidor é independente da taxa de juros.

    ① Um projeto de investimento com TIR de 15% deve ser aceito se o custo de oportunidade do capital for 12%.

    ② A perpetuidade de um fluxo \(F\) descontada à taxa \(r\) tem valor presente \(F/r\).

    ③ Se a taxa de juros real sobe de 5% para 10%, o valor presente de R$ 100 a ser recebido em 20 anos cai de R$ 37,69 para R$ 14,86.

    ④ No modelo de Fisher, um consumidor que é poupador pode se tornar devedor se a taxa de juros cair suficientemente.

    ??? success "Gabarito"
        ⓪ **Falso.** \(W = Y_1 + Y_2/(1+r)\). A riqueza intertemporal depende de \(r\) porque o valor presente da renda futura varia com a taxa de desconto.

        ① **Verdadeiro.** Se TIR > custo de capital, o VPL é positivo e o projeto gera valor.

        ② **Verdadeiro.** Pela fórmula da perpetuidade, \(VP = F/r\).

        ③ **Verdadeiro.** \(100/(1{,}05)^{20} = 100/2{,}6533 = 37{,}69\). \(100/(1{,}10)^{20} = 100/6{,}7275 = 14{,}86\). A sensibilidade à taxa de desconto é enorme para horizontes longos.

        ④ **Verdadeiro.** Uma queda em \(r\) tem efeito substituição que encarece poupar (menor retorno) e efeito renda que, para o poupador, o empobrece (se \(r\) cai, a riqueza \(W\) sobe, mas o retorno da poupança cai). Se o efeito substituição dominar fortemente, o poupador pode trocar de posição.

        **Gabarito: F, V, V, V, V**

??? question "ANPEC — Hotelling e Recursos Naturais (Questão Complementar 2)"
    Classifique como Verdadeiro (V) ou Falso (F):

    ⓪ Segundo Hotelling, taxas de juros mais altas aceleram a exaustão de recursos não renováveis.

    ① A existência de uma backstop technology coloca um teto no preço do recurso exaurível.

    ② A renda de escassez de um recurso é definida como a diferença entre o preço de mercado e o custo marginal de extração.

    ③ A maldição dos recursos naturais contradiz a regra de Hotelling, mostrando que esta é teoricamente inválida.

    ④ Se o custo de extração é zero, a regra de Hotelling implica que o preço do recurso cresce exatamente à taxa de juros.

    ??? success "Gabarito"
        ⓪ **Verdadeiro.** Juros altos aumentam o custo de oportunidade de manter o recurso no solo, incentivando extração mais rápida.

        ① **Verdadeiro.** Se um substituto está disponível a preço \(\bar{p}\), ninguém pagará mais do que \(\bar{p}\) pelo recurso original.

        ② **Verdadeiro.** Por definição, \(R_t = p_t - c\).

        ③ **Falso.** A maldição dos recursos não invalida a teoria de Hotelling; ela revela que os pressupostos institucionais (direitos de propriedade claros, horizonte longo dos tomadores de decisão) nem sempre se verificam na prática.

        ④ **Verdadeiro.** Se \(c = 0\), então \(R_t = p_t\) e a regra \(\dot{R}/R = r\) se torna \(\dot{p}/p = r\).

        **Gabarito: V, V, V, F, V**

---

## 🤖 Exercício com IA

!!! tip "IA.6 — Simulação de Juros Compostos e Decisão de Investimento"
    **Prompt sugerido para ChatGPT/Claude:**

    > Simule um cenário de decisão de investimento para uma pequena empresa brasileira. A empresa tem R$ 200.000 para investir e pode: (A) aplicar no Tesouro IPCA+ a 6% real ao ano por 10 anos; (B) comprar um equipamento que gera receita líquida de R$ 35.000/ano por 10 anos. Calcule o VPL e a TIR do projeto B usando 6% como custo de oportunidade. Depois, simule como a decisão muda se a taxa real sobe para 10% (cenário de Selic alta). Explique a sensibilidade do VPL à taxa de desconto e conecte com o debate sobre investimento produtivo no Brasil.

    **O que explorar:** Peça para a IA plotar o gráfico VPL × taxa de desconto, identificar a TIR e discutir como o cenário de juros altos brasileiro cria um viés contra projetos de médio/longo prazo.
