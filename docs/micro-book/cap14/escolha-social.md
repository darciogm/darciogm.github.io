# 14.12 A Democracia Impossível: Escolha Social e o Teorema de Arrow {#1412}

Os dois teoremas do bem-estar (Seções 14.6–14.7) estabelecem uma conexão elegante entre equilíbrio competitivo e eficiência de Pareto. Mas eficiência é uma condição fraca — diz que não há desperdício, não que a alocação é *justa*. Uma economia com um bilionário e milhões de miseráveis pode ser Pareto-eficiente. A pergunta inevitável é: se a sociedade quer ir além da eficiência e *escolher* entre alocações — cada uma eficiente, mas com distribuições diferentes —, existe uma forma de agregar as preferências individuais numa "preferência social" coerente?

Kenneth Arrow respondeu a essa pergunta em 1951. A resposta é devastadora: **não**.

---

## De preferências individuais a preferências sociais

Suponha que uma sociedade com $N$ indivíduos deve ordenar $m \geq 3$ alternativas (políticas públicas, alocações, candidatos). Cada indivíduo $i$ possui uma relação de preferência completa e transitiva $\succeq_i$ sobre as alternativas. Uma **regra de escolha social** (ou função de bem-estar social) é uma função que, para cada perfil de preferências individuais $(\succeq_1, \succeq_2, \ldots, \succeq_N)$, produz uma ordenação social $\succeq_S$.

Arrow perguntou: que propriedades *mínimas* devemos exigir de uma regra de escolha social razoável?

---

## Os axiomas de Arrow

!!! definition "Axiomas de Arrow para uma regra de escolha social"

    1. **Domínio irrestrito (U)**: a regra funciona para *qualquer* perfil de preferências individuais — não exige que os indivíduos tenham preferências "bem-comportadas" ou similares.
    2. **Princípio de Pareto fraco (P)**: se *todos* os indivíduos preferem A a B ($A \succ_i B$ para todo $i$), então a sociedade deve preferir A a B ($A \succ_S B$).
    3. **Independência de alternativas irrelevantes (IIA)**: a ordenação social entre A e B depende *apenas* das preferências individuais entre A e B — não do que os indivíduos pensam sobre uma terceira alternativa C.
    4. **Não-ditadura (ND)**: não existe um indivíduo $d$ tal que, para todo par de alternativas e todo perfil de preferências, $A \succ_d B \Rightarrow A \succ_S B$.

Cada axioma, isoladamente, parece não apenas razoável, mas quase óbvio. A unanimidade deve ser respeitada. A classificação entre duas opções não deveria depender de uma terceira. Ninguém deveria ter poder absoluto. O que poderia dar errado?

---

## O Teorema da Impossibilidade

!!! theorem "Teorema da Impossibilidade de Arrow (1951)"
    Se existem pelo menos **3 alternativas** e pelo menos **2 indivíduos**, não existe regra de escolha social que satisfaça simultaneamente os quatro axiomas acima (U, P, IIA, ND) e produza uma ordenação social **completa e transitiva**.

!!! idea "Intuição Econômica"
    **Em uma frase:** toda democracia é imperfeita — não por falha de design, mas por um teorema matemático.

    **Pense assim:** imagine três amigos decidindo onde jantar. Ana prefere japonês > italiano > mexicano. Bruno prefere italiano > mexicano > japonês. Carla prefere mexicano > japonês > italiano. Votação por maioria: japonês vence italiano (Ana e Carla), italiano vence mexicano (Ana e Bruno), mas mexicano vence japonês (Bruno e Carla). Ciclo: japonês $\succ$ italiano $\succ$ mexicano $\succ$ japonês. A sociedade é "irracional" mesmo com indivíduos racionais — é o **Paradoxo de Condorcet**, e Arrow provou que *nenhum* sistema de votação resolve esse problema sem sacrificar algum axioma.

    **O que isso significa para a economia do bem-estar:** o Segundo Teorema do Bem-Estar (Seção 14.7) diz que qualquer alocação Pareto-eficiente pode ser alcançada via mercados competitivos, desde que redistribuamos as dotações iniciais. Mas *quem* decide qual redistribuição é a "melhor"? Para isso, precisaríamos de uma função de bem-estar social — e Arrow provou que nenhuma função desse tipo satisfaz requisitos mínimos de democracia. O Segundo Teorema resolve o problema de eficiência, mas o problema de *justiça* permanece em aberto.

---

## Conexão com os Teoremas do Bem-Estar

A relevância do resultado de Arrow para o equilíbrio geral é profunda:

1. **Primeiro Teorema** (Seção 14.6): todo equilíbrio walrasiano é Pareto-eficiente — mas há infinitas alocações Pareto-eficientes (toda a curva de contrato).

2. **Segundo Teorema** (Seção 14.7): qualquer ponto na curva de contrato pode ser alcançado via mercados, com a redistribuição adequada de dotações.

3. **Arrow (1951)**: não existe forma democraticamente coerente de *escolher* entre esses pontos. A economia pode nos levar a qualquer destino eficiente, mas não pode nos dizer qual destino escolher.

Esse encadeamento — eficiência $\to$ implementação $\to$ impossibilidade de escolha social — é uma das narrativas mais importantes da microeconomia do século XX. Ele explica por que economistas, quando confrontados com questões distributivas, frequentemente recorrem a **funções de bem-estar social específicas** (utilitarista, rawlsiana, igualitária) que *assumem* um critério normativo, em vez de derivá-lo de primeiros princípios democráticos.

---

## Regras de votação e seus defeitos

A impossibilidade de Arrow implica que toda regra prática de votação sacrifica pelo menos um axioma:

| Regra | O que sacrifica | Consequência |
|:------|:---------------|:-------------|
| **Maioria simples** | Transitividade | Ciclos de Condorcet (A $\succ$ B $\succ$ C $\succ$ A) |
| **Ditadura** | Não-ditadura | Uma pessoa decide tudo |
| **Unanimidade (veto)** | Completude | Muitos pares ficam sem comparação |
| **Contagem de Borda** | IIA | Adicionar candidato irrelevante altera o ranking |
| **Votação por aprovação** | IIA | Resultado depende de alternativas disponíveis |

!!! tip "Conexão"
    O Teorema de Arrow reaparece no Capítulo 20 (Seção 20.9), no contexto de bens públicos e votação, com tratamento mais detalhado do Paradoxo de Condorcet, do Teorema do Eleitor Mediano e dos mecanismos de revelação de preferências (VCG). Reaparece também na teoria de matching (Seção 19.9): Roth (1982) provou que nenhum mecanismo de matching estável pode ser strategy-proof para ambos os lados — um resultado de impossibilidade com a mesma estrutura lógica do teorema de Arrow.

---

## Saídas (parciais) da impossibilidade

O resultado de Arrow não significa que devemos desistir da democracia — significa que devemos entender seus limites:

- **Restrição de domínio**: se as preferências forem **unimodais** (*single-peaked*), a regra de maioria funciona bem — é o Teorema do Eleitor Mediano (Seção 20.9). A unimodalidade é razoável para questões unidimensionais (nível de gasto público, alíquota de imposto), mas falha para problemas multidimensionais.

- **Relaxar IIA**: a contagem de Borda viola IIA, mas satisfaz os demais axiomas e tem boas propriedades em muitos contextos práticos. Sen (1970) explorou relaxamentos alternativos.

- **Informação cardinal**: se permitirmos comparações interpessoais de utilidade (não apenas ordenações), funções de bem-estar social como a utilitarista ($W = \sum U_i$) ou a rawlsiana ($W = \min U_i$) são bem-definidas. O custo é abandonar o framework ordinal.

- **Funções de escolha social** (em vez de funções de bem-estar social): se exigirmos apenas uma *escolha* (não uma ordenação completa), o Teorema de Gibbard-Satterthwaite (1973/1975) mostra que, com três ou mais alternativas, o único mecanismo strategy-proof e sobrejetivo é a ditadura — outro resultado de impossibilidade.

---

## Referências

- Arrow, Kenneth J. 1951. *Social Choice and Individual Values*. New Haven: Yale University Press. (2ª edição, 1963.)
- Gibbard, Allan. 1973. "Manipulation of Voting Schemes: A General Result." *Econometrica* 41 (4): 587–601.
- Satterthwaite, Mark A. 1975. "Strategy-Proofness and Arrow's Conditions." *Journal of Economic Theory* 10 (2): 187–217.
- Sen, Amartya K. 1970. *Collective Choice and Social Welfare*. San Francisco: Holden-Day. (Edição expandida, Penguin, 2017.)
