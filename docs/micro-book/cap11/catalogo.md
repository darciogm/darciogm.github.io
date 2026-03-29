# 11.8 O Catálogo de Custos: Funções de Produção e suas Funções Custo

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

**Função custo.** Simplificando o gasto mínimo \(C = vK^c + wL^c\):

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
    - \(\rho \to -\infty\) (\(\sigma \to 0\)): converge para Leontief \(q = \min\{K, L\}\)

A função custo CES em $\eqref{eq:11.18}$ também permite derivar diretamente as participações dos insumos no custo total. Definindo \(s_K = vK^c/C\) e \(s_L = wL^c/C\), a participação do capital no custo é:

\[
s_K = \frac{\alpha^\sigma v^{1-\sigma}}{W^{1-\sigma}}
\]

Quando \(\sigma > 1\) (alta elasticidade de substituição), um aumento em \(v/w\) reduz a participação do capital no custo mais do que proporcionalmente — a firma substitui fortemente capital por trabalho. Quando \(\sigma < 1\), a substituição é mais limitada e a participação do capital pode até *aumentar* com o aumento de seu preço relativo (efeito gasto domina o efeito substituição). Esse fenômeno, análogo ao paradoxo de Giffen no consumo mas para insumos, raramente é observado na prática, mas é teoricamente possível.

<iframe src="/micro-book/graficos/cap11/webr-custos-funcoes.html" title="WebR — Catálogo de Funções Custo" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 11.6 — Catálogo de funções custo.** O código compara as funções custo derivadas de Cobb-Douglas, Leontief, linear e CES para os mesmos preços de insumos. Altere os parâmetros para ver como a elasticidade de substituição afeta a forma da função custo e a composição de insumos.
</div>

---

!!! info "Prêmio Nobel — Ronald Coase (1991)"
    **Ronald Harry Coase** (1910–2013) recebeu o Nobel de Economia em 1991 "pela descoberta e esclarecimento do significado dos custos de transação e dos direitos de propriedade para a estrutura institucional e funcionamento da economia".

    Coase é mais conhecido por dois artigos transformadores. Em "The Nature of the Firm" (1937), ele perguntou: se os mercados são tão eficientes, por que as firmas existem? Por que não toda a produção é organizada via contratos de mercado entre agentes independentes? Sua resposta: os **custos de transação** — os custos de negociar, redigir e fazer cumprir contratos — tornam a coordenação interna (hierarquia) mais barata que a coordenação de mercado para certas atividades. A firma existe onde os custos de transação do mercado excedem os custos de organização interna. Esse insight muda radicalmente como pensamos a estrutura de custos da firma: além dos custos explícitos de insumos, há custos organizacionais que determinam os limites da firma.

    Em "The Problem of Social Cost" (1960), Coase desenvolveu o que ficou conhecido como Teorema de Coase: na ausência de custos de transação, as partes negociarão e chegarão ao resultado eficiente independentemente da alocação inicial de direitos de propriedade. A existência de custos de transação positivos é, portanto, o que justifica intervenções regulatórias e arranjos institucionais. Para a teoria dos custos, a implicação é que o custo econômico completo de uma atividade inclui não apenas os custos diretos de insumos, mas também os custos de transação associados à organização da produção.

    *Referência: Coase, R. H. (1937). The Nature of the Firm. Economica, 4(16), 386–405.*

---

A dona da padaria do início sabia: não basta saber fazer — é preciso saber quanto custa. Agora ela tem o instrumental completo: custo de oportunidade para não se enganar, Shephard para extrair demandas por insumos de uma única função, e a envoltória de Viner para distinguir o improviso do curto prazo da eficiência do longo prazo. O mapa de custos está desenhado. Falta a pergunta que paga as contas: quanto produzir?

*Custos mapeados. Agora a firma enfrenta o mercado: quanto produzir, a que preço, e quando fechar as portas.*
