# Preços de Lindahl e o Problema do Carona

## 20.7 Um Preço Para Cada Cidadão: Preços de Lindahl {#207}

!!! definition "Equilíbrio de Lindahl"
    Mecanismo hipotético de provisão de bens públicos em que cada indivíduo paga um **preço personalizado** (\(\tau_i\)) pelo bem público, igual à sua taxa marginal de substituição. A soma dos preços de Lindahl iguala o custo marginal de produção:

    \[
    \sum_{i=1}^{N} \tau_i = CMg(G)
    \label{eq:20.13} \tag{20.13} \]

    Cada indivíduo, enfrentando seu preço personalizado, demanda a mesma quantidade \(G^*\), e a condição de Samuelson é satisfeita.

O equilíbrio de Lindahl é eficiente por construção, mas enfrenta um problema prático fundamental: para implementá-lo, o governo (ou o mecanismo) precisa conhecer as preferências individuais de cada cidadão — informação que os cidadãos têm incentivo para **não revelar de forma verdadeira**, conforme discutiremos na seção sobre o problema do carona.

??? exercicio-resolvido "ER 20.7 — Preços de Lindahl com três consumidores"

    **Enunciado.** Três consumidores com benefícios marginais \(BMg_A = 50 - 2G\), \(BMg_B = 40 - G\), \(BMg_C = 30 - G\). O custo marginal é \(CMg = 60\). Encontre o nível eficiente e os preços de Lindahl.

    **Solução.**

    Condição de Samuelson: \(\sum BMg_i = CMg\).

    \((50 - 2G) + (40 - G) + (30 - G) = 60 \implies 120 - 4G = 60 \implies G^* = 15\).

    Preços de Lindahl: \(\tau_A = 50 - 2(15) = 20\), \(\tau_B = 40 - 15 = 25\), \(\tau_C = 30 - 15 = 15\).

    Verificação: \(20 + 25 + 15 = 60 = CMg\). \(\checkmark\)

    O consumidor com maior valoração marginal (B, no nível ótimo) paga mais. Cada consumidor, enfrentando seu preço personalizado, demanda exatamente \(G^* = 15\).

---

<iframe src="/micro-book/graficos/cap20/tragedia-comuns.html" title="Figura 20.4 — Tragédia dos comuns" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 20.4 — Tragédia dos comuns.** Cada usuário iguala o produto médio ao custo (equilíbrio privado), enquanto o ótimo social requer igualar o produto marginal ao custo. A área sombreada indica a região de sobreuso do recurso comum.
</div>

---

## 20.8 Eu Não Pago, Mas Uso: O Problema do Carona (Free Rider) {#208}

!!! definition "Problema do Carona"
    Ocorre quando indivíduos racionais subinvestem na provisão de um bem público (ou na revelação de suas preferências) porque esperam se beneficiar das contribuições alheias sem pagar por elas. O bem público é não-excludente: mesmo quem não paga pode consumir.

No contexto do equilíbrio de Lindahl, cada indivíduo tem incentivo para subreportar sua valoração pelo bem público, pagando um preço de Lindahl menor e deixando que outros financiem a provisão. Formalmente, se o preço de Lindahl é determinado pela valoração reportada \(\hat{\tau}_i\):

\[
\hat{\tau}_i < \tau_i^{verdadeiro} = TMS_i
\]

O comportamento de carona é mais severo quando:

- O grupo é **grande** (a contribuição individual tem efeito desprezível sobre \(G\));
- O bem é **puramente não-excludente** (não há como punir quem não contribui);
- Não há **interação repetida** ou mecanismos de reputação.

!!! question "Nobel de Economia 2009 — Elinor Ostrom"
    Elinor Ostrom recebeu o Prêmio Nobel "por sua análise da governança econômica, especialmente dos bens comuns" — o primeiro Nobel para uma mulher em Economia. O trabalho de Ostrom desafiou a visão convencional de que recursos comuns (commons) inevitavelmente sofrem a "tragédia dos comuns" de Hardin (1968). Através de extenso trabalho de campo e análise comparativa, Ostrom demonstrou que comunidades frequentemente desenvolvem **instituições locais** — regras de uso, monitoramento entre pares, sanções graduais — que sustentam a cooperação e previnem o esgotamento dos recursos, sem necessidade de privatização ou regulação estatal centralizada. Seu *Governing the Commons* (1990) documentou exemplos de florestas comunitárias na Suíça, sistemas de irrigação no Nepal e pesqueiros costeiros no Japão que foram geridos com sucesso por séculos.

!!! note "Evidência Experimental"
    Experimentos de bens públicos (jogos de contribuição voluntária) mostram que as contribuições iniciais são tipicamente 40-60% do ótimo social, mas declinam ao longo do tempo para 10-20%, convergindo para a previsão teórica de subprovisão. Mecanismos de punição entre pares (peer punishment) e comunicação face a face aumentam significativamente as contribuições (Fehr & Gächter, 2000; Ostrom et al., 1992).

!!! box-brasil "Box Brasil 20.2 — Cobrança pelo uso da água no Brasil: o preço do recurso comum"

    **Contexto:** A Política Nacional de Recursos Hídricos (Lei 9.433/1997) instituiu a cobrança pelo uso da água bruta no Brasil, reconhecendo a água como **recurso comum** sujeito à tragédia dos comuns. Sem precificação, o uso excessivo levaria ao esgotamento dos mananciais.

    **Mecanismo:** A cobrança é implementada pelos Comitês de Bacia Hidrográfica — instâncias de governança local que ecoam os princípios de Ostrom. Usuários que captam água, consomem ou lançam efluentes pagam pelo uso, com valores definidos coletivamente. A receita é reinvestida na bacia.

    **Dados:** Na bacia do rio Paraíba do Sul (RJ/SP/MG), a cobrança arrecadou mais de R$ 200 milhões entre 2003 e 2023. O valor cobrado por metro cúbico varia entre R$ 0,01 e R$ 0,02 — baixo em termos absolutos, mas simbolicamente importante como sinal de escassez.

    **Análise:** A cobrança combina dois instrumentos: um preço pigouviano (internalizar o custo do uso sobre outros usuários) e governança coaseana descentralizada (os próprios usuários definem as regras via comitê). É um dos exemplos mais sofisticados de gestão de recursos comuns no mundo em desenvolvimento.

!!! box-brasil "Brasil na Prática — Tragédia dos comuns na pesca artesanal do Nordeste"

    **Contexto.** O litoral nordestino abriga mais de **500 mil pescadores artesanais** — a maior concentração do país (MPA/IBGE, 2023). A pesca artesanal opera em regime de **acesso aberto**: qualquer pescador pode lançar redes no mesmo trecho de mar ou estuário, sem direitos de propriedade definidos sobre o estoque pesqueiro. Essa é a configuração clássica da **tragédia dos comuns** de Hardin (1968).

    **Dados.** A produção pesqueira extrativa marinha do Nordeste caiu de ~350 mil toneladas/ano (anos 2000) para ~230 mil toneladas/ano (2020) — uma redução de 34% em duas décadas (IBGE, *Pesquisa da Pecuária Municipal*). A lagosta vermelha (*Panulirus argus*), espécie de alto valor comercial, teve sua captura reduzida em mais de 80% desde os anos 1990. O ICMBio estima que 15% das espécies marinhas exploradas comercialmente estão **sobreexplotadas**.

    **O modelo em ação.** Cada pescador iguala seu benefício marginal privado (receita da captura) ao custo marginal privado (combustível, mão de obra), ignorando o **custo externo** que impõe sobre os demais: a redução do estoque pesqueiro futuro. O equilíbrio privado ocorre onde $PMe = w/p$ (produto médio = custo por unidade de esforço), mas o ótimo social requer $PMg = w/p$ (produto marginal = custo) — exatamente como mostra a Figura 20.4. Como $PMe > PMg$ para recursos congestionáveis, o esforço de pesca no equilíbrio privado excede sistematicamente o nível sustentável.

    **Soluções tentadas.** O *defeso* (período de proibição da pesca, com seguro-defeso pago pelo governo) tenta limitar o esforço total. Reservas extrativistas marinhas (RESEX) — como a RESEX de Canavieiras (BA) e a RESEX Acaú-Goiana (PB/PE) — implementam governança à la Ostrom, com regras comunitárias de uso. Evidências sugerem que RESEX com gestão participativa efetiva conseguem manter estoques pesqueiros 25-40% acima de áreas não protegidas (Lopes et al., 2013).

    **Fonte:** IBGE, *Pesquisa da Pecuária Municipal*, 2020; ICMBio, *Livro Vermelho da Fauna Brasileira*, 2018; Lopes, P.F.M. et al. (2013). Sugestões para melhorar a gestão de unidades de conservação costeiras e marinhas no Brasil. *Ambiente & Sociedade*, 16(4), 93-112.
