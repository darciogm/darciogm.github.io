# Capítulo 21 — Se É De Graça, O Produto É Você

Por que o Google não cobra nada pelo seu buscador? Por que o WhatsApp se tornou praticamente universal no Brasil, mas concorrentes tecnicamente superiores fracassaram? Por que a Amazon pode vender livros abaixo do custo e, ainda assim, aumentar seu lucro? Essas perguntas — aparentemente desconexas — compartilham uma raiz microeconômica comum: os mercados digitais operam sob uma lógica fundamentalmente diferente daquela que governa os mercados de bens tradicionais analisados nos capítulos anteriores.[^cheese-shop]

[^cheese-shop]: *"Do you have any Stilton?" "No." "Gruyère?" "No." "Emmental?" "No."* No sketch *Cheese Shop* de Monty Python, John Cleese entra em uma loja de queijos com catálogo infinito mas estoque zero. O vendedor lista dezenas de queijos — nenhum disponível. É a melhor demonstração cômica de um mercado com oferta zero e custo marginal zero de *listing*. Soa familiar? É exatamente o modelo de uma plataforma digital: o Mercado Livre não fabrica nada; lista milhões de produtos que não tem. O iFood não cozinha; conecta famintos a restaurantes. A "loja" é o catálogo, não o estoque. O valor não está no bem — está na plataforma que conecta oferta e demanda. O dono do Cheese Shop seria um empreendedor de plataforma genial — se ao menos tivesse queijo. Ou internet.

A economia digital é marcada por três características estruturais que, embora não sejam inteiramente novas, assumem proporções inéditas no ambiente online: **custos marginais próximos de zero** combinados com custos fixos elevados, **efeitos de rede** que tornam o valor de um produto dependente do número de usuários, e **mercados bilaterais** em que plataformas conectam dois ou mais grupos de agentes com interesses complementares. Cada uma dessas características desafia pressupostos centrais dos modelos competitivos estudados nos Capítulos 13 e 14, e gera estruturas de mercado que se assemelham mais ao monopólio (Capítulo 15) e ao oligopólio (Capítulo 16) — mas com mecanismos de poder de mercado e dinâmicas competitivas próprias.

Este capítulo constrói progressivamente o arcabouço analítico necessário para compreender esses mercados. Começamos pela natureza econômica dos bens de informação (Seção 21.1), passamos aos efeitos de rede e suas consequências para a dinâmica de adoção (Seção 21.2), formalizamos os mercados bilaterais à la Rochet e Tirole (Seção 21.3), analisamos a competição entre plataformas (Seção 21.4), discutimos a economia da atenção (Seção 21.5), examinamos a economia de dados e privacidade (Seção 21.6) e, por fim, conectamos leilões digitais ao desenho de mecanismos (Seção 21.7). O tratamento combina formalização rigorosa com exemplos reais e conexões explícitas com capítulos anteriores — especialmente os de teoria dos jogos (Capítulo 9), monopólio (Capítulo 15), oligopólio (Capítulo 16) e informação assimétrica (Capítulo 19).

A literatura acadêmica sobre economia digital é vasta e em rápida expansão. As referências centrais são Tirole (2023) para a análise de plataformas e regulação, Shapiro e Varian (1999) para a economia da informação, e Parker, Van Alstyne e Choudary (2016) para a estratégia de plataformas. O modelo de mercados bilaterais segue Rochet e Tirole (2003), que é discutido em detalhe na Seção 21.3 e na seção "Pesquisa em Ação". Para uma perspectiva regulatória europeia, ver Crémer, de Montjoye e Schweitzer (2019); para o contexto brasileiro, a análise do CADE (2020) sobre plataformas digitais é referência obrigatória.

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Tópico | Página |
|:------|:-------|:-------|
| 21.1 | [Bens de Informação](bens-info-redes.md#211) | [→](bens-info-redes.md#211) |
| 21.2 | [Efeitos de Rede](bens-info-redes.md#212) | [→](bens-info-redes.md#212) |
| 21.3 | [Mercados Bilaterais e Plataformas](mercados-bilaterais.md#213) | [→](mercados-bilaterais.md#213) |
| 21.4 | [Competição entre Plataformas](competicao-atencao.md#214) | [→](competicao-atencao.md#214) |
| 21.5 | [Economia da Atenção](competicao-atencao.md#215) | [→](competicao-atencao.md#215) |
| 21.6 | [Economia de Dados e Privacidade](dados-leiloes.md#216) | [→](dados-leiloes.md#216) |
| 21.7 | [Leilões Online e Mecanismos Digitais](dados-leiloes.md#217) | [→](dados-leiloes.md#217) |
| | [Exercícios e ANPEC](exercicios.md) | [→](exercicios.md) |
| | [Pesquisa em Ação](pesquisa.md) | [→](pesquisa.md) |

</div>

---

??? classroom "Atividade de Sala — Leilão de Anúncios e Plataformas Bilaterais"

    **Formato:** Simulação de mercado bilateral com leilão de atenção
    **Duração:** 45–50 minutos (10 preparação + 20 rodadas + 15 debrief)
    **Material:** Fichas coloridas (verdes = "cliques", vermelhas = "valor por clique"), quadro para registro.

    **Preparação (10 min):**

    - Divida a turma em 3 grupos: **Usuários** (metade da turma), **Anunciantes** (1/4 da turma), **Plataformas** (2–3 alunos).
    - Cada Usuário recebe 10 fichas verdes ("atenção" — cada ficha = 1 minuto de atenção por rodada).
    - Cada Anunciante recebe um valor secreto por clique (ficha vermelha: R$2, R$5, R$8, R$10 — distribuídos aleatoriamente).
    - As Plataformas competem para atrair Usuários e Anunciantes.

    **Fase 1 — Sem subsídio cruzado (rodadas 1–5, 10 min):**

    - Cada Plataforma define um preço para Usuários (p_U) e para Anunciantes (p_A).
    - Usuários escolhem a plataforma com menor preço (ou ficam de fora se p_U > 3).
    - Anunciantes participam de leilão de segundo preço pelos "cliques" dos Usuários.
    - **Resultado esperado:** Plataformas que cobram de ambos os lados atraem poucos Usuários.

    **Fase 2 — Com subsídio cruzado (rodadas 6–10, 10 min):**

    - Permita que Plataformas fixem p_U = 0 (gratuito para Usuários).
    - Anunciantes pagam mais para acessar a base de Usuários.
    - **Resultado esperado:** Plataformas gratuitas atraem mais Usuários, gerando mais receita de Anunciantes. Demonstra a lógica de Rochet-Tirole.

    **Fase 3 — Efeitos de rede (rodadas 11–15, opcionais):**

    - Adicione regra: cada Usuário ganha +1 ficha de atenção para cada 5 Usuários na mesma plataforma (efeito de rede direto).
    - **Resultado esperado:** Tipping — uma plataforma captura a maioria dos Usuários.

    **Debrief (15 min):**

    1. Compare receitas das Plataformas nas 3 fases.
    2. Pergunte: *"Por que cobrar zero dos Usuários pode ser mais lucrativo?"* → Subsídio cruzado (Seção 21.3).
    3. Pergunte: *"O que aconteceu quando adicionamos efeitos de rede?"* → Tipping, winner-take-all (Seção 21.4).
    4. Pergunte: *"O que os Anunciantes pagaram realmente?"* → Leilão de segundo preço, GSP (Seção 21.7).
    5. Conecte com exemplos reais: Google, iFood, Instagram.

    **Conexão com o capítulo:** Seções 21.3 (bilateral markets), 21.4 (competition), 21.7 (auctions). Inspirado em Holt (2007, Cap. 12) adaptado para mercados digitais.
