# Crenças Que Fazem Sentido: Equilíbrio Bayesiano Perfeito

## 9d.1 Crenças Que Fazem Sentido: Equilíbrio Bayesiano Perfeito

Precisamos de um conceito de equilíbrio que faça duas coisas ao mesmo tempo: exigir que cada jogador aja racionalmente *em cada ponto do jogo* (herança do EPS, Seção 9b.1) e que as crenças sejam atualizadas de forma consistente quando nova informação chega (herança do BNE, Seção 9c.2). O **Equilíbrio Bayesiano Perfeito** é esse casamento: EPS + Bayes.

!!! definition "Equilíbrio Bayesiano Perfeito"
    Um PBE consiste em:

    1. **Estratégias** \(\sigma^*\) para cada jogador em cada conjunto de informação.
    2. **Crenças** \(\mu\) (distribuição sobre os nós em cada conjunto de informação).

    satisfazendo:

    - **Otimalidade sequencial:** Dado \(\mu\), cada jogador maximiza seu payoff esperado em cada conjunto de informação.
    - **Consistência bayesiana:** Onde possível, \(\mu\) é derivada das estratégias de equilíbrio \(\sigma^*\) pela regra de Bayes.

O PBE refina o BNE ao exigir que as crenças sejam consistentes com as estratégias *em cada ponto do jogo*, não apenas no início. Isso elimina equilíbrios sustentados por crenças arbitrárias em conjuntos de informação fora do caminho de equilíbrio. Em termos econômicos, a exigência força o analista a especificar *o que o receptor acreditaria* caso observasse um sinal inesperado, distinguindo equilíbrios robustos daqueles sustentados por suposições arbitrárias.

A consistência bayesiana das crenças é, ao mesmo tempo, a virtude e a limitação do PBE. A virtude é que ela disciplina o comportamento fora do caminho de equilíbrio: o analista não pode simplesmente "atribuir" crenças convenientes para sustentar um equilíbrio. A limitação é que, fora do caminho de equilíbrio, a regra de Bayes não se aplica diretamente (o evento observado tem probabilidade zero sob as estratégias de equilíbrio), abrindo espaço para múltiplos equilíbrios. Refinamentos como o Critério de Dominância Intuitiva de Cho e Kreps (1987) foram desenvolvidos exatamente para reduzir essa multiplicidade, eliminando equilíbrios sustentados por crenças "implausíveis" fora do caminho.
