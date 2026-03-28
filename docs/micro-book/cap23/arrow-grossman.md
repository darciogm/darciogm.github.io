## 23.1 Por que a saúde é diferente? {#231}

### 23.1.1 O artigo fundador: Arrow (1963)

Kenneth Arrow não era especialista em saúde quando escreveu seu artigo seminal. Era um teórico do equilíbrio geral — o mesmo Arrow do Capítulo 14 (Equilíbrio Geral) e do teorema da impossibilidade em escolha social. Mas quando a Ford Foundation encomendou um estudo sobre a economia dos cuidados médicos, Arrow aplicou o rigor da teoria microeconômica para identificar *por que* o mercado de saúde resiste à análise convencional de oferta e demanda.

Arrow identificou quatro características que distinguem o mercado de saúde:

**1. Incerteza radical.** Ao contrário de comprar um carro ou um café, a demanda por cuidados médicos é *imprevisível*. Ninguém sabe quando ficará doente, quão grave será a doença, ou qual tratamento funcionará. Essa incerteza gera demanda por seguro (Capítulo 7) — mas o seguro de saúde, por sua vez, cria problemas de risco moral e seleção adversa que não existem (ou são muito menores) em outros mercados de seguros.

Formalmente, seja \(s \in \{saudável, doente\}\) o estado de saúde do indivíduo, com probabilidades \(\pi_s\) e \(\pi_d = 1 - \pi_s\). O custo do tratamento no estado doente é \(m\), mas o indivíduo não sabe ex ante quando precisará de tratamento. A utilidade esperada sem seguro é:

\[
EU_{\text{sem seguro}} = \pi_s \cdot u(W) + \pi_d \cdot u(W - m) \tag{23.1}
\]

onde \(W\) é a riqueza inicial. Se \(u\) é côncava (aversão ao risco, Capítulo 7), o indivíduo prefere um seguro atuarialmente justo com prêmio \(P = \pi_d \cdot m\):

\[
EU_{\text{com seguro}} = u(W - P) = u(W - \pi_d \cdot m) > EU_{\text{sem seguro}} \tag{23.2}
\]

A desigualdade segue da desigualdade de Jensen — exatamente como no Capítulo 7.

**2. Assimetria de informação médico-paciente.** O médico sabe mais que o paciente sobre diagnóstico, prognóstico e tratamento. Essa assimetria é mais severa que em outros mercados: quando você compra um carro, pode pesquisar preços e qualidade; quando está com dor no peito, confia no médico. Isso cria um problema de **agência** (Capítulo 19): o médico é simultaneamente conselheiro (agente do paciente) e vendedor (com interesse financeiro no tratamento prescrito).

**3. Externalidades.** Muitas intervenções de saúde geram externalidades positivas. A vacinação protege não apenas o vacinado, mas toda a comunidade — criando **imunidade de rebanho**. O tratamento de doenças contagiosas reduz a transmissão para terceiros. Em termos do Capítulo 20, a vacinação é um bem com externalidade positiva: o benefício social excede o benefício privado, e o mercado subproduz vacinas em relação ao ótimo.

**4. Bens meritórios e normas sociais.** A maioria das sociedades considera que acesso a cuidados médicos básicos é um *direito*, não um privilégio de quem pode pagar. Essa norma não se aplica a carros ou smartphones. Arrow reconheceu que essa dimensão normativa afeta a organização dos mercados de saúde: médicos operam sob códigos de ética, hospitais frequentemente são organizações sem fins lucrativos, e governos intervêm maciçamente no financiamento e na provisão de serviços.

!!! definition "Bem meritório (merit good)"
    Um **bem meritório** é aquele cujo consumo a sociedade deseja encorajar acima do nível que resultaria da escolha individual livre, por considerar que os indivíduos subestimam seus benefícios (por informação incompleta, miopia ou externalidades). Exemplos: educação, vacinação, exames preventivos. O conceito, introduzido por Richard Musgrave (1957), justifica intervenção pública mesmo na ausência de falhas de mercado clássicas — um ponto controverso entre economistas, pois implica que o governo "sabe melhor" que o indivíduo.

!!! idea "Intuição Econômica"
    **Em uma frase:** O mercado de saúde não é um mercado como os outros — incerteza, assimetria de informação, externalidades e normas sociais justificam intervenção pública de formas que não se aplicam a mercados convencionais.

    **Pense assim:** Imagine três mercados: café, automóveis e cirurgia cardíaca. No café, você sabe o que quer, pode comparar preços, e se o café for ruim, a consequência é menor. No automóvel, a compra é mais complexa, mas você pode pesquisar, testar e devolver. Na cirurgia, você não sabe se precisa (incerteza), não entende as opções (assimetria de informação), o "vendedor" é quem decide o que você "compra" (agência médica), e se o cirurgião errar, a consequência pode ser a morte. Essas diferenças não são de grau — são de natureza.

    **Por que isso importa:** Quase 10% do PIB global é gasto em saúde. Se o mercado de saúde funcionasse como o de café, não precisaríamos de SUS, NHS, Medicare ou qualquer sistema público. Arrow mostrou que as falhas de mercado em saúde são tão fundamentais que alguma forma de intervenção é economicamente justificada — o debate é sobre *qual* forma.

### 23.1.2 Saúde como capital humano: o modelo de Grossman (1972)

Se Arrow olhou para o mercado de saúde e viu falhas por toda parte, Michael Grossman olhou para o *indivíduo* e viu uma fábrica. Uma fábrica que produz saúde — e que, infelizmente, enferruja. Grossman propôs uma abordagem complementar à de Arrow, tratando a **saúde como um estoque de capital durável** — análogo ao capital físico das firmas (Capítulo 10) ou ao capital humano de Becker. O indivíduo nasce com um estoque de saúde \(H_0\), que se deprecia ao longo do tempo (envelhecimento) e pode ser aumentado por investimento (cuidados médicos, exercício, alimentação).

Formalmente, a dinâmica do estoque de saúde é:

\[
H_{t+1} = H_t - \delta_t H_t + I_t \tag{23.3}
\]

onde \(\delta_t\) é a taxa de depreciação (que aumenta com a idade) e \(I_t\) é o investimento bruto em saúde no período \(t\). O investimento depende de insumos — tempo dedicado à saúde (\(\tau_t^H\)) e cuidados médicos (\(m_t\)):

\[
I_t = I(m_t, \tau_t^H; E) \tag{23.4}
\]

onde \(E\) é o nível de educação, que aumenta a eficiência do investimento em saúde (pessoas mais educadas produzem mais saúde com os mesmos insumos).

O indivíduo maximiza utilidade intertemporal:

\[
\max \sum_{t=0}^{T} \beta^t \, u(C_t, h_t) \tag{23.5}
\]

onde \(C_t\) é consumo de outros bens, \(h_t\) é o fluxo de "dias saudáveis" (proporcionais a \(H_t\)), e \(\beta\) é o fator de desconto intertemporal (Capítulo 18). A restrição orçamentária inclui o custo dos cuidados médicos e o custo de oportunidade do tempo dedicado à saúde.

!!! definition "Modelo de Grossman"
    O modelo de Grossman distingue entre **demanda por saúde** e **demanda por cuidados médicos**. A saúde é o objetivo final (bem de consumo e de investimento); os cuidados médicos são um *insumo* para produzir saúde. Assim como a demanda por aço deriva da demanda por carros, a demanda por consultas médicas e medicamentos deriva da demanda por estar saudável. Essa distinção é crucial: políticas que aumentam a oferta de serviços médicos não necessariamente melhoram a saúde da população.

O modelo gera várias previsões testáveis:

1. **A demanda por saúde diminui com a idade**, porque \(\delta_t\) aumenta: manter o estoque de saúde fica mais caro. Eventualmente, \(H_t\) cai abaixo de um limiar mínimo \(H_{\min}\), e o indivíduo morre.

2. **Pessoas mais educadas investem mais em saúde**, porque a educação aumenta a eficiência da produção de saúde. Isso explica parte do "gradiente educação-saúde" observado em todos os países.

3. **Aumentos no salário têm efeito ambíguo**: aumentam o custo de oportunidade do tempo dedicado à saúde (efeito substituição negativo), mas também aumentam a renda (efeito renda positivo).

4. **A demanda por cuidados médicos é demanda derivada**: depende do preço dos cuidados, mas também da taxa de depreciação, do salário, e da educação.
