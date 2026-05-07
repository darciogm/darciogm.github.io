# Aula 4 — Durante a Aula

> **Status:** roteiro operacional minuto-a-minuto para a aula presencial de 13/05/2026. Estrutura paralela ao `durante_aula.md` da Aula 3, calibrada após auditorias das Aulas 1–3.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** 13/05/2026 (quarta-feira)
- **Horário:** 19:30–22:30 (180 min)
- **Tema:** Equilíbrio Geral em Trocas Puras — Edgeworth, Pareto, equilíbrio competitivo, Walras, 1º TBE, 2º TBE preliminar
- **Objetivo de aprendizagem:** dominar a representação Edgeworth de uma economia $2\times 2$ de troca pura; calcular equilíbrio competitivo em CD; aplicar a lei de Walras como ferramenta operacional e como consequência de UMP/LNS; demonstrar o 1º TBE pedagogicamente; compreender o teaser do 2º TBE como ponto de partida da Aula 5/6.
- **Pré-requisitos assumidos:** Aulas 1–3 consolidadas (UMP, demanda Marshalliana, Walras a nível individual, dualidade, elasticidades). Pré-aula 4 concluída (ZaE EG, N&S 12e §13.1–13.2).
- **Nível pedagógico:** meio-termo entre graduação avançada e qualifier diluído. Piso N&S 12e §13.1–13.2; teto J-R §5.1 (sem invocar Kakutani).

---

## Timing master (180 min = 3h)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + recall + triagem reflexões | 19:30 | 19:35 | 5 min |
| 1 | Edgeworth, Pareto, contract curve, núcleo | 19:35 | 20:15 | 40 min |
| P1 | Pausa | 20:15 | 20:25 | 10 min |
| 2 | Equilíbrio competitivo + lei de Walras + cálculo CD | 20:25 | 21:00 | 35 min |
| 3 | 1º TBE (prova pedagógica) + 2º TBE preliminar | 21:00 | 21:35 | 35 min |
| P2 | Pausa | 21:35 | 21:45 | 10 min |
| 4 | Box Brasil/Mundo + síntese aplicada | 21:45 | 22:15 | 30 min |
| 5 | Síntese + ponte Aula 5 (produção) | 22:15 | 22:30 | 15 min |

**Checagem de soma:** 5 + 40 + 10 + 35 + 35 + 10 + 30 + 15 = **180 min**. ✓

*Lição das Aulas 1–3:* Bloco 1 (Edgeworth) é onde a turma trava se mal-conduzida. A construção *visual* tem que ser feita ao vivo no quadro — não apenas projetada. 40 min é defensável; menos disso, monitoria 1 paga o juro.

---

## Bloco 0 — Abertura (5 min, 19:30–19:35)

- [ ] **Check-in (1 min):** chamada, "papel, caneta e lápis de cor — Edgeworth se aprende com mão".
- [ ] **Triagem oral das reflexões (3 min):** puxar do dashboard as 2-3 dúvidas agregadas mais comuns da pré-aula 4 (D-1) e anunciar onde a aula resolve cada uma.
  - Se "por que LNS é necessário?" estiver no top, anunciar que vai ser resolvido **na demonstração do 1º TBE no Bloco 3**.
  - Se "EC é único?" aparece, anunciar que entra em Bloco 2 (em CD sim; em geral, não — Aula 6).
  - Se "Pareto não é justo?" estiver no topo, anunciar que o 1º TBE separa eficiência de equidade explicitamente.
- [ ] **Recall da Aula 3 (1 min):** quadro com Slutsky em elasticidades + lei de Walras a nível individual ($p\cdot x^M = m$) + as 4 restrições agregadas. "Hoje, o $p$ deixa de ser exógeno. É preço de equilíbrio."

---

## Bloco 1 — Edgeworth, Pareto, contract curve, núcleo (40 min, 19:35–20:15)

### 1.a. Setup da economia de troca pura (~5 min)

- [ ] **Quadro:** $I=2$ consumidores ($A$, $B$), $L=2$ bens ($1$, $2$). Cada $i$ com $u^i: \mathbb{R}^2_+ \to \mathbb{R}$ contínua, monotônica, estritamente quase-côncava. Dotação $\omega^i \in \mathbb{R}^2_{++}$.
- [ ] **Alocação:** $x = (x^A, x^B)$. **Viável:** $x^A + x^B = \omega^A + \omega^B = \bar\omega$.
- [ ] **Frase-martelo:** "Não há produção. Recursos são fixos. A pergunta é: como redistribuir entre os agentes?"

### 1.b. Caixa de Edgeworth — construção ao vivo no quadro (~12 min)

- [ ] **Quadro: desenhar a caixa.** Eixos com comprimento $\bar\omega_1$ horizontal e $\bar\omega_2$ vertical. Origem $A$ (canto inferior-esquerdo) e origem $B$ (canto superior-direito). **Cada ponto interior é uma alocação viável** — $x^A$ é lido a partir de $A$, e $x^B$ a partir de $B$.
- [ ] **Ponto de dotação $\omega$**: marcar como ponto de partida.
- [ ] **Curvas de indiferença de $A$**: convexas para $A$. Curvas de $B$: convexas para $B$ (parecem côncavas a olhos de $A$).
- [ ] **Lente de melhoria mútua**: na dotação $\omega$, marcar a interseção dos dois conjuntos preferidos. **"Aqui dentro: ambos ganham. Fora: pelo menos um perde."**
- [ ] **Frase-martelo:** "A caixa de Edgeworth é o microscópio mais barato que a teoria oferece."

### 1.c. Pareto-eficiência e contract curve (~10 min)

- [ ] **Definição formal de Pareto:** $x$ Pareto-eficiente se viável e não há $\tilde x$ viável com todos pelo menos iguais e algum estritamente melhor.
- [ ] **Caracterização interior** (com utilidades suaves, $x^i \gg 0$): $\text{TMS}^A(x^A) = \text{TMS}^B(x^B)$. Tangência das curvas.
- [ ] **Demonstração informal:** se $\text{TMS}^A \neq \text{TMS}^B$, existe troca infinitesimal ($A$ dá um pouco do bem para o qual valoriza menos, recebe do outro) que melhora ambos. Pareto exige tangência.
- [ ] **Contract curve:** lugar geométrico das alocações Pareto-eficientes. Curva contínua que conecta origem $A$ e origem $B$ (em economias suaves).
- [ ] **Frase-martelo:** "Tangência é a fronteira do que mercado pode fazer sem redistribuir."

### 1.d. Núcleo (~8 min)

- [ ] **Definição operacional:** alocação $x$ está no **núcleo** se (i) é individualmente racional ($u^i(x^i) \ge u^i(\omega^i)$ para todo $i$) e (ii) não pode ser bloqueada por nenhuma coalizão.
- [ ] **Em $I=2$:** "coalizão" = ou um ou outro consumidor sozinho ou os dois juntos. Bloqueio individual = $u^i(x^i) < u^i(\omega^i)$. Bloqueio do par = existe $\tilde x$ Pareto-superior.
- [ ] **Núcleo em economia $2\times 2$ = parte da contract curve dentro da lente de melhoria mútua passando pela dotação.** Subconjunto da contract curve.
- [ ] **Frase-martelo:** "Núcleo é Pareto + voluntariedade. Mais restrito que Pareto puro."
- [ ] **[30s extras — anunciar slide #29 (núcleo encolhe com réplica):**] *"Debreu & Scarf 1963 — quando $I$ cresce via réplica, núcleo $\subseteq$ EC no limite. Não vamos provar; vai aparecer no quiz pós-aula 🔴🔴 (Q9). Quem quiser ver a prova: J-R §5.3."* Função: dar âncora pública para a Q9 da pós-aula sem alongar Bloco 1.

### 1.e. Ponte (~5 min)

- [ ] "Pareto e núcleo são *conjuntos* de alocações. Mercado escolhe **uma** dessas alocações via *preços*. Bloco 2."

> **Armadilha a sinalizar (Bloco 1.c):** alunos confundem "tangência ⇒ Pareto" (sentido pleno) com "Pareto ⇒ tangência" (vale apenas no interior). Em fronteira (algum $x_i = 0$), Pareto pode não ter tangência. Sinalizar e seguir.

---

## Pausa 1 (10 min, 20:15–20:25)

---

## Bloco 2 — Equilíbrio competitivo + Walras + cálculo CD (35 min, 20:25–21:00)

### 2.a. Tomadores de preço, UMP individual, excesso de demanda (~7 min)

- [ ] **Quadro:** preço $p = (p_1, p_2) \ge 0$, $p \neq 0$. Renda inicial $m^i = p\cdot \omega^i$.
- [ ] **UMP em $i$:** $x^i(p) \in \arg\max u^i(x^i)$ s.a. $p\cdot x^i \le p\cdot \omega^i$, $x^i \ge 0$.
- [ ] **Excesso de demanda individual:** $z^i(p) = x^i(p) - \omega^i$.
- [ ] **Excesso agregado:** $z(p) = \sum_i z^i(p)$.
- [ ] **Frase-martelo:** "Excesso de demanda é um vetor: positivo onde quer comprar mais; negativo onde quer vender."

### 2.b. Lei de Walras — derivação rápida (~6 min)

- [ ] **Quadro:** assumir LNS ⇒ cada UMP individual exausta orçamento: $p\cdot x^i(p) = p\cdot \omega^i$.
- [ ] **Logo:** $p\cdot z^i(p) = p\cdot x^i(p) - p\cdot \omega^i = 0$ para cada $i$.
- [ ] **Somar:** $p\cdot z(p) = \sum_i p\cdot z^i(p) = 0$. **Lei de Walras.**
- [ ] **Implicação operacional em $L=2$:** zerar $z_1 = 0$ ⇒ $z_2 = 0$ automaticamente. **"Em $L$ bens, $L-1$ equações de market-clearing são suficientes."**
- [ ] **Homogeneidade grau 0:** $z(\lambda p) = z(p)$ ⇒ podemos normalizar (ex.: $p_2 = 1$ numerário).

### 2.c. Equilíbrio competitivo — definição (~5 min)

- [ ] **Definição.** EC = par $(p^*, x^*)$ com $p^* \ge 0$, $p^* \neq 0$, tal que: (i) cada $x^{*i}$ resolve UMP em $p^*$; (ii) $\sum_i x^{*i} = \sum_i \omega^i$.
- [ ] **Equivalente:** $z(p^*) = 0$ (em $L=2$, basta um mercado por Walras).
- [ ] **Frase-martelo:** "Tomadores de preço + viabilidade. Não há leiloeiro implícito; o $p^*$ é objeto matemático."

### 2.d. Cálculo numérico em CD simétrica (~10 min)

- [ ] **Setup:** $u^A = u^B = x_1^{1/2}x_2^{1/2}$. $\omega^A = (3, 1)$, $\omega^B = (1, 3)$. Total $\bar\omega = (4, 4)$.
- [ ] **Demanda CD:** $x_1^A(p) = m^A/(2 p_1) = (3 p_1 + p_2)/(2 p_1)$. Idem para $B$.
- [ ] **Mercado 1:** $x_1^A + x_1^B = 4$. Substitui:
  $$\frac{3 p_1 + p_2}{2 p_1} + \frac{p_1 + 3 p_2}{2 p_1} = \frac{4 p_1 + 4 p_2}{2 p_1} = 2 + \frac{2 p_2}{p_1} = 4 \implies \frac{p_2}{p_1} = 1.$$
- [ ] **Equilíbrio:** $p^* = (1, 1)$ (numerário $p_2 = 1$). Alocação: $x^{A*} = (2, 2)$, $x^{B*} = (2, 2)$.
- [ ] **Verificação:** $\text{TMS}^A = x_2^A/x_1^A = 1$. $\text{TMS}^B = 1$. Tangência. ✓ Walras: $z_1 = 0$ implica $z_2 = 0$. ✓

### 2.e. Cálculo numérico em CD assimétrica (~7 min)

- [ ] **Setup canônico do bundle:** $u^A = x_1^{2/3}x_2^{1/3}$, $u^B = x_1^{1/3}x_2^{2/3}$. $\omega^A = (1, 4)$, $\omega^B = (3, 0)$. Total $(4, 4)$. Numerário $p_2 = 1$.
- [ ] **Demanda:** $x_1^A = (2/3)(p_1 + 4)/p_1 = 2/3 + 8/(3 p_1)$. $x_1^B = (1/3)\cdot 3 p_1/p_1 = 1$ — **destacar o cancelamento** ($B$ só tem bem 1, então renda é proporcional a $p_1$ e demanda fica constante).
- [ ] **Mercado 1:** $2/3 + 8/(3 p_1) + 1 = 4 \implies 8/(3 p_1) = 7/3 \implies p_1^* = 8/7$.
- [ ] **Alocação:** $x^A = (3,\; 12/7)$, $x^B = (1,\; 16/7)$. Verificar bem 2: $12/7 + 16/7 = 4$. ✓ $\text{TMS}^* = 8/7$ em ambos. ✓
- [ ] **Frase-martelo:** "Preço relativo no EC reflete preferências **e** dotações. Não há mágica — é a álgebra do market-clearing."

### 2.f. Cálculo numérico em CD + Leontief (~5 min)

- [ ] **Setup:** $u^A = x_1^{1/2}x_2^{1/2}$ (CD), $u^B = \min\{x_1, x_2\}$ (Leontief). $\omega^A = (10, 0)$, $\omega^B = (0, 10)$. $p_2 = 1$.
- [ ] **Demanda CD:** $x_1^A = m^A/(2 p_1) = 10 p_1/(2 p_1) = 5$ — **constante** (porque toda renda de $A$ vem do bem 1, igualando o efeito-preço).
- [ ] **Demanda Leontief:** $x_1^B = x_2^B$ por UMP em forma de "L"; orçamento ⇒ $(p_1 + 1)x_1^B = 10 \implies x_1^B = 10/(p_1 + 1)$.
- [ ] **Mercado 1:** $5 + 10/(p_1 + 1) = 10 \implies p_1^* = 1$. Alocação: $x^A = x^B = (5, 5)$.
- [ ] **Por que esse exemplo:** prepara Q4 do quiz pós (Leontief) e Exercício avaliativo 3, sem deixar Leontief "novo" em prova.

> **Armadilha a sinalizar (Bloco 2.b):** "lei de Walras vale só em equilíbrio". **Falso.** Walras vale em todo $p \gg 0$ (ou onde demandas estão definidas), porque vem do exauste do orçamento individual. EC exige $z(p^*) = 0$, que é mais forte. Walras é identidade; EC é solução.

---

## Bloco 3 — 1º TBE + 2º TBE preliminar (35 min, 21:00–21:35)

### 3.a. Hipóteses (~5 min)

- [ ] **Não-saciedade local (LNS):** definição + intuição. Mais geral que monotonicidade estrita.
- [ ] **Por que LNS?** Para garantir exauste do orçamento individual + impossibilidade de "saciedade" em pacote viável.
- [ ] **Frase-martelo:** "LNS é o mínimo axiomático. Sem ela, mercado pode não esgotar valor."

### 3.b. Demonstração do 1º TBE — linha-a-linha (~15 min)

- [ ] **Enunciado.** Em troca pura com LNS, todo EC $(p^*, x^*)$ é Pareto-eficiente.
- [ ] **Por contradição.** Suponha que ∃ $\tilde x$ viável com $u^i(\tilde x^i) \ge u^i(x^{*i})$ para todo $i$, com desigualdade estrita para algum $j$.
- [ ] **Passo 1.** Para o $j$ estritamente melhor: $\tilde x^j$ deve estar fora do orçamento, ou seja $p^*\cdot \tilde x^j > p^*\cdot \omega^j$. Razão: se cabia no orçamento ($p^*\cdot \tilde x^j \le p^*\cdot \omega^j$), então $x^{*j}$ não maximizava. **Quadro: escrever isso explícito.**
- [ ] **Passo 2.** Para $i \neq j$ (fracamente melhores): $p^*\cdot \tilde x^i \ge p^*\cdot \omega^i$. **Aqui LNS entra**: se $p^*\cdot \tilde x^i < p^*\cdot \omega^i$, vizinhança de $\tilde x^i$ tem $\hat x^i$ estritamente preferida por LNS, com $p^*\cdot \hat x^i \le p^*\cdot \omega^i$ (continuidade). Mas $u^i(\hat x^i) > u^i(\tilde x^i) \ge u^i(x^{*i})$, contradiz UMP de $x^{*i}$.
- [ ] **Passo 3.** Somar passos 1 e 2: $\sum_i p^*\cdot \tilde x^i > \sum_i p^*\cdot \omega^i$. Mas $\tilde x$ viável: $\sum_i \tilde x^i = \sum_i \omega^i$, logo $\sum_i p^*\cdot \tilde x^i = \sum_i p^*\cdot \omega^i$. **Contradição.** $\blacksquare$
- [ ] **Frase-martelo:** "Pareto-superior precisa custar mais que dotação para todos. Mas tudo somado custa exatamente a dotação. Contradição."

### 3.c. O papel exato de LNS (~5 min)

- [ ] **Onde LNS aparece:** apenas no passo 2 — para os $i$ fracamente melhores. Sem LNS, o passo 2 quebra; o agregado falha.
- [ ] **Contraexemplo em quadro:** $u^A(x_1, x_2) = \min\{x_1, 1\} + x_2$ — bem 1 satura em $x_1 = 1$. Em economia patológica, EC pode existir com alocação não-Pareto-eficiente.
- [ ] **Frase-martelo:** "Sem LNS, mercado não esgota o que vale. Patologia é teórica, mas a hipótese é genuína."

### 3.d. 2º TBE preliminar (~10 min)

- [ ] **Enunciado intuitivo.** Sob convexidade (preferências convexas + viabilidade convexa), toda alocação Pareto-eficiente é EC após **redistribuição lump-sum** das dotações.
- [ ] **Implicação.** Mercado pode atingir qualquer Pareto-eficiente desejado, contanto que se aceite redistribuir lump-sum.
- [ ] **Hipótese-chave: convexidade** — necessária para Hahn-Banach (separação de conjuntos convexos por hiperplano = preço). Sem convexidade, contraexemplos: retornos crescentes, indivisibilidades.
- [ ] **Frase-martelo:** "1º TBE: mercado é Pareto. 2º TBE: Pareto pode ser implementado por mercado — se você puder redistribuir a dotação inicial."
- [ ] **Sinalizar:** prova rigorosa via Hahn-Banach é Aula 6. Hoje é teaser.

> **Armadilha a sinalizar (Bloco 3.d):** "1º TBE diz que EC é justo." **Falso.** 1º TBE diz que EC é eficiente; eficiência ≠ justiça. EC com $\omega^A = (10, 0)$, $\omega^B = (0, 10)$ é Pareto-eficiente, mas pode ser muito desigual. 2º TBE separa eficiência de equidade explicitamente.

---

## Pausa 2 (10 min, 21:35–21:45)

---

## Bloco 4 — Box Brasil/Mundo + síntese aplicada (30 min, 21:45–22:15)

### 4.a. Box Mundo — Mercado de cotas de carbono (cap-and-trade) como troca pura (~10 min)

- [ ] **Setup.** EU ETS (European Emissions Trading System), criado em 2005, é o mais antigo grande sistema de cotas. Empresas recebem dotação inicial de cotas de emissão; podem vender/comprar entre si.
- [ ] **Estrutura Edgeworth:** dois tipos de empresas — "limpas" (custo marginal de redução baixo, vendem cotas) e "sujas" (custo marginal alto, compram cotas). Total de cotas é fixo (recurso). Preço de mercado equilibra.
- [ ] **Lei de Walras opera:** quem vende cotas com $p\cdot z < 0$ em "cota" deve ter $p\cdot z > 0$ em algum outro bem (insumo, produto). Equilíbrio agregado.
- [ ] **1º TBE aplicado:** alocação resultante é Pareto-eficiente ENTRE as empresas (custo marginal de redução iguala-se ao preço de cota). Cap total é a "dotação de bem ambiental".
- [ ] **Crítica:** 2º TBE diz que pode-se atingir Pareto-eficiência diferente redistribuindo as cotas iniciais (grandfathering vs. leilão). Implicação política real.
- [ ] **Referência:** Ellerman & Buchner (2007), *Review of Environmental Economics and Policy* 1(1): 66–87. doi:10.1093/reep/rem003

### 4.b. Box Brasil — RenovaBio / CBIOs (~8 min)

- [ ] **Setup.** RenovaBio (Lei 13.576/2017): distribuidoras de combustíveis fósseis (Petrobras Distribuidora, Raízen Distribuição, Ipiranga, etc.) têm meta anual obrigatória de descarbonização; cumprem comprando **CBIOs** (Créditos de Descarbonização) emitidos por produtores de etanol/biodiesel.
- [ ] **Estrutura Edgeworth bipartido genuína:** distribuidoras = "consumidoras" de CBIOs (precisam para cumprir meta); produtores de etanol = "ofertantes" (geram CBIOs na produção sustentável). Preço único em **leilão B3** = $p^*$ walrasiano. Total de CBIOs no ano é função da produção sustentável agregada.
- [ ] **1º TBE em ação:** mercado descentralizado replica solução do planejador central — é mais barato cumprir meta agregada via troca do que cada distribuidora reduzir emissão própria. CBIO equilibra custo marginal de descarbonização entre os agentes.
- [ ] **2º TBE político:** alocação inicial das metas (proporcional à participação no mercado de combustíveis) é redistribuição lump-sum — afeta distribuição, não eficiência.
- [ ] **Conexão com EU ETS (slide anterior):** estrutura matemática idêntica; RenovaBio é a versão brasileira aplicada a transporte. Volume 2024: ~46 milhões de CBIOs negociados. Preço médio R$ 90–120/CBIO.
- [ ] **Referência:** ANP — `gov.br/anp` (Programa Nacional de Política de Biocombustíveis). Ribeiro et al. (2022), *Biofuels, Bioproducts and Biorefining*, doi:10.1002/bbb.2326.

### 4.c. Síntese aplicada (~7 min)

- [ ] **Quadro-resumo:** lei de Walras = identidade contábil. 1º TBE = eficiência de mercado. 2º TBE = mercado pode ser direcionado via redistribuição de dotações. **Os três pilares da Aula 4.**
- [ ] **Limites já anunciados:** sem LNS, 1º TBE falha. Sem convexidade, 2º TBE falha. Aulas 5–9 vão completar com produção, contingência, externalidades.
- [ ] **Frase-martelo:** "EG é a estrutura. Aplicações empíricas mostram que estrutura tem corpo."

---

## Bloco 5 — Síntese + ponte para Aula 5 (15 min, 22:15–22:30)

### 5.a. Síntese em 3 frases (~5 min)

- [ ] **(1)** Edgeworth: visualização $2\times 2$ da economia de troca pura. Pareto = tangência. Núcleo = Pareto + voluntariedade.
- [ ] **(2)** Walras: $p\cdot z(p) = 0$ é identidade contábil que segue de UMP individual + LNS. EC: $z(p^*) = 0$.
- [ ] **(3)** 1º TBE: EC é Pareto-eficiente sob LNS. 2º TBE preliminar: Pareto-eficiente é EC após redistribuição lump-sum, sob convexidade.

### 5.b. Ponte para Aula 5 — produção (~7 min)

- [ ] **Pergunta da próxima aula.** "Adicionamos firmas. Cada firma tem tecnologia $Y_f \subset \mathbb{R}^L$ (input-output). Equilíbrio agora é $(p^*, x^*, y^*)$ com firmas maximizando lucro e consumidores recebendo dividendos."
- [ ] **Quadro: estrutura.** Demanda agregada $\sum x^i$ vs. dotação + oferta $\sum \omega^i + \sum y^f$. Walras estendido. Preços guiam tanto consumo quanto produção.
- [ ] **1º TBE com produção** sobrevive sob LNS + tecnologias com algumas hipóteses (não retornos crescentes na agregada). Aula 5 detalha.
- [ ] **Aula 6:** Arrow-Debreu fechado — bens contingentes, mercados completos, existência via Brouwer.
- [ ] **Frase-martelo:** "Aula 4 abre o ferramental. Aula 5 acrescenta produção. Aula 6 fecha com existência."

### 5.c. Lembretes operacionais (~3 min)

- [ ] **Calendário:** quiz pós-aula 4 + exercícios avaliativos abertos desde 14/05 madrugada. **Prazo: quarta 20/05 18h.** Gabarito quinta 21/05 00:00.
- [ ] **Pré-monitoria 2** (cobre Aula 4 — EG trocas) abre **sáb 16/05 12h**. Monitoria sáb 23/05 10h.
- [ ] **Pré-aula 5** (EG com produção) abre **qui 14/05 madrugada**.

---

## Materiais e recursos (checklist do professor)

- [ ] Slides `reveal.js` (`aula_4/slides/aula-04.html` renderizado).
- [ ] Quadro com 3 cores: verde para curvas de indiferença, vermelho para preços/orçamento, preto para argumentos do 1º TBE.
- [ ] **Lápis de cor para a turma** (azul para $A$, vermelho para $B$) — distribui na entrada para Bloco 1.
- [ ] Acesso ao dashboard da plataforma para triagem do Bloco 0.
- [ ] Lista de chamada.

---

## Notas para o professor (autocalibração em tempo real)

- **Se Bloco 1 (Edgeworth) trava:** reduzir 1.d (núcleo) para 4 min e preservar tangência. Núcleo pode ser cortado para a monitoria.
- **Se Walras (Bloco 2.b) gera dúvida:** parar e refazer no caso $L=2$ explícito. "Demanda total = dotação total" é o que acontece; Walras é a identidade dual a isso.
- **Se a prova do 1º TBE (Bloco 3.b) trava:** simplificar para $I=2$ e fazer no quadro com nomes ($A$, $B$) em vez de índices. A estrutura é igual; só é mais palpável.
- **Se Box Brasil/Mundo estoura:** cortar Box-Mundo (EU ETS) e manter só Box-Brasil (RenovaBio/CBIOs) — concreto, brasileiro, e estrutura Edgeworth genuína.
- **Se Alberto está presente:** ele cobre Bloco 1.d (núcleo) enquanto Darcio circula; em troca, Darcio cobre o passo 3 da prova do 1º TBE com mais profundidade.
- **Sobre o 2º TBE:** anunciar e seguir. Aula 6 prova rigorosamente. Hoje é teaser, não treino.

---

## Ganchos explícitos para a Pré-Monitoria 2 (com Alberto, sáb 23/05)

A monitoria 2 cobre Aula 4 (EG trocas). Da Aula 4 especificamente, deixar para Alberto:

- **Cálculo de EC em economia $2\times 2$ com várias formas funcionais** (CD assimétrica, Leontief, CES) — efeito comparativo de preferências.
- **Núcleo em economia com $I = 3$ consumidores e $L = 2$ bens** — coalizões não-triviais; mostrar shrinking do núcleo conforme cresce $I$.
- **Construção de contraexemplo** onde 1º TBE falha por violação de LNS.
- **2º TBE preliminar** com discussão informal das hipóteses de convexidade — o que significa "lump-sum" na prática (e por que não é implementável).
- **Aplicações empíricas**: leilão do Tesouro como mecanismo de price discovery; mercado de cotas de carbono como Edgeworth com bem-ambiental.

---

## Checagem cruzada com pré-aula

A pré-aula 4 cobre exatamente os mesmos conceitos em ritmo diferente. Aula presencial:
- **Aprofunda** a prova do 1º TBE (passos detalhados).
- **Contrasta** CD simétrica (saída clean) vs. assimétrica (preço relativo informativo).
- **Aplica** com Box Brasil/Mundo concretos.
- **Antecipa** Aula 5 (produção) e Aula 6 (Arrow-Debreu).

Quem fez a pré-aula entrega o Bloco 1 em 30 min e usa os 10 min restantes para discussão. Quem não fez, perde Bloco 1.b (construção da caixa).
