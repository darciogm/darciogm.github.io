# Aula 2 — Durante a Aula

> **Status:** roteiro operacional minuto-a-minuto para a aula presencial de 29/04/2026. Estrutura paralela ao `durante_aula.md` da Aula 1, calibrada após a auditoria da Aula 1.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** 29/04/2026 (quarta-feira)
- **Horário:** 19:30–22:30 (180 min)
- **Tema:** Teoria do Consumidor II — UMP, EMP e Dualidade
- **Objetivo de aprendizagem:** derivar com rigor o par UMP/EMP; extrair \(x^M, v, h, e\) como objetos de primeira classe; aplicar Roy e Shephard como *derivadas*, não *mágicas*; ler os **três diagramas** de dualidade (Marshalliana↔Hicksiana; \(v\)↔\(e\); identidades recíprocas).
- **Pré-requisitos assumidos:** Aula 1 consolidada (preferências, axiomas, \(u\), TMS), pré-aula 2 concluída (ZaE cap. 4, N&S 12e cap. 4, checkpoint conceitual, N&S 4.1 e 4.3 no papel).
- **Nível pedagógico:** meio-termo entre graduação avançada e *qualifier* diluído. Piso N&S; teto de conforto J-R §1.4 e §2.1.

---

## Timing master (180 min = 3h)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + triagem de dúvidas da Aula 1 + recall | 19:30 | 19:40 | 10 min |
| 1 | UMP rigoroso: Lagrangiano, CPO-tangência, Marshalliana | 19:40 | 20:25 | 45 min |
| P1 | Pausa | 20:25 | 20:35 | 10 min |
| 2 | Função indireta \(v(p,m)\) + Identidade de Roy | 20:35 | 21:10 | 35 min |
| 3 | EMP, função gasto \(e(p,u)\), Hicksiana, Shephard | 21:10 | 21:40 | 30 min |
| P2 | Pausa | 21:40 | 21:50 | 10 min |
| 4 | **Dualidade sinótica** (3 diagramas) + prática em dupla | 21:50 | 22:22 | 32 min |
| 5 | Síntese + ponte para Aula 3 (Slutsky) | 22:22 | 22:30 | 8 min |

**Checagem de soma:** 10 + 45 + 10 + 35 + 30 + 10 + 32 + 8 = **180 min**. ✓

*Lição da Aula 1:* pausas curtas (5min) ficaram apertadas. Nesta aula, **duas pausas de 10min** — turma adulta, primeira hora já exige descompressão real.

---

## Bloco 0 — Abertura (10 min, 19:30–19:40)

- [ ] **Check-in (3 min):** confirmar chamada, reafirmar contrato ("papel e caneta, o micromovimento do Lagrangiano não entra pelo ouvido").
- [ ] **Triagem de dúvidas agregadas da Aula 1 (4 min):** puxar do dashboard as 2 dúvidas agregadas mais comuns. Anunciar se serão resolvidas em bloco, em pausa, ou em monitoria. *Não* abrir resolução agora.
- [ ] **Recall de 60 segundos (3 min):**
  - No quadro, um único diagrama: \(\succeq\) → (axiomas 1–3) → \(u\) → (axiomas 4–5 + preços + renda) → **UMP**.
  - "Saímos de axioma e chegamos num problema de otimização. Hoje: esse problema tem quatro filhos — \(x^M, v, h, e\) — e duas identidades que fazem eles conversarem."

---

## Bloco 1 — UMP: Lagrangiano, CPO-tangência, Marshalliana (45 min, 19:40–20:25)

### 1.a. Enunciar o UMP (~5 min)

- [ ] **Quadro — problema primal:**
  \[
  \max_{x \in \mathbb{R}^n_+} u(x) \quad \text{s.a.} \quad p \cdot x \leq m.
  \]
- [ ] **Discutir hipóteses:** \(p \gg 0\), \(m > 0\), \(u\) contínua (axioma 3), quasicôncava (axioma 5), estritamente monotônica (axioma 4 + NSL).
- [ ] **Por que \(u\) contínua + restrição fechada-limitada importa:** **Teorema de Weierstrass** — existência do máximo. Sem continuidade (lexicográfica, Aula 1), o máximo pode *não ser atingido*.
- [ ] **Ponte:** "restrição ativa? Sim — NSL força \(p \cdot x = m\) no ótimo. Vamos ao Lagrangiano."

### 1.b. Lagrangiano e CPO (~12 min)

- [ ] **Quadro:**
  \[
  \mathcal{L}(x, \lambda) = u(x) + \lambda (m - p \cdot x).
  \]
- [ ] **CPO interiores:**
  \[
  \frac{\partial u}{\partial x_i} = \lambda\, p_i \quad \forall i, \qquad p \cdot x = m.
  \]
- [ ] **Razão entre duas CPOs** (a equação que o aluno levará no bolso):
  \[
  \frac{u_i}{u_j} = \frac{p_i}{p_j} \iff \text{TMS}_{ij} = \frac{p_i}{p_j}. \tag{tangência}
  \]
- [ ] **Leitura geométrica:** o ótimo interior fica onde a curva de indiferença tangencia a reta orçamentária. Gráfico rápido no quadro.
- [ ] **Leitura econômica de \(\lambda^*\):** utilidade marginal da renda. "Se o aluno ganhar mais R$1, quanto de utilidade entra?" — essa é a \(\lambda^*\). Volta no Bloco 2 via Roy.

### 1.c. Solucionar o UMP no caso Cobb-Douglas (~10 min)

- [ ] **Template concreto:** \(u = x_1^{\alpha} x_2^{1-\alpha}\), \(\alpha \in (0,1)\).
- [ ] **Caminho 1 — tangência:** \(\text{TMS} = \frac{\alpha}{1-\alpha} \cdot \frac{x_2}{x_1} = \frac{p_1}{p_2}\).
- [ ] **Caminho 2 — log (ordinalidade em ação):** transformar para \(\ln u = \alpha \ln x_1 + (1-\alpha) \ln x_2\). Lagrangiano fica linear em logs, CPO vira divisão limpa.
- [ ] **Resultado fechado:**
  \[
  \boxed{\; x_1^M(p, m) = \frac{\alpha m}{p_1}, \qquad x_2^M(p, m) = \frac{(1-\alpha) m}{p_2}. \;}
  \]
- [ ] **Leitura:** parcelas de gasto \(p_i x_i^M / m = \alpha, 1-\alpha\) **constantes** — assinatura da Cobb-Douglas. Rastro da ordinalidade que vimos na Aula 1.

### 1.d. Propriedades estruturais da Marshalliana (~8 min)

Apresentar cada propriedade com 30s de enunciado e 30s de justificativa (rigor sem perder tempo):

- [ ] **Homogeneidade de grau zero** em \((p, m)\): \(x^M(\lambda p, \lambda m) = x^M(p, m)\) para \(\lambda > 0\). Prova rápida: escalar preços e renda não muda o conjunto orçamentário.
- [ ] **Cumpre a restrição:** \(p \cdot x^M(p, m) = m\) (Walras, por NSL).
- [ ] **Continuidade:** onde \(u\) é quasicôncava estrita e a solução é única, \(x^M\) é contínua em \((p, m)\) (Teorema do Máximo, Berge).
- [ ] **Diferenciabilidade:** implícita no curso; formalmente exige que o Hessiano bordado seja não-degenerado.

### 1.e. Ponte para o Bloco 2 (~5 min)

- [ ] **Quadro:** definir **função utilidade indireta**
  \[
  v(p, m) = u(x^M(p, m)) = \max_{p\cdot x \leq m} u(x).
  \]
- [ ] **Ponte:** "A Marshalliana é a escolha; a indireta é o *nível* que essa escolha atinge. Acabou de entrar o segundo objeto."

> **Armadilha a sinalizar:** a tangência \(\text{TMS} = p_1/p_2\) **só vale em solução interior**. Em soluções de canto (renda insuficiente, bem 2 a zero em quasilinear), a CPO degenera. Não entrar em detalhe aqui — marcar como observação.

---

## Pausa 1 (10 min, 20:25–20:35)

---

## Bloco 2 — Função indireta e Identidade de Roy (35 min, 20:35–21:10)

### 2.a. Propriedades de \(v(p, m)\) (~10 min)

Apresentar as **cinco propriedades** como checklist:

- [ ] **(P1) Homogeneidade de grau zero** em \((p, m)\): decorre diretamente de \(x^M\) ser homogênea grau 0.
- [ ] **(P2) Monotonicidade:** \(v\) é **crescente** em \(m\), **decrescente** em cada \(p_i\). Prova por inclusão de conjuntos orçamentários.
- [ ] **(P3) Quasiconvexidade em \(p\):** conjuntos \(\{p : v(p, m) \leq k\}\) são convexos. Intuição: se dois vetores de preços não tornam o aluno melhor que \(k\), uma média ponderada deles também não torna.
- [ ] **(P4) Continuidade** em \((p, m)\) onde \(p \gg 0\), \(m > 0\).
- [ ] **(P5) Identidade de Roy** (o ponto-alto do bloco).

### 2.b. Identidade de Roy — derivação no quadro (~15 min)

**Enunciado:**
\[
\boxed{\; x_i^M(p, m) = -\frac{\partial v / \partial p_i}{\partial v / \partial m}. \;}
\]

**Prova via Teorema do Envelope** (N&S §2.4; J-R 1.4.4):

1. Lagrangiano do UMP: \(\mathcal{L} = u(x) + \lambda(m - p \cdot x)\).
2. Pelo Envelope, para \(\theta \in \{p_i, m\}\):
   \[
   \frac{\partial v}{\partial \theta} = \frac{\partial \mathcal{L}}{\partial \theta}\bigg|_{x = x^M, \lambda = \lambda^*}.
   \]
3. Logo: \(\partial v / \partial p_i = -\lambda^* x_i^M\); \(\partial v / \partial m = \lambda^*\).
4. Dividir: \(-\frac{\partial v/\partial p_i}{\partial v/\partial m} = -\frac{-\lambda^* x_i^M}{\lambda^*} = x_i^M\). **QED.**

**Leitura:** Roy extrai a demanda *da função indireta*, sem passar pela preferência. Em econometria estrutural, isso é *ouro* — estimar \(v\) paramétrica e recuperar \(x^M\) via derivada. **Anunciar** Deaton-Muellbauer / AIDS sem entrar em detalhe.

### 2.c. Verificação em Cobb-Douglas (~5 min)

- [ ] **Calcular \(v\) diretamente:** substituir \(x_i^M\) em \(u\):
  \[
  v(p, m) = \left(\frac{\alpha m}{p_1}\right)^{\alpha} \left(\frac{(1-\alpha) m}{p_2}\right)^{1-\alpha} = m \cdot \frac{\alpha^{\alpha} (1-\alpha)^{1-\alpha}}{p_1^{\alpha} p_2^{1-\alpha}}.
  \]
- [ ] **Verificar Roy:**
  \[
  -\frac{\partial v/\partial p_1}{\partial v/\partial m} = -\frac{-\alpha \cdot v/p_1}{v/m} = \frac{\alpha m}{p_1} = x_1^M. \checkmark
  \]
- [ ] **Pergunta didática:** "Roy funcionou. Mas por que a *forma* de \(v\) em CD é \(m\) sobre \(p\) elevado a expoente? Porque a preferência é homotética — \(v\) fatora em (função de \(m\)) \(\times\) (função de \(p\))."

### 2.d. Transição: o problema *dual* (~5 min)

- [ ] **Frase-martelo:** "tudo que fizemos parte de 'quanta utilidade o aluno extrai de sua renda'. Pergunta dual: 'quanta renda o aluno precisa para atingir uma dada utilidade?'"
- [ ] **Anunciar EMP:**
  \[
  \min_{x \in \mathbb{R}^n_+} p \cdot x \quad \text{s.a.} \quad u(x) \geq \bar{u}.
  \]
- [ ] **Resposta:** função dispêndio \(e(p, \bar{u})\) e Hicksiana \(h(p, \bar{u})\). Próximo bloco.

---

## Bloco 3 — EMP, função gasto, Hicksiana, Shephard (30 min, 21:10–21:40)

### 3.a. Enunciar o EMP e resolver (~10 min)

- [ ] **Lagrangiano dual:**
  \[
  \mathcal{L}^* = p \cdot x + \mu(\bar{u} - u(x)).
  \]
- [ ] **CPO interiores:** \(p_i = \mu\, u_i\) ⇒ **mesma condição de tangência** \(\text{TMS} = p_i/p_j\) que o UMP.
- [ ] **Restrição ativa:** \(u(x) = \bar{u}\) (por monotonicidade de \(u\) e minimização de gasto).
- [ ] **Definições:**
  \[
  h(p, \bar{u}) = \arg\min_{u(x) \geq \bar{u}} p \cdot x, \qquad e(p, \bar{u}) = p \cdot h(p, \bar{u}) = \min_{u(x) \geq \bar{u}} p \cdot x.
  \]

### 3.b. Propriedades de \(e(p, \bar{u})\) (~8 min)

- [ ] **(E1) Homogeneidade de grau 1** em \(p\): \(e(\lambda p, \bar{u}) = \lambda\, e(p, \bar{u})\). Prova: escala de preços escala o gasto mínimo.
- [ ] **(E2) Monotonicidade:** crescente em cada \(p_i\); crescente em \(\bar{u}\). (Atingir mais utilidade custa mais.)
- [ ] **(E3) Concavidade em \(p\):** decorre do "princípio do valor mínimo" — \(e(p) = \min_{x} p \cdot x\) é o **ínfimo de funções lineares** em \(p\), logo **côncava**. Quadro: esboçar uma função côncava.
  - **Pergunta didática:** "Por que a indireta é *quasiconvexa* em \(p\) e a função gasto é *côncava* em \(p\)? Porque uma é *máximo* sobre restrição linear em \(p\), outra é *mínimo*. Minimax faz o sinal girar."
- [ ] **(E4) Continuidade** em \(p, \bar{u}\) onde \(p \gg 0\).

### 3.c. Lema de Shephard (~7 min)

**Enunciado:**
\[
\boxed{\; h_i(p, \bar{u}) = \frac{\partial e(p, \bar{u})}{\partial p_i}. \;}
\]

**Prova via Envelope** (aplicada ao EMP):
\[
\frac{\partial e}{\partial p_i} = \frac{\partial \mathcal{L}^*}{\partial p_i}\bigg|_{x = h, \mu = \mu^*} = h_i(p, \bar{u}).
\]

**Interpretação de 30s:** "Você sobe \(p_i\) em \(\Delta\); para manter \(\bar{u}\), o consumidor ajusta \(x_i\). No primeiro pedacinho, o ajuste é *segunda ordem*. Então a variação do gasto mínimo é só \(h_i \cdot \Delta\). Gradiente = demanda compensada."

### 3.d. Verificação em Cobb-Douglas (~5 min)

- [ ] **Calcular \(e\) a partir da identidade \(e(p, v(p, m)) = m\):** inverter a fórmula de \(v\).
  \[
  e(p, \bar{u}) = \bar{u} \cdot \frac{p_1^{\alpha} p_2^{1-\alpha}}{\alpha^{\alpha} (1-\alpha)^{1-\alpha}}.
  \]
- [ ] **Verificar Shephard:**
  \[
  \frac{\partial e}{\partial p_1} = \bar{u} \cdot \frac{\alpha\, p_1^{\alpha-1} p_2^{1-\alpha}}{\alpha^{\alpha} (1-\alpha)^{1-\alpha}} = \alpha\, \frac{e}{p_1} = h_1. \checkmark
  \]
- [ ] Comparar com \(x_1^M = \alpha m / p_1\): as duas coincidem quando \(\bar{u} = v(p, m)\), isto é, \(e = m\). **Prévia da dualidade**.

---

## Pausa 2 (10 min, 21:40–21:50)

---

## Bloco 4 — Dualidade sinótica + prática em dupla (32 min, 21:50–22:22)

### 4.a. Os três diagramas de dualidade (~10 min) — quadro limpo

**Diagrama 1 — identidades recíprocas:**
\[
e(p, v(p, m)) = m, \qquad v(p, e(p, \bar{u})) = \bar{u}.
\]
"O ponto \((x^M, v)\) no UMP e o ponto \((h, e)\) no EMP *são o mesmo ponto físico*, quando calibrados com os mesmos dados."

**Diagrama 2 — demandas:**
\[
x_i^M(p, m) = h_i(p, v(p, m)), \qquad h_i(p, \bar{u}) = x_i^M(p, e(p, \bar{u})).
\]
"A Marshalliana é a Hicksiana calibrada ao *nível* de utilidade que a renda compra."

**Diagrama 3 — recuperações via derivada:**
\[
x_i^M = -\frac{\partial v/\partial p_i}{\partial v/\partial m} \text{ (Roy)}, \qquad h_i = \frac{\partial e}{\partial p_i} \text{ (Shephard)}.
\]

**Frase-martelo:** "**UMP e EMP são o mesmo ponto, visto de duas direções.** O ponto em si é geometria; as identidades são a álgebra da mudança de carta."

### 4.b. Prática em dupla (~18 min)

- [ ] **Enunciado no quadro:** Dada \(u(x_1, x_2) = x_1^{0,5} x_2^{0,5}\), preços \(p = (4, 1)\), renda \(m = 20\):
  1. Resolva o UMP. Ache \(x^M\) e \(v\).
  2. Verifique a Identidade de Roy em \(x_1^M\).
  3. Resolva o EMP com \(\bar{u} = v\) do item 1. Ache \(h\) e \(e\). Confirme \(e = m\).
  4. Verifique o Lema de Shephard em \(h_1\).

- [ ] **Formação de duplas:** aleatória (política uniforme do curso).
- [ ] **Circulação:** professor + Alberto (se presente) monitoram as 4 armadilhas abaixo.
- [ ] **Armadilhas previstas (em ordem aproximada de frequência observada):**
  - Trocar \(\alpha/(1-\alpha)\) por \(\alpha\) nas parcelas, ou confundir o **índice** do bem ao aplicar Shephard (\(h_1\) em vez de \(h_2\)).
  - Confundir sinal na Identidade de Roy (esquecer o menos).
  - Esquecer que Shephard dá **hicksiana**, não marshalliana — aluno que tenta \(\partial e/\partial m\) para achar \(x^M\).
  - No passo 4, derivar \(e\) em \(\bar u\) ao invés de \(p_1\) (raro, mas diagnóstico útil: revela que Envelope não foi internalizado).

### 4.c. Consolidação no quadro (~4 min)

- [ ] Um voluntário apresenta o item 2 (Roy). Professor refina.
- [ ] Um voluntário apresenta o item 4 (Shephard). Professor refina.
- [ ] **Checkpoint coletivo:** "levante a mão quem chegou em \(e = 20\)." — usar como *semáforo* informal. Se <50% da sala chegou, abrir 2 min extra.

---

## Bloco 5 — Síntese + ponte para Aula 3 (8 min, 22:22–22:30)

- [ ] **Síntese em 3 pontos:**
  1. **UMP e EMP são o mesmo ponto.** Dois problemas, quatro funções (\(x^M, v, h, e\)), duas identidades recíprocas. É a mesma cena filmada de duas angulações.
  2. **Roy e Shephard são derivadas**, não mágica — são o Teorema do Envelope aplicado a cada problema.
  3. **Cobb-Douglas é o caso-brinquedo**; CES, quasilinear e Leontief adaptam a álgebra. A *estrutura* é sempre a mesma.

- [ ] **Ponte para Aula 3 (Slutsky + Elasticidades + Estimação):**
  - [ ] Quadro: Hicksiana tem a *mesma CPO* que a Marshalliana, mas **não o mesmo efeito-renda**. O gap entre \(\partial x^M/\partial p_i\) e \(\partial h_i/\partial p_i\) é a **decomposição de Slutsky**.
  - [ ] Equação de Slutsky na linha:
    \[
    \frac{\partial x_i^M}{\partial p_j} = \underbrace{\frac{\partial h_i}{\partial p_j}}_{\text{substituição}} - \underbrace{x_j^M \cdot \frac{\partial x_i^M}{\partial m}}_{\text{renda}}.
    \]
  - [ ] "Aula 3: decompomos Slutsky, lemos elasticidades Marshalliana vs. Hicksiana, e tocamos em princípios de estimação de demanda (AIDS, PIGLOG). A base é hoje."

- [ ] **Lembrete de plataforma:** quiz pós-aula 2 abre na madrugada; exercícios avaliativos também. Prazo **06/05 18h** (calendário unificado).

---

## Materiais e recursos (checklist do professor)

- [ ] Slides `reveal.js` (`aula_2/slides/aula-02.html` renderizado).
- [ ] Gráficos interativos do ZaE cap. 4 abertos em aba: UMP-CD com slider de \(\alpha\), Edgeworth-dual (se existir), Shephard visualização.
- [ ] Lista de chamada.
- [ ] Marcador de quadro (mínimo 3 cores — verde para CPO, vermelho para identidades, preto para derivações).
- [ ] Acesso ao dashboard da plataforma para triagem do Bloco 0.
- [ ] Exercício da prática em dupla pré-impresso (1 folha A4 por dupla) — opcional mas recomendado.

---

## Notas para o professor (autocalibração em tempo real)

- **Se a turma trava no Lagrangiano (Bloco 1.b):** não recuar para álgebra mais básica. Entregar a CPO pronta e trabalhar a *leitura* \(\text{TMS} = p_i/p_j\). O pré-requisito está na pré-aula; se falhou, volta como *nota para monitoria 1* (16/05).
- **Se a derivação de Roy (Bloco 2.b) estiver rápida demais:** adicionar um segundo exemplo numérico (por ex., CES com \(\rho = 1/2\)) — mas **não** sacrificar Bloco 3.
- **Se a derivação de Shephard (Bloco 3.c) pegar o aluno desprevenido:** oferecer a intuição geométrica (deformação mínima da restrição) antes do envelope formal. É a passagem mais "por fé" do dia; vale extra 1 minuto.
- **Se a prática em dupla (Bloco 4.b) estoura:** cortar a consolidação do item 4 (Shephard) para 1 minuto — o aluno pode conferir na plataforma. **Nunca cortar a síntese (Bloco 5)** — é a ponte.
- **Se o dashboard mostra triagem com pico em "não sei montar o Lagrangiano":** abrir o Bloco 1 com 3 min extras na mini-revisão do Lagrangiano do N&S cap. 2. Sacrificar o mini-exercício da prática (item 4) para compensar.

---

## Ganchos explícitos para a Monitoria 1 (com Alberto, sáb 16/05)

A monitoria 1 é formativa e cobre Aulas 1–3. Da Aula 2 especificamente, deixar para o Alberto:

- **Dualidade em CES com \(\rho \neq 0\):** derivar \(x^M, v, h, e\) completas. Verificar as quatro identidades. É o exercício que *calibra* o aluno para o resto do curso.
- **Decomposição de Slutsky a partir de Roy + Shephard** — introdução formal da equação de Slutsky, preparando terreno para a Aula 3.
- **Quasilinear em caso de canto** — o que sobrevive da dualidade quando \(x_2 = 0\).
- **Princípio da Soma (Sum Rule) e Restrições de Adição:** \(\sum_i p_i x_i^M = m\), \(\sum_i p_i \partial x_i^M / \partial m = 1\), \(\sum_i s_i \eta_i = 1\). Todos decorrem de Walras + diferenciação. Valem ouro em ANPEC.
