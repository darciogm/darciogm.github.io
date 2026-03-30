# Capítulo 19 — Quando Um Lado Sabe Mais (E Isso Estraga Tudo)

Até aqui, este livro tratou os agentes econômicos como se fossem oniscientes — cada um sabendo tudo sobre o produto, o preço e o comportamento alheio. Foi um mundo confortável, mas irreal. Na prática, a economia funciona mais como um jogo de pôquer do que como um jogo de xadrez: ninguém vê as cartas dos outros. Empregadores não observam perfeitamente o esforço de seus funcionários; compradores de carros usados desconhecem o histórico real de manutenção do veículo; seguradoras não conseguem distinguir com precisão clientes de alto e baixo risco; investidores sabem menos sobre a qualidade de uma empresa do que seus gestores.[^dead-parrot]

[^dead-parrot]: Se você assistiu ao sketch do *Dead Parrot* de Monty Python, já testemunhou a forma mais pura de informação assimétrica: o lojista *sabe* que o papagaio está morto, mas insiste que ele está "descansando" (*"He's resting!"*). O comprador — John Cleese — argumenta com evidências crescentes (*"This parrot is no more! He has ceased to be!"*), e mesmo assim o vendedor sustenta o *cheap talk*. Akerlof escreveu "The Market for Lemons" em 1970; os Pythons encenaram a mesma lição em 1969. Coincidência? Talvez. Mas quem veio primeiro — o economista ou o comediante — é, em si, um problema de informação assimétrica.

O [Cap. 7 (Seções 7.7–7.8)](../cap07/index.md) introduziu a informação assimétrica via estado-preferência. O [Cap. 9d](../cap09d/index.md) formalizou os jogos. Aqui, aplicamos tudo a mercados reais.

A **informação assimétrica** — situação em que uma parte de uma transação detém informação relevante que a outra parte não possui — gera consequências profundas para o funcionamento dos mercados. Em casos extremos, mercados inteiros podem deixar de existir: o mercado de limões de Akerlof, que abre este capítulo, mostra como a assimetria de informação sobre qualidade pode expulsar os produtos bons e deixar apenas os ruins. Em casos menos extremos, a assimetria distorce preços, reduz volumes de transação e gera ineficiências que se manifestam em contratos complexos — franquias, bônus, menus de opções, garantias — desenhados para alinhar incentivos ou revelar informação privada.

O estudo sistemático dessas questões rendeu o Prêmio Nobel de Economia a George Akerlof, Michael Spence e Joseph Stiglitz em 2001, e permanece como uma das áreas mais férteis da microeconomia moderna. A teoria da informação assimétrica conecta-se diretamente a temas já tratados neste livro — discriminação de preços (Capítulo 15), regulação de monopólios (Capítulo 15, Seção 15.9), e teoria dos jogos — e fornece as bases para campos aplicados como economia do trabalho, economia financeira, economia da saúde e regulação.

Neste capítulo, apresentamos o arcabouço do **modelo principal-agente**, analisamos os dois problemas fundamentais — **risco moral** (ações ocultas) e **seleção adversa** (tipos ocultos) — e discutimos mecanismos de mercado e contratuais que atenuam essas falhas, incluindo **sinalização**, **triagem** e **leilões**. O capítulo encerra com uma introdução ao **market design** e à teoria de **matching** (Gale-Shapley), mostrando como a economia da informação evoluiu de diagnosticar falhas para *projetar* mecanismos que funcionam mesmo quando preços não podem ser usados. A fundamentação em teoria dos jogos — Equilíbrio Bayesiano Perfeito, jogos de sinalização e screening — encontra-se no Capítulo 9d.

!!! tip "Como este capítulo se relaciona com o Capítulo 9d"
    Este capítulo e o Capítulo 9d são **complementares**, não redundantes. **Aqui (Cap. 19)**, o foco é a **economia de mercado e contratos**: como a seleção adversa destrói mercados (Akerlof), como desenhar contratos que equilibram incentivos e seguro (Holmström), como o screening opera em seguros (Rothschild-Stiglitz), como leilões alocam recursos e como o market design projeta mecanismos sem preços (Roth-Shapley). **No Capítulo 9d**, o foco é a **teoria dos jogos subjacente**: a definição formal do PBE, a derivação de equilíbrios separadores e agregadores em jogos de sinalização, os refinamentos de Cho-Kreps e o modelo de cheap talk de Crawford-Sobel. **Recomendação para o professor:** em cursos de graduação, comece pelo Cap. 19 (as aplicações motivam a formalização) e use o Cap. 9d como aprofundamento opcional. Em pós-graduação, siga a ordem 9d → 19 (a teoria dos jogos fundamenta as aplicações).

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 19.1 | Por que contratos reais são tão complicados? | Assimetria de informação e contratos | [Contratos](principal-agente.md#191) |
| 19.2 | Como modelar a relação entre chefe e empregado? | Modelo principal-agente | [Principal-agente](principal-agente.md#192) |
| 19.3 | Quando o seguro incentiva o descuido, como redesenhar o contrato? | Risco moral, IC, IR, contrato ótimo | [Risco moral](risco-moral.md#193) |
| 19.4 | Por que os piores riscos são os que mais querem seguro? | Seleção adversa, Akerlof, Rothschild-Stiglitz | [Seleção adversa](selecao-adversa.md#194) |
| 19.5 | Como provar que você é bom sem que ninguém precise acreditar na sua palavra? | Sinalização, Spence, single-crossing | [Sinalização](sinalizacao-screening.md#195) |
| 19.6 | Como desenhar um menu de contratos que separa os tipos? | Screening, menus, autosseleção | [Screening](sinalizacao-screening.md#196) |
| 19.7 | Qual formato de leilão gera mais receita? | Leilões: IPV, valor comum, equivalência de receita | [Leilões](leiloes-taxonomia.md#197) |
| 19.8 | Moral hazard, seleção adversa, sinalização — qual é qual? | Taxonomia unificada da informação assimétrica | [Taxonomia](leiloes-taxonomia.md#198) |
| 19.9 | Como alocar médicos a hospitais sem usar preços? | Matching markets, Gale-Shapley, design de mercado | [Matching](matching-markets.md#199) |
| **Exercícios** | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| **Pesquisa** | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

</div>

---

??? classroom "Atividade de Sala — O Mercado de Limões ao Vivo"

    **Formato:** Experimento de mercado com informação assimétrica
    **Duração:** 35–40 minutos (15 rodadas + 10 debrief + 10 discussão)
    **Material:** Cartões coloridos (verde = carro bom, vermelho = carro ruim), fichas de "dinheiro", quadro para registrar transações.

    **Preparação (5 min):**

    - Divida a turma em **vendedores** (1/3) e **compradores** (2/3).
    - Cada vendedor recebe aleatoriamente um cartão: verde (carro bom, custo = 20, vale 30 para comprador) ou vermelho (carro ruim, custo = 5, vale 10 para comprador). **Proporção: 50/50.**
    - Os vendedores veem seu cartão. Os compradores, não.
    - Cada comprador recebe 25 fichas.

    **Rodada 1 — Informação simétrica (benchmark, 5 min):**

    - Revele todos os cartões. Compradores e vendedores negociam livremente.
    - Registre preços e quantidades transacionadas no quadro.
    - **Resultado esperado:** Ambos os tipos são transacionados. Preços próximos de 25–30 (bons) e 7–10 (ruins).

    **Rodadas 2–5 — Informação assimétrica (15 min):**

    - Cartões ficam ocultos. Compradores não sabem a qualidade.
    - Vendedores podem dizer o que quiserem (*cheap talk*).
    - Registre preços e quantidades. Após cada rodada, revele os cartões transacionados.
    - **Resultado esperado:** Compradores oferecem ~20 (valor esperado). Vendedores de carros bons recusam. Seleção adversa emerge. Nas últimas rodadas, quase só carros ruins são transacionados.

    **Debrief (10 min):**

    1. Mostre os dados no quadro. Pergunte: *"O que aconteceu com os carros bons?"*
    2. Calcule o excedente total em cada rodada. Compare com a Rodada 1.
    3. Conecte ao modelo de Akerlof: valor esperado → preço médio → saída dos bons → colapso.
    4. Pergunte: *"O que vocês fariam, como vendedor de carro bom, para se diferenciar?"* (Introdução natural à sinalização.)

    **Rodada bônus — Sinalização (5 min, opcional):**

    - Vendedores podem comprar uma "garantia" por 3 fichas (custo para carro bom) ou 15 fichas (custo para carro ruim). A garantia é visível ao comprador.
    - **Resultado esperado:** Vendedores de carros bons compram a garantia; ruins, não. O mercado se separa. Equilíbrio separador de Spence em ação.

    **Conexão com o capítulo:** Seções 19.4 (seleção adversa), 19.5 (sinalização). O experimento segue o protocolo de Holt (2007, Cap. 17) adaptado para o contexto brasileiro.

    **Variações:**

    - Adicione um terceiro tipo (qualidade média) para mostrar *unraveling* sequencial.
    - Introduza um "certificador" (aluno voluntário) que, por uma taxa, revela a qualidade — ilustrando o papel de plataformas como OLX com vistoria cautelar.
