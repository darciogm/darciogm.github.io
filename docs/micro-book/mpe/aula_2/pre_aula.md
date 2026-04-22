# Pré-Aula 2 — UMP, EMP e Dualidade

> **Status:** narrativa espelhada em `platform/aula-02.html`. Este arquivo serve de SSOT do roteiro; o HTML é o que o aluno vê.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula de referência:** Aula 2 — UMP, EMP e Dualidade (29/04/2026, quarta, 19:30–22:30)
- **Liberação na plataforma:** qui 23/04/2026 (madrugada, logo após a Aula 1)
- **Prazo de conclusão:** **qua 06/05 · 18:00 BRT** (calendário unificado Aula 1 ∪ Aula 2 — exceção pontual do semestre)
- **Tempo-alvo de trabalho efetivo:** 90–120 min (material) + 30–45 min (quiz revisão)
- **Objetivo de aprendizagem:** derivar, resolver e interpretar o par primal/dual — UMP e EMP — da teoria do consumidor; reconhecer a função utilidade indireta \(v(p, m)\) e a função dispêndio \(e(p, u)\); aplicar mecanicamente a identidade de Roy e o lema de Shephard; enunciar as seis propriedades estruturais de cada função (homogeneidade, monotonicidade, continuidade, quasiconvexidade/concavidade, dualidade identitária).
- **Peso na nota do curso:** compõe a componente de 30% (engajamento/pré-aula).

---

## Por que esta pré-aula importa

A Aula 1 entregou \(u: X \to \mathbb{R}\) como *representação* da preferência. A Aula 2 transforma \(u\) em **objeto de otimização sob restrição**. De lá saem quatro funções (\(x^M\), \(v\), \(h\), \(e\)) e quatro identidades (Roy, Shephard, dualidade direta, dualidade recíproca) que são o **vocabulário operacional** do resto do curso. Sem dominar isso, Slutsky (Aula 3) vira quebra-cabeça cego, e Arrow-Debreu (Aula 6) vira mágica.

**Calibre:** Nicholson & Snyder 12e cap. 4 é o **piso obrigatório**; Jehle & Reny 3e §1.4 e §2.1 é o **teto de conforto** (seção 2.1 dualidade; não entrar no 2.2 agora). MWG cap. 3.C–3.E citado cirurgicamente. ZaE cap. 4 é a **orientação estrutural**.

---

## 1. Leitura dirigida

### 1.1. ZaE — Capítulo 4 (seções introdutórias até dualidade)

- **Tempo estimado:** ~30 min.
- **O que observar:**
  - A montagem do Lagrangiano para o UMP e o *papel do multiplicador* \(\lambda\) como utilidade marginal da renda.
  - A condição de tangência \(\text{TMS}_{12} = p_1/p_2\) — geometria e economia.
  - O caminho do par primal/dual: UMP "ida" e EMP "volta".
- **Perguntas-guia:**
  - Por que a Marshalliana é homogênea de grau zero em \((p, m)\)?
  - O que \(\lambda^*\) mede, e como ele se relaciona com \(\partial v/\partial m\)?
  - Onde a convexidade da preferência é usada, e onde basta continuidade?

### 1.2. N&S 12e — Capítulo 4

- **Tempo estimado:** ~25 min.
- **Seções exatas:** 4.1 (Utility Maximization), 4.2 (The Two-Good Case), 4.3 (\(n\) bens), 4.4 (Indirect Utility Function), 4.5 (The Lump Sum Principle), 4.6 (Expenditure Minimization), 4.7 (Properties of Expenditure Functions).
- **O que observar:** a notação \(E(p_1, p_2, V)\) em N&S troca a letra mas é a mesma função gasto. A versão gráfica da dualidade via Edgeworth-Pareto ortante-dos-preços é boa para a intuição geométrica.
- **Perguntas-guia:**
  - Qual é o "princípio do valor mínimo" e por que a função gasto herda concavidade em \(p\)?
  - Como a identidade \(e(p, v(p, m)) = m\) *força* Roy e Shephard a serem consistentes?

### 1.3. N&S 12e — Capítulo 2 (apoio)

- **Tempo estimado:** ~10 min (varredura).
- **Uso:** caixa de ferramentas. Revisar o teorema do envelope (§2.4), funções homogêneas (§2.5) e o Lagrangiano (§2.2). Consultar *apenas* o que for necessário para destravar cap. 4.

---

## 2. Checkpoint da plataforma (6–7 itens distribuídos em 3 seções conceituais)

Tentativa genuína, papel e caneta antes do clique. Cada seção conceitual (S3, S4, S5 da página da pré-aula) tem 2–3 itens obrigatórios, confiança pré/pós, e libera automaticamente a próxima seção.

- **S3 — UMP e a Marshalliana.** CPO/CPO ligada à TMS, geometria da tangência, homogeneidade de grau zero de \(x^M\), interpretação de \(\lambda^*\).
- **S4 — Função utilidade indireta \(v(p, m)\).** Propriedades (homogeneidade, monotonicidade, quasiconvexidade em \(p\)), **identidade de Roy**.
- **S5 — EMP, função gasto \(e(p, u)\) e dualidade.** Definição de \(h\) e \(e\), propriedades (homog. grau 1 em \(p\), concavidade em \(p\), monotonicidade em \(u\)), **lema de Shephard**, as **duas identidades recíprocas** que ligam UMP↔EMP.

**Critério de aceite:** cada item até 3 tentativas; após esgotar, gabarito é revelado e o avanço é liberado (a plataforma marca o erro mas não bloqueia). O engajamento é medido por tempo e tentativas, não pela primeira tacada.

---

## 3. Exercícios de papel (seção S6 da plataforma)

Dois obrigatórios + um bônus, inspirados no cap. 4 do N&S 12e — todos ancorados em UMP/EMP/Dualidade (nada de Slutsky, que é Aula 3). A plataforma pede check + *abordagem em 1–3 linhas* por exercício.

- **Exercício proposto 1 (obrigatório).** Forma CES simétrica com \(\rho = 1/2\): resolver UMP, achar \(x^M\), \(v\), e comparar com o caso Cobb-Douglas (limite \(\rho \to 0\)). Objetivo: exercitar a fórmula fechada da Marshalliana CES e verificar consistência no limite.
- **Exercício proposto 2 (obrigatório).** Cobb-Douglas com 3 bens: resolver UMP via substituição ou Lagrangiano, obter parcelas \(\alpha_i\) constantes e função indireta log-linear. Objetivo: estender o caso \(n=2\) da aula para \(n=3\) e ver que a estrutura é genuinamente ordinal-multiplicativa.
- **Exercício proposto 3 (bônus).** Função gasto mínima (EMP) para quasilinear \(u = x_1 + \ln x_2\): derivar \(h_1, h_2, e\) via CPO do dual e conferir via Shephard. Objetivo: ver dualidade fechar em forma analítica completa.

---

## 4. Reflexão qualitativa (S8)

Dois campos obrigatórios (mín. 10 caracteres cada), alimentam o Bloco 0 (triagem) da Aula 2 presencial:

- *Equação/passagem ainda nebulosa* — ser específico. Ex.: "não consigo reconciliar Roy com a CPO do Lagrangiano"; "entendo Shephard mas não entendo por que a função gasto é côncava em \(p\)".
- *Ponto que quero ver discutido em sala* — ex.: "aplicação de Shephard em preços de combustível brasileiros"; "como Roy muda com imposto específico vs. *ad valorem*".

---

## 5. Pré-monitoria (não se aplica à Aula 2)

A **Pré-monitoria 1** com o Alberto só abre em sáb 09/05 e cobre as Aulas 1–3 em conjunto. Aqui não há artefato separado a entregar.

---

## 6. Checklist final

- [ ] Li ZaE cap. 4 com papel e caneta, reproduzindo o Lagrangiano do UMP e a CPO-tangência.
- [ ] Li N&S 12e §§4.1–4.7 cotejando notação.
- [ ] Varri N&S 12e cap. 2 nas seções de envelope/Lagrangiano.
- [ ] Completei as 9 seções da pré-aula na plataforma (incluindo micro-checkpoints em S3, S4, S5).
- [ ] Resolvi N&S 12e 4.1 e 4.3 no papel; anotei passagens que não saíram de primeira.
- [ ] Fiz o **quiz de revisão pré-aula 2** (10 questões 🟡) — submissão única.
- [ ] Registrei reflexão em S8 com pelo menos uma dúvida genuína.

---

## Calendário (importante — exceção pontual)

Este semestre tem exceção: **Aulas 1 e 2 têm calendário unificado**. Todo o material da Aula 2 (pré-aula material, quiz pré, quiz pós, exercícios avaliativos) fecha junto com o da Aula 1 em **quarta 06/05 às 18:00 BRT** — uma semana extra em relação ao ciclo canônico, como concessão à turma na primeira quinzena. Gabarito dos avaliativos libera em **quinta 07/05 · 00:00 BRT**. Da Aula 3 em diante, volta o ritmo normal (1 semana por aula).
