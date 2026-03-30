# Capítulo 9b — Pense de Trás para Frente

No Módulo 9a, os jogadores escolhiam ao mesmo tempo, sem ver o que os outros faziam. Agora, acrescentamos a dimensão temporal: jogadores agem em sequência, observam as ações anteriores e — crucialmente — antecipam o que virá depois. Esse é o território dos **jogos dinâmicos com informação completa**, onde a pergunta central muda de "o que fazer?" para "o que fazer *sabendo que o outro verá minha escolha e reagirá*?"

A ferramenta de solução é a **indução retroativa**: comece pelo fim do jogo, determine a ação racional em cada nó, e trabalhe de trás para frente. O equilíbrio resultante — o **Equilíbrio Perfeito em Subjogos (EPS)** — descarta ameaças vazias e produz previsões mais afinadas que o equilíbrio de Nash simples. A ideia de pensar de trás para frente, formalizada por Selten (1965), é ao mesmo tempo elegante e poderosa: ela revela quando uma ameaça é blefe e quando é real.[^black-knight]

[^black-knight]: *"'Tis but a scratch!"* — O Cavaleiro Negro de Monty Python é o exemplo perfeito de ameaça não crível levada ao absurdo. Depois de perder os dois braços, ele ainda ameaça lutar. A indução retroativa diria: no subjogo "cavaleiro sem braços vs. Rei Arthur", a ameaça de luta não é ótima para o cavaleiro. O EPS é: Arthur passa, cavaleiro fica gritando insultos.

Este módulo cobre três grandes temas: jogos sequenciais e comprometimento (Seção 9b.1), jogos repetidos e cooperação (Seção 9b.2) e modelos de barganha (Seção 9b.3). Juntos, eles mostram como o tempo — a ordem das jogadas, a repetição e a paciência — transforma a natureza da interação estratégica.

---

## Roteiro do Capítulo

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 9b.1 | Quando uma ameaça é blefe — e como pensar de trás para frente revela isso? | Forma extensiva, indução retroativa, EPS, comprometimento, Stackelberg | [Indução retroativa](backward-induction.md) |
| 9b.2 | Se eu te encontro de novo amanhã, será que cooperamos hoje? | Jogos repetidos, grim trigger, tit-for-tat, Folk Theorem, conluio | [Jogos repetidos](jogos-repetidos.md) |
| 9b.3 | Quem leva a maior fatia do bolo — e por quê? | Ultimato, barganha de Rubinstein, opções externas, poder de barganha | [Barganha](barganha.md) |
| 🧪🧠🎯✏️🏆 | Teste, pratique, resolva | Atividades, revisão, exercícios resolvidos e propostos, ANPEC | [Exercícios](exercicios.md) |
| 🔬 | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |
