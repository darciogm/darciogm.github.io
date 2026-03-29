# 19.3 Risco Moral

## 19.3 Seguro Total e Capinha no Bolso: Risco Moral {#193}

Você já reparou que as pessoas dirigem com mais cautela quando o carro é emprestado de um amigo do que quando têm seguro total? Ou que o estagiário trabalha com mais afinco na semana da avaliação? Esse é o risco moral em estado puro — o problema que surge quando alguém pode agir de forma oculta depois que o acordo já foi fechado. O termo "risco moral" (*moral hazard*) tem origem no setor de seguros do século XIX, quando as seguradoras perceberam que clientes segurados tendiam a ser menos cuidadosos com seus bens. Por que o risco moral é tão difundido? Porque em praticamente toda relação de delegação — de um empregador que contrata um gerente a uma seguradora que cobre um segurado, de um acionista que contrata um CEO a um eleitor que elege um político — existe algum grau de ação oculta que escapa ao monitoramento direto.

!!! definition "Risco Moral (Moral Hazard)"
    Problema de informação assimétrica que surge quando uma parte de uma transação pode tomar **ações não observáveis** (ocultas) que afetam o resultado da relação, e a outra parte não consegue monitorar ou verificar essas ações diretamente. O termo refere-se à mudança de comportamento do agente após a celebração do contrato.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando alguém está protegido contra as consequências de suas ações, tende a se arriscar mais — porque quem paga a conta é outro.

    **Pense assim:** Depois de contratar um seguro completo para o celular, muita gente deixa de usar capinha e película. Afinal, se o aparelho quebrar, a seguradora cobre. Esse "relaxamento" após o contrato é o risco moral em ação — o comportamento muda porque o custo de ser descuidado foi transferido para outra parte.

    **Por que isso importa:** Franquias e coparticipações em planos de saúde e seguros existem justamente para manter o segurado com "pele no jogo", evitando que a proteção gere descuido excessivo.

O risco moral é um problema **pós-contratual**: a assimetria de informação diz respeito a ações tomadas pelo agente *depois* de firmado o acordo. Isso o distingue da seleção adversa (Seção 19.4), que é pré-contratual — o agente já possui informação privada *antes* do contrato ser celebrado.

!!! tip "Conexão com o Capítulo 9d"
    A formalização do moral hazard como jogo sequencial com informação incompleta, incluindo a derivação do contrato ótimo linear de Holmström e a discussão do trade-off incentivos vs. seguro no framework de jogos bayesianos, encontra-se na Seção 9d.4. Aqui, o foco é a aplicação a contratos reais e políticas públicas brasileiras.

### 19.3.1 A relação proprietário-gerente

Considere um proprietário (principal) que contrata um gerente (agente) para administrar sua empresa. O lucro \(\pi\) depende do esforço \(e\) do gerente e de um choque aleatório \(\varepsilon\):

\[
\pi = f(e) + \varepsilon, \quad \varepsilon \sim (0, \sigma^2)
\label{eq:19.4} \tag{19.4} \]

O esforço \(e\) é custoso para o gerente, com custo \(c(e)\), onde \(c'(e) > 0\) e \(c''(e) > 0\). Se o proprietário pudesse observar \(e\), contrataria o nível eficiente \(e^*\) tal que:

\[
f'(e^*) = c'(e^*)
\label{eq:19.5} \tag{19.5} \]

A equação $\eqref{eq:19.5}$ é a condição de first-best: o benefício marginal do esforço (para o proprietário) iguala o custo marginal (para o gerente). Quando \(e\) não é observável, o proprietário precisa desenhar um esquema de compensação \(w(\pi)\) que dependa do resultado observável \(\pi\). Se o gerente é avesso ao risco com utilidade \(U(w) - c(e)\), o contrato ótimo envolve um **trade-off entre incentivos e seguro**:

- Um salário fixo \(w = \bar{w}\) provê seguro perfeito ao gerente, mas nenhum incentivo para se esforçar — ele recebe o mesmo independentemente do resultado.
- Um contrato puramente variável \(w = \pi - R\) (em que \(R\) é a renda fixa do proprietário) provê incentivos perfeitos (o gerente é o "dono residual"), mas transfere todo o risco ao gerente — ineficiente quando o gerente é avesso ao risco.

Esse trade-off é a essência do problema de risco moral: incentivos perfeitos requerem exposição ao risco, mas exposição ao risco é custosa quando o agente é avesso ao risco. O contrato ótimo é um compromisso entre as duas forças — e esse compromisso é o que observamos nos contratos do mundo real.

Na prática brasileira, esse trade-off se manifesta claramente nos contratos de executivos de empresas listadas na B3. A remuneração variável (bônus, stock options) dos CEOs das empresas do Ibovespa representava, em média, 60–70% da remuneração total em 2024, segundo dados da CVM — refletindo um forte componente de incentivos. Ao mesmo tempo, a parte fixa (30–40%) provê um "colchão de seguro" mínimo. A proporção variável tende a ser maior em setores com mais incerteza (tecnologia, commodities) e menor em setores estáveis (utilities, bancos) — exatamente como o modelo prevê: quando \(\sigma^2\) é grande, o custo de expor o agente ao risco é alto, e o contrato ótimo se inclina mais para a parte fixa.

Se o principal fosse neutro ao risco e o agente também, não haveria trade-off: bastaria vender a "franquia" da operação ao agente por um valor fixo, e ele tomaria as decisões eficientes. O problema surge exclusivamente porque o agente é avesso ao risco, e impor-lhe risco tem custo. Esse insight — de que o custo de agência decorre fundamentalmente da interação entre não-observabilidade e aversão ao risco — é um dos resultados mais importantes da teoria dos contratos.

!!! theorem "Princípio da Informatividade (Holmström, 1979)"
    O contrato ótimo deve vincular o pagamento do agente a **qualquer variável** que contenha informação sobre o esforço do agente, e somente a essas variáveis. Formalmente, uma variável \(y\) deve ser incluída no contrato se e somente se a distribuição condicional de \(x\) dado \(e\) muda com \(y\), ou seja, se \(y\) é **informativa** sobre \(e\).

O Princípio da Informatividade tem implicações práticas surpreendentes e de amplo alcance. Primeiro, o desempenho relativo do gerente em relação a firmas similares é informativo sobre o esforço (pois filtra choques comuns ao setor), o que justifica contratos de compensação com cláusulas de *benchmarking* — prática comum na remuneração de CEOs de empresas listadas. Se o setor inteiro vai mal mas a firma do gerente vai "menos mal", isso sugere esforço acima da média, e o contrato ótimo deve recompensá-lo por isso.

Segundo, variáveis que *não* contêm informação sobre o esforço devem ser *excluídas* do contrato, mesmo que estejam disponíveis — incluí-las apenas adicionaria ruído e risco desnecessário ao agente. Terceiro, o princípio explica por que esquemas de remuneração multidimensionais (que condicionam o pagamento a múltiplos indicadores de desempenho) podem ser superiores a esquemas unidimensionais: cada indicador adicional informativo sobre o esforço permite reduzir o risco imposto ao agente, diminuindo o custo de agência. Bengt Holmström recebeu o Prêmio Nobel de Economia em 2016 (junto com Oliver Hart) em grande parte por essa contribuição.

!!! info "🏅 Prêmio Nobel — Oliver Hart e Bengt Holmström (2016)"

    **Oliver Hart** (1948–presente) é um economista britânico-americano, professor em Harvard. **Bengt Holmström** (1949–2024) foi um economista finlandês, professor no MIT.

    **Por que ganharam o Nobel:**
    Premiados por suas contribuições à **teoria dos contratos**. Holmström formalizou o princípio da informatividade (1979): o contrato ótimo deve vincular o pagamento a *qualquer* variável que contenha informação sobre o esforço do agente. Desenvolveu também a análise de incentivos multitarefa — quando o agente tem múltiplas atividades, medir e recompensar apenas algumas pode distorcer o esforço para longe das atividades não mensuradas. Hart, por sua vez, desenvolveu a teoria dos **contratos incompletos**: como é impossível prever todas as contingências futuras, os contratos reais são inevitavelmente incompletos, e a **alocação de direitos de propriedade** determina quem tem poder de decisão nas situações não cobertas pelo contrato — com consequências profundas para a integração vertical, a privatização e os limites da firma.

    **Conexão com este capítulo:**
    O princípio da informatividade de Holmström fundamenta toda a Seção 19.3 sobre risco moral. A teoria dos contratos incompletos de Hart complementa a análise ao explicar por que, na prática, os contratos observados são mais simples do que o modelo ótimo prevê — e por que a propriedade dos ativos importa quando a renegociação é inevitável. A integração vertical (por que a firma faz internamente em vez de contratar no mercado?) é uma aplicação direta da teoria de Hart, conectando este capítulo ao Capítulo 12 (natureza da firma, Coase-Williamson).

### 19.3.2 Risco moral em seguros

O caso clássico de risco moral — e historicamente o primeiro a ser identificado — ocorre no mercado de seguros. A própria expressão *moral hazard* surgiu no setor segurador inglês do século XIX, quando se observou que prédios segurados contra incêndio tinham maior probabilidade de pegar fogo — não por coincidência, mas porque os proprietários reduziam investimentos em prevenção. Após contratar um seguro contra roubo, o segurado pode reduzir os cuidados com a prevenção (não trancar o carro, não instalar alarme), aumentando a probabilidade de sinistro. O mecanismo é geral: qualquer contrato que proteja uma parte das consequências de suas ações tende a alterar essas ações na direção de maior risco.

Seja \(p(e)\) a probabilidade de sinistro, com \(p'(e) < 0\) (mais esforço de prevenção reduz a probabilidade). O segurado escolhe \(e\) para maximizar:

\[
\max_{e} \; [1 - p(e)] \cdot U(W_0 - q) + p(e) \cdot U(W_0 - q - L + I) - c(e)
\]

onde \(W_0\) é a riqueza inicial, \(q\) é o prêmio do seguro, \(L\) é a perda potencial, \(I\) é a indenização e \(c(e)\) é o custo do esforço de prevenção.

Com seguro completo (\(I = L\)), o segurado recebe \(W_0 - q\) em qualquer estado, eliminando todo incentivo para esforço preventivo. Por isso, seguros com **franquias** e **coparticipação** são mecanismos para mitigar o risco moral, fazendo com que o segurado assuma parte do risco e mantenha incentivos para prevenção. A franquia é talvez o instrumento mais simples e difundido de combate ao risco moral em seguros.

No gráfico interativo abaixo, explore o trade-off entre incentivos e seguro no modelo principal-agente. Observe como o contrato ótimo equilibra os pagamentos nos estados bom e ruim para induzir esforço, e como o custo de agência cresce quando a incerteza aumenta.

<iframe src="/micro-book/graficos/cap19/principal-agente.html" title="Figura 19.1 — Modelo principal-agente com risco moral" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 19.1 — Modelo principal-agente com risco moral.** O gráfico mostra a restrição de participação (RP) e a restrição de compatibilidade de incentivos (RCI) no espaço de salários. O ponto verde indica o contrato ótimo que induz esforço alto.
</div>

### 19.3.3 O problema do esforço não observável: modelo formal

Considere dois níveis de esforço: alto (\(e_H\)) e baixo (\(e_L\)), com \(c(e_H) > c(e_L)\). O resultado pode ser bom (\(x_H\)) ou ruim (\(x_L\)). Sob esforço alto, a probabilidade de \(x_H\) é \(p_H\); sob esforço baixo, é \(p_L\), com \(p_H > p_L\).

O principal deseja induzir esforço alto. O contrato especifica pagamentos \(w_H\) (se \(x = x_H\)) e \(w_L\) (se \(x = x_L\)). As restrições são:

**Restrição de Participação (RP):**

\[
p_H \, U(w_H) + (1 - p_H) \, U(w_L) - c(e_H) \geq \bar{U}
\label{eq:19.6} \tag{19.6} \]

**Restrição de Compatibilidade de Incentivos (RCI):**

\[
p_H \, U(w_H) + (1 - p_H) \, U(w_L) - c(e_H) \geq p_L \, U(w_H) + (1 - p_L) \, U(w_L) - c(e_L)
\label{eq:19.7} \tag{19.7} \]

Simplificando a RCI:

\[
(p_H - p_L)[U(w_H) - U(w_L)] \geq c(e_H) - c(e_L)
\label{eq:19.8} \tag{19.8} \]

A equação $\eqref{eq:19.8}$ exige que a diferença de pagamentos entre os estados bom e ruim seja suficientemente grande para compensar o custo adicional do esforço. Como \(p_H > p_L\), precisamos de \(w_H > w_L\): o pagamento deve ser maior quando o resultado é bom. Note que quanto menor \(p_H - p_L\) (isto é, quanto mais difícil é distinguir esforço de sorte), maior precisa ser a diferença \(w_H - w_L\) para satisfazer a RCI — e maior será o custo de agência, pois mais risco é transferido ao agente.

!!! idea "Intuição Econômica"
    **Em uma frase:** O "prêmio" por bom desempenho deve ser grande o suficiente para que o agente prefira se esforçar — caso contrário, ele relaxa.

    **Pense assim:** Um vendedor comissionado só se esforça se a diferença entre a comissão do mês bom e a do mês ruim compensar o cansaço extra. Se a comissão é quase igual nos dois cenários, por que suar? Quanto mais difícil é distinguir esforço de sorte (\(p_H - p_L\) pequeno), maior precisa ser o bônus.

    **Por que isso importa:** A Restrição de Compatibilidade de Incentivos (RCI) é a peça central dos contratos de incentivo — ela determina o custo de agência e explica por que contratos ótimos raramente oferecem seguro completo ao agente.

!!! warning "⚠️ Erro Comum"

    **Confundir risco moral (moral hazard) com seleção adversa (adverse selection).**

    Ambos são problemas de informação assimétrica, mas diferem no *timing* e na *natureza* da informação oculta. O **risco moral** envolve uma *ação oculta* que ocorre **após** o contrato (pós-contratual): o agente escolhe um nível de esforço que o principal não observa. A **seleção adversa** envolve um *tipo oculto* que existe **antes** do contrato (pré-contratual): o agente conhece suas características (risco, qualidade, produtividade), mas o principal não. Os instrumentos de solução também diferem: para risco moral, usam-se contratos de incentivo (bônus, comissões); para seleção adversa, usam-se menus de contratos, sinalização ou triagem (screening).

O exercício a seguir aplica o modelo formal a um caso numérico, calculando os pagamentos ótimos e o custo de agência.

??? exercicio-resolvido "Exercício Resolvido 19.1 — Contrato ótimo com risco moral"
    **Enunciado:** Um principal contrata um agente cuja utilidade é \(U = \sqrt{w} - e\), onde \(w\) é o salário e \(e \in \{0, 1\}\) é o esforço. O resultado pode ser bom (\(x_H\)) com probabilidade \(p(e)\) ou ruim (\(x_L\)) caso contrário, onde \(p(1) = 3/4\) e \(p(0) = 1/4\). A utilidade de reserva é \(\bar{U} = 3\). O principal deseja induzir esforço alto (\(e = 1\)).

    **Dados:** \(p_H = 3/4\), \(p_L = 1/4\), \(c(1) = 1\), \(c(0) = 0\), \(\bar{U} = 3\).

    **Resolução:**

    **Passo 1 — Restrições**

    Defina \(a = \sqrt{w_H}\) e \(b = \sqrt{w_L}\).

    **RP** (com esforço alto):

    \[
    \frac{3}{4}\,a + \frac{1}{4}\,b - 1 \geq 3 \;\Rightarrow\; \frac{3}{4}\,a + \frac{1}{4}\,b \geq 4
    \]

    **RCI** (esforço alto ≥ esforço baixo):

    \[
    \frac{3}{4}\,a + \frac{1}{4}\,b - 1 \geq \frac{1}{4}\,a + \frac{3}{4}\,b - 0
    \]

    \[
    \frac{1}{2}(a - b) \geq 1 \;\Rightarrow\; a - b \geq 2
    \]

    **Passo 2 — Resolução (ambas binding)**

    Da RCI: \(a = b + 2\). Substituindo na RP:

    \[
    \frac{3}{4}(b + 2) + \frac{1}{4}\,b = 4 \;\Rightarrow\; b + \frac{3}{2} = 4 \;\Rightarrow\; b = \frac{5}{2}
    \]

    \[
    a = \frac{9}{2}, \quad w_H = a^2 = \frac{81}{4} = 20{,}25, \quad w_L = b^2 = \frac{25}{4} = 6{,}25
    \]

    **Passo 3 — Custo esperado e comparação com first-best**

    Custo esperado do contrato (second-best):

    \[
    \mathbb{E}[w] = \frac{3}{4}(20{,}25) + \frac{1}{4}(6{,}25) = 15{,}1875 + 1{,}5625 = 16{,}75
    \]

    No first-best (esforço observável), o salário fixo \(w_{FB}\) satisfaz \(\sqrt{w_{FB}} - 1 = 3\), logo \(w_{FB} = 16\).

    **Resultado:** O **custo de agência** é \(16{,}75 - 16 = 0{,}75\). Essa é a perda de eficiência causada pela assimetria de informação.

    **Interpretação econômica:** O principal precisa pagar um "prêmio por bom resultado" (\(w_H - w_L = 14\)) para compensar o custo do esforço. Como o agente é avesso ao risco (\(U = \sqrt{w}\)), expô-lo a essa variabilidade é custoso — o custo esperado do contrato sobe de 16 para 16,75. Esse trade-off entre incentivos e seguro é o cerne do problema de risco moral.

<iframe src="/micro-book/graficos/cap19/webr-risco-moral.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 19.1 — Contrato ótimo com risco moral.** Calcule os salários ótimos, o custo de agência e veja como a "informatividade" do resultado (pH − pL) afeta o trade-off entre incentivos e seguro.

</div>

??? exercicio-resolvido "Exercício Resolvido 19.2 — Risco moral em seguro: franquia mínima"
    **Enunciado:** Uma seguradora oferece seguro contra roubo de celular no valor de R$ 4.000. Sem cuidados (esforço baixo), a probabilidade de roubo é 30%. Com cuidados — usar capinha, não deixar exposto — (esforço alto), a probabilidade cai para 10%. O custo do esforço é R$ 100. (a) Se a seguradora oferece seguro completo ao prêmio atuarialmente justo (baseado em esforço alto), o segurado terá incentivo para manter os cuidados? (b) Qual é a franquia mínima necessária para incentivar esforço alto?

    ---

    **(a)** Com seguro completo: prêmio = \(p(e_H) \times L = 0{,}10 \times 4.000 = 400\). Indenização = 4.000.

    Em ambos os estados, a riqueza é \(W_0 - 400\). O segurado economiza R$ 100 se não fizer esforço, sem nenhuma consequência — seguro completo elimina o incentivo. **Resposta: Não.**

    **(b)** Com franquia \(D\), o segurado arca com \(D\) em caso de sinistro.

    Com esforço: \(\mathbb{E}[W] = W_0 - q - 0{,}10 \cdot D - 100\).

    Sem esforço: \(\mathbb{E}[W] = W_0 - q - 0{,}30 \cdot D\).

    Para que esforço alto domine:

    \[
    -0{,}10 D - 100 \geq -0{,}30 D \;\Rightarrow\; 0{,}20 D \geq 100 \;\Rightarrow\; D \geq 500
    \]

    **Resultado:** A franquia mínima é **R$ 500** — o segurado precisa "ter pele no jogo" para manter os cuidados.

    **Interpretação:** No mercado brasileiro, seguradoras de celular como Porto Seguro e Zurich tipicamente cobram franquias de 20–30% do valor do aparelho (R$ 800–1.200 para um celular de R$ 4.000), acima do mínimo teórico — refletindo outros fatores como custos administrativos e graus de aversão ao risco.

<iframe src="/micro-book/graficos/cap19/webr-franquia.html" width="100%" height="820" style="border:none; border-radius:8px; box-shadow: 0 2px 8px rgba(0,0,0,0.1);"></iframe>
<div class="caption-obj">

**WebR 19.2 — Franquia mínima e risco moral em seguros.** Altere a probabilidade de sinistro e o custo do esforço para ver como a franquia mínima necessária muda. Compare com as franquias praticadas no mercado brasileiro.

</div>
