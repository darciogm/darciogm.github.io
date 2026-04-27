# Pré-Aula 3 — Slutsky e Elasticidades

> **Status:** narrativa espelhada em `platform/aula-03.html`. SSOT do roteiro narrativo; o HTML é o que o aluno vê.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula de referência:** Aula 3 — Slutsky, Elasticidades, Bem-estar (06/05/2026, quarta, 19:30–22:30)
- **Liberação na plataforma:** qui 30/04/2026 madrugada (após Aula 2 presencial em 29/04)
- **Prazo de conclusão:** **qua 13/05 · 18:00 BRT** (1h30 antes da Aula 4 presencial — **calendário canônico restaurado** após exceção das Aulas 1∪2)
- **Tempo-alvo de trabalho efetivo:** 90–120 min (material) + 30–45 min (quiz revisão)
- **Objetivo de aprendizagem:** decompor \(\partial x_i^M/\partial p_j\) em substituição (Hicksiana, "de Shephard") e renda (Engel) usando a identidade calibrada da Aula 2; reconhecer o sinal estrutural de cada termo (concavidade de \(e\) ⇒ \(\partial h_i/\partial p_i \leq 0\); efeito-renda assinatura via inferioridade); manipular elasticidades em 4 restrições agregadas (Engel, Cournot, homogeneidade, simetria); calcular CV, EV e excedente do consumidor sabendo onde coincidem.
- **Peso na nota do curso:** compõe a componente de 30% (engajamento/pré-aula).

---

## Por que esta pré-aula importa

A Aula 2 deixou \(x^M, v, h, e\) e duas identidades duais. Hoje a dualidade *trabalha*: derivamos a equação de Slutsky em duas linhas, lemos elasticidades como restrições estimáveis, e medimos bem-estar via CV/EV. Sem dominar Slutsky, **toda análise de incidência tributária** vira chute, **todo sistema de demanda** (AIDS, PIGLOG) vira receita de bolo, e **Equilíbrio Geral** (Aula 4 em diante) lê Pareto como hieróglifo.

**Calibre:** Nicholson & Snyder 12e cap. 5 é o **piso obrigatório**; Jehle & Reny 3e §1.5 e §2.1 é o **teto de conforto** (especificamente §1.5 sobre comparativa estática e §2.1 cross-derivatives da função gasto). MWG cap. 3.G citado cirurgicamente. ZaE cap. 4 (Slutsky/elasticidades) é a **orientação estrutural**.

---

## 1. Leitura dirigida

### 1.1. ZaE — Capítulo 4 (Slutsky e elasticidades)

- **Tempo estimado:** ~30 min.
- **O que observar:**
  - A derivação da equação de Slutsky a partir da identidade calibrada \(x^M(p, m) = h(p, v(p, m))\) — **não memorizar a fórmula final**, internalizar o caminho.
  - Sinais: por que substituição é \(\leq 0\) no próprio preço (concavidade de \(e\)), e por que renda pode brigar.
  - O caso especial **Cobb-Douglas**: \(\partial x_1^M/\partial p_2 = 0\) mas \(\partial h_1/\partial p_2 > 0\). Substitutos líquidos vs. independentes brutos.
- **Perguntas-guia:**
  - Por que \(\partial x_i^M/\partial p_i\) pode ser positivo (Giffen)? Que condições a tornam possível?
  - Se Marshalliana cruzada é zero em CD, por que existe Slutsky cruzada não-zero? O que cancela com o quê?

### 1.2. N&S 12e — Capítulo 5

- **Tempo estimado:** ~25 min.
- **Seções exatas:** 5.1 (Demand Functions), 5.2 (Changes in Income), 5.3 (Changes in a Good's Price), 5.4 (The Individual's Demand Curve — Slutsky equation), 5.5 (Compensated Demand Curves), 5.6 (A Mathematical Examination of a Change in Price).
- **O que observar:** versão em Slutsky equation com derivação completa e geometria (figuras 5.5 e 5.6 são a base visual). Notação N&S usa \(E\) para função gasto — equivalente a \(e\). A discussão de Giffen em N&S é cuidadosa: enfatiza condições, não fenomenologia.
- **Perguntas-guia:**
  - Como N&S deriva Slutsky? (Hint: usa a identidade calibrada como ponto de partida, exatamente como o ZaE.)
  - Qual é a condição N&S enuncia para "lei da demanda" valer? (Hint: bem normal, ou substituição domina renda em valor absoluto.)

### 1.3. N&S 12e — Cap 5 §5.7+ e Cap 6 (apoio elasticidades + bem-estar)

- **Tempo estimado:** ~10 min (varredura).
- **Uso:** seção 5.7 sobre revealed preference (não obrigatória mas informativa); §5.E sobre elasticidades; cap. 6 §6.1 sobre excedente do consumidor.
- Consultar *apenas* o que for necessário para destravar o aparato CV/EV — N&S é mais conciso que Varian aqui.

---

## 2. Checkpoint da plataforma (6–7 itens distribuídos em 3 seções conceituais)

Tentativa genuína, papel e caneta antes do clique. Cada seção conceitual (S3, S4, S5 da página da pré-aula) tem 2 itens obrigatórios, confiança pré/pós, e libera automaticamente a próxima seção.

- **S3 — Equação de Slutsky.** Derivação a partir da identidade calibrada; sinais; caso CD como sanidade.
- **S4 — Bens normais, inferiores, Giffen.** Curvas de Engel; quando o sinal vira; Box Mundo de Hunan.
- **S5 — Elasticidades, restrições agregadas, bem-estar.** Definições; 4 restrições; CV vs. EV vs. EC; quase-linear como caso especial.

**Critério de aceite:** cada item até 3 tentativas; após esgotar, gabarito é revelado e o avanço é liberado (a plataforma marca o erro mas não bloqueia).

---

## 3. Exercícios de papel (seção S6 da plataforma)

Dois obrigatórios + um bônus, inspirados no cap. 5 do N&S 12e — todos ancorados em Slutsky/elasticidades/bem-estar (nada que exija EG ou Arrow-Debreu, que são Aulas 4–6).

- **Exercício proposto 1 — Slutsky em CES (obrigatório).** Para CES \(u = (\alpha x_1^\rho + (1-\alpha) x_2^\rho)^{1/\rho}\) com \(\alpha = 1/2\), \(\rho = -1\) (\(\sigma = 1/2\), bens complementares), \(p = (1, 4)\), \(m = 10\): calcular \(\partial x_1^M/\partial p_2\), \(\partial h_1/\partial p_2\) e o efeito-renda. Confirmar Slutsky numericamente. Objetivo: ver os três termos vivos em CES.
- **Exercício proposto 2 — Restrições agregadas em CD 3D (obrigatório).** Para \(u = x_1^{0{,}3} x_2^{0{,}5} x_3^{0{,}2}\), confirmar **Engel** (\(\sum_i s_i\eta_i = 1\)), **Cournot** (\(\sum_i s_i\varepsilon_{i1} = -s_1\)) e **homogeneidade** (\(\sum_j \varepsilon_{1j} + \eta_1 = 0\)) em \(p = (1, 2, 5)\), \(m = 100\). Objetivo: as restrições deixam de ser fórmulas e viram conta.
- **Exercício proposto 3 — CV e EV em CD simétrica (bônus).** Para \(u = x_1^{1/2} x_2^{1/2}\), \(m = 16\), \(p_2 = 1\), preço \(p_1\) sobe de 1 a 4. Calcular CV, EV e \(\Delta\text{EC}\) (numericamente, usando trapézio em 3 pontos). Verificar que \(\text{EV} \leq \Delta\text{EC} \leq \text{CV}\) (ordem canônica para alta de preço). Objetivo: Willig 1976 vivido.

---

## 4. Reflexão qualitativa (S8)

Dois campos obrigatórios (mín. 10 caracteres cada), alimentam o Bloco 0 da Aula 3 presencial:

- *Equação/passagem ainda nebulosa* — ser específico. Ex.: "não consigo justificar o sinal de \(-x_j(\partial x_i/\partial m)\)"; "entendo Slutsky em forma derivativa mas não em elasticidade".
- *Ponto que quero ver discutido em sala* — ex.: "como a alta do arroz 2020 funcionou em CV"; "Giffen real existe ou só em livro?".

---

## 5. Pré-monitoria 1 (com Alberto, sáb 16/05)

Cobre **Aulas 1–3** conjuntamente. Pré-monitoria abre sáb 09/05 (formativa, não conta nota). Foco anunciado: CES dualidade completa, Slutsky em sistema, AIDS/PIGLOG.

---

## 6. Checklist final

- [ ] Li ZaE cap. 4 (Slutsky/elasticidades) com papel e caneta, reproduzindo a derivação.
- [ ] Li N&S 12e cap. 5 cotejando notação (\(E\) ↔ \(e\), Slutsky, Hicksiana).
- [ ] Varri N&S 12e cap. 6 §6.1 (excedente do consumidor).
- [ ] Completei as 9 seções da pré-aula na plataforma (incluindo micro-checkpoints em S3, S4, S5).
- [ ] Resolvi os **Exercícios propostos 1 e 2** no papel; anotei passagens não-óbvias.
- [ ] Fiz o **quiz de revisão pré-aula 3** (10 questões 🟡) — submissão única.
- [ ] Registrei reflexão em S8 com pelo menos uma dúvida genuína.

---

## Calendário (canônico restaurado)

A partir desta aula, **ciclo semanal padrão** (1 semana por aula):

| Item | Data |
|---|---|
| Material + quiz pré abrem | qui 30/04 madrugada |
| Aula 3 presencial | qua 06/05 · 19:30 |
| Quiz pós + exercícios avaliativos abrem | qui 07/05 madrugada |
| **Tudo fecha** | **qua 13/05 · 18:00 BRT** |
| Gabarito dos avaliativos | qui 14/05 · 00:00 BRT |
