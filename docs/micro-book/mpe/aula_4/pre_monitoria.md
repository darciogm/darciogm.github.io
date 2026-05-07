# Pré-Monitoria 2 — Aula 4 (EG em Trocas) · Esqueleto

> **Status:** ESQUELETO. Refinar conteúdo com Alberto Nishikawa antes de publicar.
> **Página HTML:** `platform/pre-monitoria-02.html`.
> **Calendário (em `platform/js/calendario.js`):**
> - Pré-M2 abre **sáb 16/05 12:00**, fecha **sex 22/05 22:00**.
> - Monitoria presencial: **sáb 23/05 10:00** (Insper, Alberto Nishikawa).

## Contrato pedagógico

- **Formativa, não conta nota.**
- Tempo-alvo: **50–60 min**.
- Cobre **extensões** da Aula 4 que o Alberto vai aprofundar no sábado — não é repetição da aula magistral.
- Sem quiz avaliativo, sem exercícios para nota.
- Estrutura: 7 seções com micro-checkpoints (3 tentativas, cooldown 10s) + reflexão.

## Recap da Aula 4 (foco)

1. Identidade contábil de Walras: $p \cdot z(p) = 0$ vale por LNS, **fora** de equilíbrio.
2. Curva de contrato e núcleo em $2\times 2$.
3. Equilíbrio competitivo CD assimétrica (cálculo já feito em aula).
4. 1º TBE: prova linha-a-linha por contradição.
5. 2º TBE: enunciado + papel da convexidade (intuição).

## Extensões (o que o Alberto cobre presencialmente)

### Extensão 1 — EC variando formas funcionais

**Objetivo:** ver como a estrutura da preferência muda o EC, mantendo dotação.

Setup base: $\omega^A = (1, 4)$, $\omega^B = (3, 0)$, $\bar\omega = (4, 4)$.

| Forma funcional | $u^A$ | $u^B$ | EC \(p_1^*/p_2^*\) | Comentário |
|---|---|---|---|---|
| CD assimétrica (revisão) | $x_1^{2/3}x_2^{1/3}$ | $x_1^{1/3}x_2^{2/3}$ | $8/7$ | base da aula |
| CD simétrica | $x_1^{1/2}x_2^{1/2}$ | $x_1^{1/2}x_2^{1/2}$ | depende de $\omega$ | refazer cálculo |
| Leontief simétrico | $\min\{x_1, x_2\}$ | $\min\{x_1, x_2\}$ | razão de complementaridade | quando há corner |
| CES com $\rho \to 0$ | (limite CD) | (limite CD) | reconciliar com CD | parâmetros em conexão |
| CES com $\rho = -1$ | $-1/x_1 - 1/x_2$ idem | idem | substituição parcial | mostrar elasticidade |

> **TODO Darcio/Alberto:** decidir se inclui Leontief (preço pode não ser único — corner) e CES (computacionalmente mais pesado). Sugestão: CD simétrica obrigatória, Leontief como discussão visual, CES opcional.

**Micro-checkpoint sugerido:**
1. Em CD simétrica com $\omega^A = (3, 1)$, $\omega^B = (1, 3)$, EC dá $p_1^*/p_2^* = ?$
2. Em Leontief simétrico, qualquer $p \gg 0$ gera demanda na linha $x_1 = x_2$. Como achar o EC?

### Extensão 2 — Núcleo em $I = 3$

**Objetivo:** dar concretude ao "núcleo encolhe" anunciado na aula (slide #29).

Setup: 3 consumidores ($A$, $B$, $C$), 2 bens, dotações distintas. Coalizões possíveis:
$\{A\}, \{B\}, \{C\}, \{A,B\}, \{A,C\}, \{B,C\}, \{A,B,C\}$ (sete coalizões; oito incluindo a vazia).

- Bloqueio por coalizão $S$: existe alocação $\tilde x$ usando só dotações de $S$ tal que todos em $S$ ficam $\ge$ e algum estritamente $>$.
- **Mostrar:** o núcleo em $I=3$ é estritamente menor que o de $I=2$ obtido só com $\{A, B\}$.
- **Conexão com Debreu-Scarf:** réplica ($r$ cópias de cada tipo) ⇒ núcleo encolhe ao EC no limite.

> **TODO Alberto:** escolher dotações específicas para o exemplo (sugestão: $\omega^A = (2,0)$, $\omega^B = (0,2)$, $\omega^C = (1,1)$) e mostrar 1–2 alocações que sobrevivem em $I=2$ mas são bloqueadas em $I=3$.

**Micro-checkpoint sugerido:** dada uma alocação no exemplo, o aluno identifica qual coalizão a bloqueia.

### Extensão 3 — Contraexemplo do 1º TBE (LNS falha)

**Objetivo:** mostrar onde a hipótese de LNS no 1º TBE morde.

Construção:
- $u^A$ tem **ponto de saciedade** local em $\bar x^A$ (ex: utilidade quadrática que decresce após).
- Em vizinhança de $\bar x^A$, LNS falha: existe vizinhança onde nenhuma alocação dá utilidade estritamente maior.
- EC pode existir mas não ser Pareto-eficiente, porque o argumento "passo 2" da prova quebra.

> **TODO Alberto:** desenhar curvas de indiferença "fechadas" (saciedade) e mostrar onde a contradição da prova falha. Tempo estimado em sala: 8 min.

**Micro-checkpoint sugerido:** em qual passo da prova do 1º TBE (1, 2 ou 3) LNS é usada explicitamente? Por quê?

### Extensão 4 — 2º TBE com transferências e papel da convexidade

**Objetivo:** entender por que convexidade aparece *só* no 2º TBE (não no 1º).

- Enunciado canônico: dado $x^*$ Pareto-eficiente em economia com **preferências convexas** + LNS, existe $p^* \ge 0$ e dotações reformuladas $(\hat\omega^i)$ tais que $(p^*, x^*)$ é EC com transferências lump-sum $T^i = p^* \cdot (\hat\omega^i - \omega^i)$.
- **Convexidade** ⇒ separação por hiperplano (Minkowski).
- **Quando falha:** preferências não-convexas (ex.: indivisibilidades, retornos crescentes locais) — ponto Pareto-eficiente pode não ser sustentável como EC.

> **TODO Alberto:** exemplo gráfico de preferência não-convexa em $2\times 2$ onde 2º TBE falha. Aula 5 (produção) tem o caso natural com retornos crescentes.

**Micro-checkpoint sugerido:** dado um par de IC convexas tangentes, podemos sempre achar $p^*$ que sustenta a tangência como EC com transferência? Sim/Não com justificativa em 1 linha.

## Reflexão final (S6)

Dois campos qualitativos (mín. 10 chars):
1. "O que ficou claro depois da pré-monitoria que estava nebuloso na aula?"
2. "O que você quer que o Alberto cubra no sábado?"

> Alimenta a triagem do Alberto antes da monitoria — ele lê as respostas no admin dashboard quinta-feira de manhã.

## Para o Darcio decidir (antes de habilitar)

1. **Tempo declarado:** 50–60 min é defensável? Se Alberto achar curto, subir para 60–75 min.
2. **Profundidade da Extensão 2 (núcleo $I=3$):** dotações + 1 alocação bloqueada vs. 2 alocações bloqueadas vs. enumeração completa do núcleo? Trade-off densidade × conceito.
3. **Extensão 3 (saciedade):** vale gastar 10 min nisso ou Alberto prefere usar o tempo em mais Leontief / CES?
4. **Habilitar no portal:** entrada `PRE_MONITORIAS[1]` no `portal.html` com `available: true`, `availableOn: '2026-05-16T12:00:00-03:00'`, `closesOn: '2026-05-22T22:00:00-03:00'`.
