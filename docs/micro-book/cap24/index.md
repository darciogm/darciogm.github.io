# Capítulo 24 — Quanto Vale Um Pôr do Sol? (Não, Sério, Quanto?)

Por que a temperatura média do planeta subiu mais de 1,1°C desde a era pré-industrial — e continua subindo? Por que empresas poluem mais do que a sociedade gostaria? Por que é tão difícil proteger florestas tropicais, mesmo quando todos concordam que sua destruição é uma catástrofe? E por que economistas gastam tanto tempo discutindo taxas de desconto quando o futuro do planeta está em jogo? Essas perguntas — urgentes, complexas e profundamente interligadas — são o objeto da **economia ambiental**, o campo que aplica as ferramentas da microeconomia para analisar a relação entre atividade econômica e meio ambiente.[^shrubbery]

[^shrubbery]: *"We want... a shrubbery!"* No *Monty Python and the Holy Grail*, os Cavaleiros que Dizem Ni exigem um arbusto como tributo — uma demanda perfeitamente inelástica, sem substituto e sem outside option. Arthur não pode negociar; só pode obedecer. A cena é uma demonstração involuntária de poder de monopsônio em mercados de bens ambientais: quando o "comprador" (natureza) exige algo específico (biodiversidade, ciclo de chuvas, camada de ozônio), não há substituto sintético que sirva. Os economistas ambientais passam a carreira inteira tentando precificar shrubberies — e a piada é que os Cavaleiros que Dizem Ni provavelmente aceitariam um pagamento por serviços ambientais.

O Capítulo 20 introduziu os conceitos fundamentais: externalidades, bens públicos, impostos pigouvianos e o Teorema de Coase. Aqueles conceitos são os alicerces sobre os quais este capítulo se constrói. Aqui, avançamos em três direções. Primeiro, aprofundamos a análise dos **instrumentos de política ambiental** — comparando impostos, mercados de permissões de emissão e regulação direta, com atenção especial ao resultado clássico de Weitzman (1974) sobre preços versus quantidades sob incerteza. Segundo, enfrentamos o maior desafio ambiental do século XXI: as **mudanças climáticas**, uma externalidade global e intergeracional que desafia os instrumentos tradicionais de política pública. Analisamos o custo social do carbono, o debate Nordhaus–Stern sobre taxas de desconto (conectando com o Capítulo 18), os mercados de carbono em operação (EU ETS, RGGI) e os mecanismos emergentes de ajuste de fronteira (CBAM). Terceiro, discutimos a **valoração ambiental** — como atribuir valor econômico a bens que não têm preço de mercado (ar limpo, biodiversidade, paisagem) — e a economia dos **recursos naturais**, da regra de Hotelling à contabilidade verde.

O tratamento combina formalização rigorosa com exemplos reais e conexões explícitas com capítulos anteriores — especialmente externalidades e bens públicos (Capítulo 20), teoria dos preços e preferência revelada (Capítulo 4), disposição a pagar (Capítulo 5), escolha intertemporal e taxa de desconto (Capítulo 18) e tragédia dos comuns (Capítulo 20). A literatura acadêmica central inclui Nordhaus (2017) para o modelo DICE e o custo social do carbono, Weitzman (1974) para a comparação preços versus quantidades, Stavins (1998) para os mercados de permissões, Stern (2007) para a economia das mudanças climáticas e Greenstone, Kopits e Wolverton (2013) para a estimação do custo social do carbono. Para tratamentos de livro-texto, ver Kolstad (2011), Tietenberg e Lewis (2018) e Perman et al. (2011).

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 24.1 | Poluição é externalidade — qual a política certa? | Pigou, Coase, regulação ambiental | [Política](politica-instrumentos.md#241) |
| 24.2 | Imposto ou cap-and-trade — qual funciona melhor? | Instrumentos de mercado, Weitzman | [Instrumentos](politica-instrumentos.md#242) |
| 24.3 | Quanto custa (e quanto vale) evitar 2°C de aquecimento? | Economia das mudanças climáticas, Nordhaus, Stern | [Clima](clima-carbono.md#243) |
| 24.4 | Dá para comprar e vender o direito de poluir? | Mercados de carbono, EU-ETS | [Carbono](clima-carbono.md#244) |
| 24.5 | Quanto vale uma floresta em pé — e como medir? | Valoração ambiental: preferências reveladas e declaradas | [Valoração](valoracao-recursos.md#245) |
| 24.6 | Crescer para sempre é sustentável? | Recursos naturais, sustentabilidade, Hotelling | [Sustentabilidade](valoracao-recursos.md#246) |
| 🧪🧠🎯✏️🏆 | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| 🔬 | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

</div>

---

??? classroom "Atividade de Sala — O Mercado de Permissões de Emissão"

    **Formato:** Simulação de cap-and-trade com firmas heterogêneas
    **Duração:** 40–50 minutos (10 preparação + 20 negociação + 10 debrief)
    **Material:** Fichas coloridas (custos de abatimento), "permissões" de papel, quadro para registro.

    **Preparação (10 min):**

    - Divida a turma em 8–12 "firmas". Cada firma recebe uma ficha com seu **custo marginal de abatimento** (ex.: Firma A = R$ 10/ton, Firma B = R$ 30/ton, Firma C = R$ 50/ton, etc.).
    - Cada firma emite inicialmente 10 toneladas. O regulador (professor) anuncia: "O cap total é de 60 toneladas" (com 10 firmas, cada uma recebe 6 permissões).
    - Sem as permissões, cada firma precisa abater 4 toneladas. O custo de abatimento de cada tonelada segue o CMgA da ficha.

    **Fase 1 — Comando e controle (5 min):**

    - Cada firma calcula o custo de abater exatamente 4 toneladas. Registre no quadro. Some o custo total.

    **Fase 2 — Cap-and-trade (15 min):**

    - Agora as firmas podem **comprar e vender permissões** entre si. O objetivo: minimizar seu custo total (abatimento + compra de permissões − receita de venda).
    - Permita negociação livre (bilateral, em voz alta). Registre cada transação no quadro (vendedor, comprador, preço, quantidade).
    - Após 10 minutos de negociação, encerre. Cada firma recalcula seu custo total.

    **Fase 3 — Leilão de permissões (opcional, 5 min):**

    - O governo leiloa todas as 60 permissões (em vez de distribuir). Use um leilão de preço uniforme: cada firma faz lances selados; as 60 maiores lances ganham ao preço do 61º lance.

    **Debrief (10 min):**

    1. *"O custo total caiu na Fase 2 vs. Fase 1?"* → Sim — firmas com CMgA baixo abateram mais e venderam permissões; firmas com CMgA alto compraram. Eficiência de custos.
    2. *"Qual foi o preço de equilíbrio das permissões?"* → Deve convergir para o CMgA da firma marginal.
    3. *"A distribuição inicial importou?"* → Para a renda das firmas, sim; para a eficiência, não (Coase!).
    4. Conecte com: Weitzman (Seção 24.2.3), EU ETS (Box Mundo 24.2), RenovaBio (Box Brasil 24.1).

    **Conexão com o capítulo:** Seções 24.1–24.2 (instrumentos de mercado vs. comando e controle) e Seção 24.4 (mercados de carbono reais).
