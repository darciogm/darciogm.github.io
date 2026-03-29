# Bens Públicos: Atributos e Alocação

## 20.5 Quem Paga Pelo Poste de Luz?: Atributos dos Bens Públicos {#205}

!!! definition "Bem Público"
    Um **bem público puro** é aquele que possui simultaneamente duas propriedades:

    1. **Não-rivalidade**: o consumo do bem por um indivíduo não reduz a quantidade disponível para outros. Formalmente, se \(G\) é a quantidade provida, cada consumidor pode consumir \(G\) integralmente: \(g_i = G\) para todo \(i\).

    2. **Não-exclusão**: não é possível (ou é excessivamente custoso) impedir indivíduos de consumir o bem, mesmo que não paguem por ele.

### Classificação de bens

A combinação dessas duas propriedades gera uma classificação de bens em quatro categorias:

**Tabela 20.1 — Classificação de bens por rivalidade e excludência**

| | **Excludente** | **Não-excludente** |
|---|---|---|
| **Rival** | **Bem privado** (alimento, vestuário, combustível) | **Recurso comum** (cardume no oceano, pasto comunitário, água de aquífero) |
| **Não-rival** | **Bem de clube** (TV a cabo, pedágio, parque com entrada paga) | **Bem público puro** (defesa nacional, iluminação pública, ar limpo) |

A tabela abaixo apresenta exemplos brasileiros para cada categoria:

**Tabela 20.2 — Exemplos brasileiros de cada categoria de bem**

| Categoria | Propriedades | Exemplos Brasileiros |
|---|---|---|
| **Bem privado** | Rival e excludente | Pão de queijo, gasolina, corte de cabelo, ingresso de cinema |
| **Bem público puro** | Não-rival e não-excludente | Defesa nacional (Forças Armadas), iluminação de via pública, sinal de rádio aberto, conhecimento científico básico |
| **Bem de clube** | Não-rival (até congestionamento) e excludente | Netflix, rodovia com pedágio (Via Dutra, Rodovia dos Bandeirantes), clube recreativo, sistema de streaming de futebol |
| **Recurso comum** | Rival e não-excludente | Peixes no rio Amazonas, pastagem no semiárido, água do Aquífero Guarani, vagas de estacionamento público |

!!! note "Bens Públicos Locais e Globais"
    A provisão de bens públicos pode ter escala local (iluminação de uma rua), regional (defesa costeira), nacional (sistema judiciário) ou global (estabilidade climática, erradicação de doenças). A escala determina qual nível de governo (ou cooperação internacional) é mais adequado para a provisão.

??? exercicio-resolvido "ER 20.5 — Classificação de bens"

    **Enunciado.** Classifique os seguintes bens como privado, público puro, de clube ou recurso comum: (a) Wi-Fi aberto em praça pública; (b) Vacina contra febre amarela; (c) Peixe no Rio São Francisco; (d) Pedágio da Rodovia dos Bandeirantes; (e) Código-fonte do Linux.

    **Solução.**

    **(a)** Wi-Fi aberto: **bem público puro** (até congestionamento) — não-excludente (qualquer pessoa pode acessar) e não-rival (até o ponto de saturação da rede). Com congestionamento, torna-se recurso comum.

    **(b)** Vacina: **bem privado** — rival (cada dose é usada por uma pessoa) e excludente (administrada individualmente). Porém, a *imunidade de rebanho* gerada é um **bem público** (externalidade positiva), o que justifica o financiamento público.

    **(c)** Peixe no Rio São Francisco: **recurso comum** — rival (peixe capturado por um pescador não está disponível para outro) e não-excludente (difícil impedir acesso ao rio).

    **(d)** Pedágio: **bem de clube** — não-rival (até congestionamento) e excludente (só entra quem paga a tarifa).

    **(e)** Código-fonte do Linux: **bem público puro** — não-rival (copiar não reduz disponibilidade) e não-excludente (licença open-source garante acesso livre).

---

## 20.6 Some Verticalmente, Não Horizontalmente: Bens Públicos e Alocação de Recursos {#206}

### Condição de eficiência (Samuelson, 1954)

Para um bem privado, a eficiência requer que todos os consumidores se deparem com o mesmo preço, que iguala o custo marginal. Para um bem público, a condição de eficiência é fundamentalmente diferente.

!!! abstract "Condição de Samuelson para Bens Públicos"
    A provisão eficiente de um bem público requer que a **soma das taxas marginais de substituição** de todos os indivíduos iguale a **taxa marginal de transformação** (custo marginal de produção):

    \[
    \sum_{i=1}^{N} TMS_i^{G,x} = TMT^{G,x}
    \label{eq:20.11} \tag{20.11} \]

    onde \(TMS_i^{G,x} = \frac{\partial U_i / \partial G}{\partial U_i / \partial x_i}\) é a taxa marginal de substituição entre o bem público \(G\) e o bem privado \(x\) para o indivíduo \(i\).

**Intuição**: Como o bem público é não-rival, todos consomem a mesma quantidade \(G\). O benefício social marginal de uma unidade adicional é a soma dos benefícios marginais de todos os indivíduos. Eficiência requer que esse benefício agregado iguale o custo marginal.

Diferentemente, para um bem privado, a eficiência requer \(TMS_i = TMT\) para cada \(i\) individualmente (não a soma).

!!! idea "Intuição Econômica"
    **Em uma frase:** Para bens privados, some as *quantidades* demandadas (soma horizontal); para bens públicos, some as *valorações marginais* (soma vertical).

    **Pense assim:** Quando três amigos querem pizza (bem privado), cada um come a sua — a demanda de mercado é a soma horizontal das demandas individuais. Quando três amigos querem iluminação na rua (bem público), todos "consomem" a mesma luz — o que importa é quanto cada um valoriza marginalmente aquela luz. A demanda social é a soma vertical das disposições a pagar.

    **Por que isso importa:** Essa distinção é a razão pela qual mercados funcionam bem para pizza mas mal para iluminação pública. O mecanismo de preços revela a demanda individual por bens privados (cada um compra sua quantidade ao preço de mercado), mas não revela a valoração individual por bens públicos (todos consomem a mesma quantidade independentemente do que pagam).

---

<iframe src="/micro-book/graficos/cap20/bem-publico.html" title="Figura 20.3 — Provisão ótima de bem público" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 20.3 — Provisão ótima de bem público.** A soma vertical dos benefícios marginais individuais determina o benefício marginal social. O nível ótimo (Samuelson) ocorre onde a soma dos BMg iguala o CMg. Os preços de Lindahl mostram a contribuição personalizada de cada consumidor.
</div>

### Subprovisão pelo mercado

O mercado tende a **subprover** bens públicos porque cada indivíduo, ao decidir sua contribuição voluntária, considera apenas **seu** benefício marginal, ignorando o benefício que gera para os demais.

Considere \(N\) indivíduos idênticos com utilidade \(U_i = u(x_i) + v(G)\), onde \(G = \sum g_i\) é a contribuição total ao bem público. Cada indivíduo escolhe \(g_i\) para maximizar:

\[
u(W_i - g_i) + v\!\left(g_i + \sum_{j \neq i} g_j\right)
\]

A condição de primeira ordem é:

\[
u'(W_i - g_i) = v'(G) \implies TMS_i = 1
\label{eq:20.12} \tag{20.12} \]

Mas a condição de eficiência requer \(\sum TMS_i = 1\), ou seja, \(TMS_i = 1/N\) para indivíduos idênticos. Como \(1 > 1/N\), cada indivíduo demanda benefício marginal excessivamente alto, resultando em \(G^{priv} < G^*\): o bem público é **subprovido**.

??? exercicio-resolvido "ER 20.6 — Condição de Samuelson com utilidade Cobb-Douglas"

    **Enunciado.** Dois consumidores com utilidade \(U_i = x_i^{1/2} \cdot G^{1/2}\) e renda \(W_i = 100\). Custo do bem público: \(C(G) = G\). Derive a condição de Samuelson e encontre \(G^*\).

    **Solução.**

    \(TMS_i^{G,x} = \frac{\partial U_i / \partial G}{\partial U_i / \partial x_i} = \frac{(1/2)x_i^{1/2} G^{-1/2}}{(1/2)x_i^{-1/2} G^{1/2}} = \frac{x_i}{G}\).

    Condição de Samuelson: \(\frac{x_1}{G} + \frac{x_2}{G} = 1 \implies x_1 + x_2 = G\).

    Restrição de recursos: \(x_1 + x_2 + G = 200\). Substituindo: \(G + G = 200 \implies G^* = 100\).

    Cada consumidor consome \(x_i = 50\) do bem privado.

---

<iframe src="/micro-book/graficos/cap20/webr-samuelson.html" title="WebR — Condição de Samuelson e subprovisão" class="graph-iframe" style="height:700px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**WebR 20.4 — Condição de Samuelson e subprovisão.** Compare o nível ótimo (Samuelson) com o nível de contribuição voluntária (Nash) variando o número de consumidores.
</div>
