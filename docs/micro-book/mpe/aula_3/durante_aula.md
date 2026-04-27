# Aula 3 — Durante a Aula

> **Status:** roteiro operacional minuto-a-minuto para a aula presencial de 06/05/2026. Estrutura paralela ao `durante_aula.md` da Aula 2, calibrada após a auditoria das Aulas 1 e 2.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** 06/05/2026 (quarta-feira)
- **Horário:** 19:30–22:30 (180 min)
- **Tema:** Teoria do Consumidor III — Slutsky, Elasticidades, Bem-estar
- **Objetivo de aprendizagem:** decompor \(\partial x_i^M / \partial p_j\) em substituição (Hicksiana) e renda (Engel) via identidade calibrada da Aula 2; reconhecer Giffen como artefato de inferioridade forte (e não fenômeno genérico); manipular as 4 restrições agregadas (Engel, Cournot, homogeneidade, simetria) como contas de bolso; calcular CV, EV e excedente do consumidor, sabendo onde elas coincidem (quase-linear) e onde divergem (CD).
- **Pré-requisitos assumidos:** Aulas 1 e 2 consolidadas (preferências, UMP, EMP, Roy, Shephard, identidades duais), pré-aula 3 concluída (ZaE cap. 4 Slutsky/elasticidades, N&S 12e cap. 5).
- **Nível pedagógico:** meio-termo entre graduação avançada e *qualifier* diluído. Piso N&S 12e cap. 5; teto de conforto J-R §1.5 e §2.1.

---

## Timing master (180 min = 3h)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + reflexões da pré-aula + recall | 19:30 | 19:35 | 5 min |
| 1 | Slutsky: derivação e intuição | 19:35 | 20:15 | 40 min |
| P1 | Pausa | 20:15 | 20:25 | 10 min |
| 2 | Bens normais, inferiores, Giffen | 20:25 | 21:00 | 35 min |
| 3 | Elasticidades + restrições agregadas | 21:00 | 21:40 | 40 min |
| P2 | Pausa | 21:40 | 21:50 | 10 min |
| 4 | Bem-estar do consumidor: CV, EV, excedente | 21:50 | 22:25 | 35 min |
| 5 | Síntese + ponte Aula 4 (EG) | 22:25 | 22:30 | 5 min |

**Checagem de soma:** 5 + 40 + 10 + 35 + 40 + 10 + 35 + 5 = **180 min**. ✓

*Lição da Aula 2:* abertura curta libera tempo para Bloco 1 — derivação de Slutsky é onde a turma trava se mal-conduzida. Bloco 1 com 40 min é defensável; menos que isso, repetir derivação na monitoria.

---

## Bloco 0 — Abertura (5 min, 19:30–19:35)

- [ ] **Check-in (1 min):** chamada, "papel e caneta — Slutsky se aprende com a mão".
- [ ] **Triagem das reflexões (3 min):** puxar do dashboard as 2-3 dúvidas agregadas mais comuns da pré-aula 3. Slides já têm o quadro de "tema mais nebuloso → ação na aula".
  - Se "por que o sinal de \(-x_j(\partial x_i/\partial m)\) é o certo" estiver no top, anunciar que vai ser resolvido **na derivação completa do Bloco 1**, não agora.
  - Se "Hicksiana cruzada \(\neq 0\) em CD" aparece, anunciar que o Box-CD do Bloco 1 fecha.
  - Se "Giffen real existe" estiver no topo, anunciar Box Mundo do Bloco 2 (Hunan).
- [ ] **Recall (1 min):** quadro com a identidade calibrada \(x^M(p,m) = h(p, v(p,m))\), Roy, Shephard. "São as três peças. Hoje a derivação combina as três."

---

## Bloco 1 — Slutsky: derivação e intuição (40 min, 19:35–20:15)

### 1.a. A pergunta-motor e a intuição (~5 min)

- [ ] **Quadro:** "Hicksiana e Marshalliana têm a *mesma* tangência (Aula 2). Por que respondem diferente a \(\Delta p_j\)?"
- [ ] **Resposta em uma frase:** "Hicksiana fixa \(\bar u\); Marshalliana deixa o poder de compra real escorrer. A diferença é o efeito-renda."
- [ ] **Ponte:** "Vamos traduzir essa frase em álgebra. Identidade calibrada da Aula 2 + regra da cadeia."

### 1.b. Derivação completa (~15 min)

- [ ] **Quadro — passo 1.** Identidade calibrada:
  \[
  x_i^M(p, m) = h_i(p, v(p, m)). \tag{*}
  \]
- [ ] **Quadro — passo 2.** Diferenciar (\*) em \(p_j\) com regra da cadeia em \(\bar u = v(p, m)\):
  \[
  \frac{\partial x_i^M}{\partial p_j} = \frac{\partial h_i}{\partial p_j}\bigg|_{\bar u = v} + \frac{\partial h_i}{\partial \bar u}\cdot \frac{\partial v}{\partial p_j}.
  \]
- [ ] **Quadro — passo 3.** Roy entrega \(\partial v/\partial p_j = -\lambda^* x_j^M\). Identidade dual \(h(p, \bar u) = x^M(p, e(p, \bar u))\) derivada em \(\bar u\) entrega \(\partial h_i/\partial \bar u = (1/\lambda^*)\,\partial x_i^M/\partial m\).
- [ ] **Quadro — punch.** Substituir, \(\lambda^*\) cancela:
  \[
  \boxed{\frac{\partial x_i^M}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j^M\cdot \frac{\partial x_i^M}{\partial m}.}
  \]
- [ ] **Frase-martelo:** "Substituição vem de Shephard. Renda vem de Engel. Slutsky soma os dois."

### 1.c. Ler os sinais (~5 min)

Tabela no quadro (ou slide compact-table):
- [ ] \(\partial h_i/\partial p_i \leq 0\) sempre — concavidade de \(e\).
- [ ] \(\partial h_i/\partial p_j\) cruzada: sinal livre — substitutos/complementos *líquidos*.
- [ ] \(\partial x_i^M/\partial m\): \(>0\) normal, \(<0\) inferior.
- [ ] **Lei da demanda compensada** é teorema; **lei da Marshalliana** é tendência.

### 1.d. Sanidade em Cobb-Douglas (~10 min)

- [ ] **Setup:** \(u = x_1^{1/2} x_2^{1/2}\). Marshalliana \(x_1^M = m/(2 p_1)\) — não depende de \(p_2\). Logo \(\partial x_1^M/\partial p_2 = 0\).
- [ ] **Aplicar Slutsky:**
  - Hicksiana: \(h_1 = \bar u\sqrt{p_2/p_1}\). Derivar: \(\partial h_1/\partial p_2 = \bar u/(2\sqrt{p_1 p_2}) = m/(4 p_1 p_2)\) (com \(\bar u = m/(2\sqrt{p_1 p_2})\)).
  - Renda: \(-x_2^M\cdot \partial x_1^M/\partial m = -(m/(2p_2))\cdot (1/(2 p_1)) = -m/(4 p_1 p_2)\).
- [ ] **Soma:** os dois cancelam exatamente. \(\partial x_1^M/\partial p_2 = 0\). ✓
- [ ] **Frase-martelo:** "Marshalliana cruzada zera *por compensação*, não por ausência. Hicksiana cruzada é positiva em CD."

### 1.e. Ponte (~5 min)

- [ ] "Pergunta natural: quando o efeito-renda *domina* a substituição? Aí o sinal Marshalliano vira — Giffen. Vamos ao Bloco 2."

> **Armadilha a sinalizar:** índice no efeito-renda. Slutsky é assimétrica — efeito de \(p_j\) sobre \(x_i\) tem renda proporcional a \(x_j\) (bem cujo preço mudou), não \(x_i\). Aluno confuso volta na monitoria.

---

## Pausa 1 (10 min, 20:15–20:25)

---

## Bloco 2 — Normais, inferiores, Giffen (35 min, 20:25–21:00)

### 2.a. Taxonomia (~7 min)

- [ ] Compact-table no quadro: normal/inferior/luxo/necessidade/Giffen.
- [ ] **Curvas de Engel** rapidamente — gráfico esquemático \(x_i\) vs. \(m\) para cada caso.
- [ ] **Frase-martelo:** "Inferioridade é necessária para Giffen, mas *não suficiente*."

### 2.b. Quando Giffen aparece (~10 min)

- [ ] **Quadro:** Slutsky para próprio preço:
  \[
  \frac{\partial x_i^M}{\partial p_i} = \frac{\partial h_i}{\partial p_i} - x_i^M\cdot \frac{\partial x_i^M}{\partial m}.
  \]
- [ ] **Para Giffen** (\(\partial x_i^M/\partial p_i > 0\)):
  1. Bem inferior: \(\partial x_i^M/\partial m < 0\).
  2. Efeito-renda em magnitude \(>\) substituição: \(|x_i^M\cdot \partial x_i^M/\partial m| > |\partial h_i/\partial p_i|\).
- [ ] **Geometria:** dois movimentos — substituição ao longo de IC; renda movendo de IC. Quadro com IC e BL antes/depois.

### 2.c. Box Mundo — Hunan (~8 min)

- [ ] Apresentar Jensen & Miller (AER 2008): subsidiar arroz em Hunan rural reduziu consumo de arroz.
- [ ] **Por quê:** parcela altíssima (>50% das calorias), substitutos inferiores (carne) acessíveis após "renda extra".
- [ ] **Caveat:** Giffen é raro. Requer (i) parcela altíssima, (ii) substituto inferior, (iii) renda baixa.
- [ ] **Resolver no quadro:** com \(s_i = 0{,}5\), \(\eta_i = -0{,}5\), \(\varepsilon^c_{ii} = -0{,}2\): Slutsky em elasticidades dá \(\varepsilon_{ii} = -0{,}2 - 0{,}5\cdot (-0{,}5) = -0{,}2 + 0{,}25 = +0{,}05\). Giffen marginal. Mostra como os números têm que se alinhar.

### 2.d. Box Brasil — feijão e arroz (~5 min)

- [ ] POF 2017–18: feijão+arroz são ~12% no 1º quintil, ~3% no 5º. Curva de Engel de **necessidade**, não inferior.
- [ ] **Implicação:** alta de preço do arroz 2020–22 não foi Giffen, foi regressividade tributária implícita.
- [ ] **Ponte:** "Se quisermos medir o *bem-estar* dessa alta — Bloco 4 dá a ferramenta exata."

### 2.e. Síntese Bloco 2 (~5 min)

- [ ] Frase-martelo: "Inferior é necessário, parcela alta amplifica, e só então o sinal vira."
- [ ] "Quando você vê Marshalliana subindo com preço: primeira hipótese é erro de medida; segunda, Giffen via inferioridade forte. Nunca pule a primeira."

---

## Bloco 3 — Elasticidades e restrições agregadas (40 min, 21:00–21:40)

### 3.a. Definições (~5 min)

- [ ] **Quadro:** \(\varepsilon_{ij}, \eta_i, \varepsilon^c_{ij}\) — definições em log-log.
- [ ] **Slutsky em elasticidades:**
  \[
  \boxed{\varepsilon_{ij} = \varepsilon^c_{ij} - s_j\,\eta_i.}
  \]
- [ ] "Mesma decomposição, mudando de unidade. Multiplicação por \(p_j/x_i\) e \(m/x_i\) ajusta os pesos."

### 3.b. Quatro restrições agregadas (~15 min)

- [ ] **Engel (3 min):**
  - Walras: \(\sum_i p_i x_i^M = m\). Derivar em \(m\): \(\sum_i p_i\,\partial x_i^M/\partial m = 1\).
  - Multiplicar e dividir por \(x_i^M m/(x_i^M m)\): \(\sum_i s_i\eta_i = 1\).
  - "Em média ponderada por parcela, elasticidade-renda vale 1. Luxos compensam necessidades."

- [ ] **Cournot (4 min):**
  - Walras derivado em \(p_j\): \(x_j^M + \sum_i p_i\,\partial x_i^M/\partial p_j = 0\).
  - Manipular em elasticidades: \(\sum_i s_i\varepsilon_{ij} = -s_j\).
  - "Quando \(p_j\) sobe 1%, gasto agregado em todos os bens cai \(s_j\)%."

- [ ] **Homogeneidade (3 min):**
  - \(x^M\) homogênea grau 0 em \((p, m)\). Euler aplicado: \(\sum_j p_j\,\partial x^M/\partial p_j + m\,\partial x^M/\partial m = 0\).
  - Em elasticidades: \(\sum_j \varepsilon_{ij} + \eta_i = 0\).
  - "Sem ilusão monetária."

- [ ] **Simetria (5 min):**
  - Hessiano de \(e\) é simétrico (Young) ⇒ \(\partial h_i/\partial p_j = \partial h_j/\partial p_i\).
  - Em elasticidades: \(s_j\,\varepsilon^c_{ij} = s_i\,\varepsilon^c_{ji}\).
  - "Núcleo da estrutura compensada — reflete concavidade de \(e\) em \(p\)."

> **Armadilha a sinalizar (Bloco 3.b):** aluno MPE com base ANPEC vai perguntar "as 4 são todas independentes?". Resposta canônica (Deaton-Muellbauer 1980 §3.1): **não — Cournot é implicada por Engel + Homogeneidade + Simetria**, via Slutsky-em-elasticidades + adding-up. Em AIDS/QUAIDS basta impor as outras 3 e Cournot sai de graça. "Lógicas distintas" \(\neq\) "funcionalmente independentes". Esta é exatamente a Q8 do pós-quiz — quem perguntar em sala já está pronto para ela.

### 3.c. Substitutos vs. complementos (~10 min)

- [ ] **Compact-table** no quadro: bruto (Marshalliana) vs. líquido (Hicksiana).
- [ ] **Cobb-Douglas como exemplo:** \(\partial x_1^M/\partial p_2 = 0\) (independentes brutos) mas \(\partial h_1/\partial p_2 > 0\) (substitutos líquidos). Os dois conceitos *podem discordar*.
- [ ] **Frase-martelo:** "Em política de preços, **bruto** importa (Marshalliana move escolha). Em bem-estar, **líquido** importa (Hicksiana mede compensação)."

### 3.d. Aplicação rápida — alta de ICMS sobre combustível (~10 min)

- [ ] **Setup:** \(s = 0{,}08\), \(\eta = 0{,}3\), \(\varepsilon^c = -0{,}25\).
- [ ] **Slutsky:** \(\varepsilon = -0{,}25 - 0{,}08\cdot 0{,}3 = -0{,}274\).
- [ ] **Receita:** alta 10% no preço, queda 2,74% na quantidade ⇒ receita por unidade tributária sobe ~7,3% (Laffer fraco).
- [ ] **Caveat:** análise de incidência exige Hicksiana — Bloco 4. A Marshalliana só conta arrecadação, não bem-estar.

---

## Pausa 2 (10 min, 21:40–21:50)

---

## Bloco 4 — Bem-estar: CV, EV, excedente (35 min, 21:50–22:25)

### 4.a. A pergunta de bem-estar (~5 min)

- [ ] **Quadro:** "Preço \(p^0 \to p^1\). Quanto vale, em moeda, essa mudança para o consumidor?"
- [ ] **Três candidatos:**
  1. **Excedente do consumidor** (área sob Marshalliana) — pragmático mas teoricamente incoerente em geral.
  2. **CV** — quanta moeda *tirar depois* para deixar igual.
  3. **EV** — quanta moeda *dar antes* para evitar a mudança.
- [ ] "CV e EV são integrais de Hicksiana — bem-comportadas. EC é integral de Marshalliana — depende de path."

### 4.b. Definições formais (~10 min)

- [ ] **Quadro:**
  \[
  \text{CV} = e(p^1, u^0) - e(p^0, u^0), \qquad
  \text{EV} = e(p^1, u^1) - e(p^0, u^1).
  \]
- [ ] **Forma integral via Shephard** (mostrar para \(p_1\) só):
  \[
  \text{CV} = \int_{p^0_1}^{p^1_1} h_1(p, u^0)\,dp_1, \qquad
  \text{EV} = \int_{p^0_1}^{p^1_1} h_1(p, u^1)\,dp_1.
  \]
- [ ] **EC** (alerta de path-dependence):
  \[
  \Delta\text{EC} = \int_{p^0_1}^{p^1_1} x_1^M(p, m)\,dp_1.
  \]
- [ ] **Willig (AER 1976):** se \(\eta\) pequena e \(\Delta p\) moderado, erro \(|\Delta\text{EC} - \text{CV}|\) é \(O(\eta\cdot s\cdot \Delta p^2)\).

### 4.c. Quase-linear como caso especial (~5 min)

- [ ] **Setup:** \(u = v(x_1) + x_2\) com \(x_2\) numerário.
- [ ] \(\partial x_1^M/\partial m = 0\) (interior); Hicksiana = Marshalliana; CV = EV = ΔEC.
- [ ] "Quando você vê triângulo de Harberger num livro, está implicitamente assumindo quase-linearidade ou efeito-renda desprezível."

### 4.d. Exemplo numérico em CD (~10 min)

- [ ] **Setup:** \(u = x_1^{1/2} x_2^{1/2}\), \(m = 16\), \(p_2 = 1\). \(p_1: 1 \to 4\).
- [ ] Antes: \(x^M = (8, 8)\), \(u^0 = 8\). Depois: \(x^M = (2, 8)\), \(u^1 = 4\).
- [ ] \(e(p_1, p_2, \bar u) = 2\bar u\sqrt{p_1 p_2}\).
- [ ] CV \(= 2\cdot 8\cdot 2 - 2\cdot 8\cdot 1 = 16\).
- [ ] EV \(= 2\cdot 4\cdot 2 - 2\cdot 4\cdot 1 = 8\).
- [ ] **Frase-martelo:** "CV \(\neq\) EV. A diferença mede o efeito-renda no consumo de \(x_1\)."

### 4.e. Box Brasil — reforma tributária (~5 min)

- [ ] EC 132/2023 unifica ICMS/ISS/IPI em IBS+CBS. Bens essenciais alíquota reduzida; supérfluos sobem.
- [ ] CV por estrato de renda é o aparato para medir progressividade — exige sistema de demanda (AIDS) calibrado em POF.
- [ ] Estimativas SPE/MF: regressivo no curto prazo, progressivo no longo (cashback compensa).
- [ ] "Vocês saem desta aula com o ferramental para ler esse tipo de relatório como economistas."

---

## Bloco 5 — Síntese + ponte para Aula 4 (5 min, 22:25–22:30)

- [ ] **Síntese em 3 frases:**
  1. **Slutsky** decompõe Marshalliana em substituição + renda. Giffen requer inferioridade forte.
  2. **Quatro restrições** (Engel, Cournot, homogeneidade, simetria) consequências de Walras + dualidade.
  3. **CV/EV** são integrais de Hicksiana. EC é aproximação válida (Willig). Em quase-linear, todos coincidem.

- [ ] **Ponte para Aula 4 (Equilíbrio Geral em trocas):**
  - "Cada consumidor maximiza, cada produtor maximiza. *Quando* o sistema fecha?"
  - Demanda agregada = oferta agregada. Marshalliana de cada um (bruta). 4 restrições para sanidade.
  - "Aula 4: Edgeworth, núcleo, competitivo. Aula 5: produção. Aula 6: contingência. Aula 7: Arrow-Debreu fecha."

- [ ] **Lembrete de plataforma:** quiz pós-aula 3 + exercícios avaliativos abertos desde 07/05 madrugada. Prazo **13/05 18h**. Gabarito 14/05 00:00. Pré-monitoria 1 (Aulas 1–3) abre sáb 09/05.

---

## Materiais e recursos (checklist do professor)

- [ ] Slides `reveal.js` (`aula_3/slides/aula-03.html` renderizado).
- [ ] Quadro com 3 cores (verde para CPO, vermelho para identidades, preto para derivações).
- [ ] Acesso ao dashboard da plataforma para triagem do Bloco 0 (reflexões da pré-aula).
- [ ] Lista de chamada.
- [ ] Cópia da tabela compact-table de elasticidades em A4 — opcional, distribuir pré-Bloco 3 se sala parecer perdida.

---

## Notas para o professor (autocalibração em tempo real)

- **Se a derivação de Slutsky (Bloco 1.b) trava:** reduzir Bloco 1.d (sanidade CD) para 5 min e preservar derivação. A intuição vem da álgebra; sem ela, sanidade é truque.
- **Se as 4 restrições (Bloco 3.b) ficam corridas:** apresentar Engel e Cournot derivadas no quadro; homogeneidade e simetria como enunciado + referência. Aluno pode preencher o resto na monitoria.
- **Se o exemplo CV/EV (Bloco 4.d) estoura:** cortar Box Brasil (4.e) para 2 min — manter o numérico. A álgebra aqui é o conteúdo.
- **Se o dashboard mostra dúvida em Giffen pegando muito:** abrir Bloco 2 com slide direto da Aula Hunan; sacrificar 2 min do Bloco 2.a (taxonomia já foi para a pré-aula).
- **Se o Alberto está presente:** ele cobre Bloco 1.d (sanidade CD) enquanto Darcio circula; em troca, Darcio cobre derivação da simetria de Slutsky no Bloco 3.b.

---

## Ganchos explícitos para a Pré-Monitoria 1 (com Alberto, sáb 16/05)

A monitoria 1 é formativa e cobre Aulas 1–3. Da Aula 3 especificamente, deixar para o Alberto:

- **CES dualidade completa + elasticidade compensada \(\varepsilon^c_{ii} = -(1-s_i)\sigma\)** — derivação no caderno e relação com \(\sigma\) e \(s_i\).
- **Slutsky em sistema** — manipulação matricial: \(S = \partial h/\partial p\), simetria, semidef. neg., \(Sp = 0\). Calcular para Cobb-Douglas 3D.
- **Estimação de demanda** — AIDS, PIGLOG, regressão de parcelas em log-preços e log-renda. As 4 restrições como teste.
- **Triângulo de Harberger vs. CV/EV** — quando aproximar é seguro, quando não. Willig 1976 explicado.
- **Indícios de Giffen em séries reais** — limite empírico (parcela alta + inferioridade severa). Discutir o que conta como evidência.
