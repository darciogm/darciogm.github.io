# 11.5–11.6 Curvas de Custo e Seus Deslocamentos

## 11.5 O Trio que Manda na Oferta: Curvas de Custo {#115}

A função custo é poderosa, mas abstrata — depende de três variáveis ao mesmo tempo. Agora, congelamos os preços dos insumos e deixamos só a quantidade variar. O resultado são as famosas curvas de custo total, custo médio e custo marginal — o trio que aparece em toda prova de micro, toda análise de empresa e toda reunião de diretoria (mesmo que disfarçado com outros nomes). Entender por que o custo marginal sempre cruza o custo médio no seu ponto de mínimo — como um corredor que puxa a média do pelotão para baixo enquanto é mais rápido — é a chave para a análise da oferta nos Capítulos 12 e 13.

Vale notar que, ao fixar os preços dos insumos, passamos de uma perspectiva tridimensional (\(C\) como função de \(w\), \(v\) e \(q\)) para a perspectiva usual (\(C\) como função apenas de \(q\)). Essa simplificação — perfeitamente justificada em um mercado de insumos competitivo onde a firma é tomadora de preços — nos permite focar na geometria das curvas de custo sem perda de generalidade.

<iframe src="/micro-book/graficos/cap11/curvas-custo.html" title="Figura 11.2 — Curvas de custo total, médio e marginal" class="graph-iframe" style="height:680px;overflow:hidden" scrolling="no"></iframe>

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

Portanto, pela equação $\eqref{eq:11.8}$, \(\mathrm{CMe}\) é decrescente quando \(\mathrm{CMg} < \mathrm{CMe}\) e crescente quando \(\mathrm{CMg} > \mathrm{CMe}\).

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

<iframe src="/micro-book/graficos/cap11/webr-curvas-custo.html" title="WebR — Curvas de Custo" class="graph-iframe" style="height:1080px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 11.4 — Curvas de custo: CT, CMe, CMg e CVMe.** O código plota as curvas de custo a partir de uma função cúbica \(CT(q) = CF + aq + bq^2 + cq^3\) e calcula automaticamente os pontos de mínimo do CMe e CVMe. Altere os parâmetros `CF`, `a`, `b` e `c` para ver como o formato das curvas muda — e confirme que o CMg sempre cruza o CMe e o CVMe em seus mínimos.
</div>

---

## 11.6 Quando o Chão se Move: Deslocamentos nas Curvas de Custo {#116}

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

O Brasil oferece um laboratório rico para analisar os efeitos de impostos sobre os custos das firmas. Os encargos sobre a folha de pagamento — INSS patronal (20%), FGTS (8%), e contribuições para sistema S, RAT e outros — elevam o custo efetivo de contratar um trabalhador com salário formal de \(w\) para aproximadamente \(w \times 1{,}38\) a \(1{,}50\), dependendo do setor. Para firmas intensivas em trabalho, esse encargo representa um deslocamento significativo para cima da curva de CVMe e de CMg. O efeito é semelhante ao de uma elevação no preço do insumo trabalho: a firma pode substituir trabalho por capital (efeito de substituição) ou reduzir a produção (efeito escala), dependendo da elasticidade de substituição entre os insumos. O estudo de Ferreira e Rossi (2003), discutido na [seção de pesquisa](pesquisa.md), documenta como a abertura comercial dos anos 1990 reduziu efetivamente os custos das firmas brasileiras ao expô-las à competição internacional e forçar a adoção de tecnologias mais eficientes.
