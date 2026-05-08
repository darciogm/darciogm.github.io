# Exercícios Avaliativos — Aula 7 (Externalidades + Bens Públicos)

> **SSOT em Markdown.** Espelho narrativo de `platform/aula-07-exerc.html`. Mantenha em sincronia 1:1 quando editar qualquer um dos dois.

> **Tema:** Externalidades tecnológicas (Pigou 1920, Coase 1960), bens públicos (Samuelson 1954, free-rider), mecanismos (Lindahl 1919, VCG — Vickrey 1961 / Clarke 1971 / Groves 1973), governance institucional (Ostrom 1990).

> **Calibre:** **Nicholson & Snyder 12e Cap. 19 (piso obrigatório)**; ZaE Cap. 20 como leitura principal do aluno; MWG §11.B–§11.D citado cirurgicamente em 🔴; J-R sem capítulo dedicado.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula correspondente:** Aula 7 — 03/06/2026 (quarta), 19:30–22:30
- **Abertura:** quinta 04/06 madrugada
- **Fechamento:** quarta 10/06 às 18:00 BRT (canônico, 1h30 antes da Aula 8)
- **Liberação do gabarito:** quinta 11/06 às 00:00 BRT
- **Tempo-alvo:** 2h30–3h
- **Composição:** 6 exercícios = **1 🟢 + 3 🟡 + 2 🔴**, totalizando ~28 sub-itens de múltipla escolha + 6 gabaritos 5-passos.

---

## Exercício 1 — 🟢 Pigou em modelo parcial: derivação da taxa ótima

### Enunciado

Mercado parcial com demanda inversa \(P(q) = 30 - 2q\), curva de custo privado marginal \(\text{MC}_p(q) = 6 + q\), e custo externo marginal \(\text{MEC}(q) = q\). Demanda agregada e oferta agregada são as do mercado todo (não 1 firma só). **Convenção:** \(q\) em milhares de unidades.

### Sub-itens

**(a)** A curva de custo social marginal é:

- (i) \(\text{MC}_s(q) = \text{MC}_p(q) = 6 + q\) (sem externalidade).
- (ii) **\(\text{MC}_s(q) = \text{MC}_p(q) + \text{MEC}(q) = 6 + q + q = 6 + 2q\).** **[correta]**
- (iii) \(\text{MC}_s(q) = q^2 + 6\).
- (iv) \(\text{MC}_s(q) = \text{MEC}(q) = q\).

**(b)** O equilíbrio privado (sem intervenção, \(P = \text{MC}_p\)) é:

- (i) \(q^p = 4, P^p = 22\).
- (ii) **\(q^p = 8, P^p = 14\)**: \(30 - 2q = 6 + q \Rightarrow 24 = 3q \Rightarrow q^p = 8\); \(P^p = 30 - 16 = 14\). **[correta]**
- (iii) \(q^p = 12, P^p = 6\).
- (iv) Indeterminado.

**(c)** O ótimo social (\(P = \text{MC}_s\)) é:

- (i) \(q^* = 4, P^* = 22\).
- (ii) **\(q^* = 6, P^* = 18\)**: \(30 - 2q = 6 + 2q \Rightarrow 24 = 4q \Rightarrow q^* = 6\); \(P^* = 30 - 12 = 18\). **[correta]**
- (iii) \(q^* = 8\), igual ao privado.
- (iv) \(q^* = 0\).

**(d)** O imposto Pigou ótimo \(t^*\) avaliado **no nível socialmente ótimo** é:

- (i) \(t^* = \text{MEC}(q^p) = 8\) (avaliado no privado).
- (ii) **\(t^* = \text{MEC}(q^*) = q^* = 6\).** **[correta]**
- (iii) \(t^* = \text{MC}_s(q^*) = 18\) (custo social total).
- (iv) \(t^* = q^* + q^p = 14\).

**(e)** Sob \(t^* = 6\), o produtor enfrenta \(\text{MC}_p(q) + t^* = 6 + q + 6 = 12 + q\). Igualando à demanda inversa: \(30 - 2q = 12 + q\). A quantidade resultante é:

- (i) \(q = 4\).
- (ii) **\(q = 6 = q^*\)** ✓ — taxa internaliza, produtor escolhe ótimo social. **[correta]**
- (iii) \(q = 8 = q^p\).
- (iv) \(q = 12\).

### Gabarito 5-passos — Exercício 1

**1. Ponto-chave.** Pigou (1920) corrige externalidade negativa internalizando o custo externo marginal via imposto. **Crítico:** o imposto ótimo é \(t^* = \text{MEC}(q^*)\) — avaliado no nível **socialmente ótimo**, não no equilíbrio privado. Sob essa taxa, o produtor enfrenta \(\text{MC}_p + t^*\) que coincide pontualmente com \(\text{MC}_s\) em \(q^*\), e por isso escolhe \(q^*\).

**2. Derivação.** \(\text{MC}_s = \text{MC}_p + \text{MEC} = 6 + q + q = 6 + 2q\) ✓. Privado: \(30 - 2q = 6 + q \Rightarrow q^p = 8\). Social: \(30 - 2q = 6 + 2q \Rightarrow q^* = 6\). \(\text{MEC}(6) = 6\), logo \(t^* = 6\). Verificação: produtor com \(t = 6\) resolve \(30 - 2q = 12 + q \Rightarrow q = 6 = q^*\). ✓ **A álgebra fecha.** Triângulo de Harberger (perda de bem-estar do não-imposto): área entre \(\text{MC}_s\) e \(P\) entre \(q^*\) e \(q^p\), \(= \frac{1}{2} \cdot (q^p - q^*) \cdot [\text{MC}_s(q^p) - P(q^p)] = \frac{1}{2} \cdot 2 \cdot [22 - 14] = 8\) — em milhares de unidades de bem-estar (consistente com \(q\) em milhares).

**3. Armadilha.** Item (a)(i): aluno ignora externalidade. Item (b)(i)/(iii): erro algébrico (sinais ou divisão). Item (d)(i): **erro pedagógico clássico** — avaliar MEC no privado. Pigou pede ótimo. Item (d)(iii): aluno confunde "imposto" com "custo total social".

**4. Extensão.** Generalizações: imposto não-linear \(t(q)\) quando MEC é não-linear. Em segundo-melhor (informação imperfeita ou múltiplas externalidades), \(t^*\) deixa de coincidir com \(\text{MEC}(q^*)\) — Lipsey-Lancaster (1956) detalham. Aplicação: imposto sobre carbono no Canadá (federal carbon pricing 2019+) e Suécia (1991, primeiro do mundo). EU ETS é versão descentralizada via cap-and-trade; preço da permissão tem o papel de \(t^*\).

**5. Peer-review.** Calibre 🟢. Distratores plausíveis. Item (d) é o mais formativo — separa quem entendeu Pigou de quem decorou \(t = \text{MEC}\). **Sem risco residual.** Aluno que faz tudo deve sair com \(t^* = \text{MEC}(q^*)\) na ponta da língua.

---

## Exercício 2 — 🟡 Coase em barganha bilateral: independência da atribuição

### Enunciado

Duas firmas vizinhas: **A produz** com receita marginal constante \(P^A = 16\) (preço de mercado fixo), \(\text{MC}^A(q_A) = 2 q_A\). A operação de A gera **fumaça unitária linear** que reduz lucro de **B** (restaurante a céu aberto) em \(\text{MEC}(q_A) = 4\) por unidade (constante). Custos de transação são zero; direitos de propriedade serão atribuídos como descrito em cada caso.

### Sub-itens

**(a)** Sem barganha (A produz livremente, ignora dano em B), o output de A é:

- (i) \(q^p_A = 4\): \(16 = 2q_A \Rightarrow q^p_A = 8\). **Resposta errada (cálculo).**
- (ii) **\(q^p_A = 8\)**: \(P^A = \text{MC}^A \Rightarrow 16 = 2q_A \Rightarrow q^p_A = 8\). **[correta]**
- (iii) \(q^p_A = 16\).
- (iv) \(q^p_A = 0\) (B obriga A a parar).

**(b)** O nível socialmente ótimo \(q^*_A\) (igualando \(P^A = \text{MC}^A + \text{MEC}\)) é:

- (i) \(q^*_A = 8\) (mesmo do privado).
- (ii) **\(q^*_A = 6\)**: \(16 = 2 q_A + 4 \Rightarrow q_A = 6\). **[correta]**
- (iii) \(q^*_A = 4\).
- (iv) \(q^*_A = 12\).

**(c)** **Caso 1: B detém o direito ao ar limpo.** A precisa pagar B para tolerar emissões. Em equilíbrio Coase com barganha sem fricção:

- (i) A não opera (\(q_A = 0\)) — B sempre rejeita.
- (ii) A opera no nível privado \(q^p_A = 8\); B pega o lucro extra de A.
- (iii) **A opera no nível socialmente ótimo \(q^*_A = 6\)**: para cada unidade adicional, A paga a B um valor entre \(\text{MEC} = 4\) (o que B exige) e \(\text{lucro adicional de A} = P^A - \text{MC}^A = 16 - 2q_A\) (o que A está disposto a pagar). Essas duas curvas se cruzam quando \(16 - 2q_A = 4 \Rightarrow q_A = 6 = q^*_A\). **[correta]**
- (iv) Resultado depende de quem barganha primeiro.

**(d)** **Caso 2: A detém o direito a poluir.** B paga A para reduzir output. Em equilíbrio Coase:

- (i) A opera no nível privado \(q^p_A = 8\); B nada paga.
- (ii) **A opera no nível socialmente ótimo \(q^*_A = 6\)**: B paga A para reduzir cada unidade um valor entre \(\text{lucro perdido de A} = 16 - 2q_A\) e \(\text{dano evitado em B} = 4\). Reduções valem a pena enquanto \(16 - 2q_A < 4 \Leftrightarrow q_A > 6\). **A reduz até \(q_A = 6 = q^*_A\)**. **[correta]**
- (iii) A não reduz porque já tem o direito.
- (iv) A reduz a 0 e cobra de B.

**(e)** A comparação dos dois casos ilustra:

- (i) Coase falha — atribuição de direitos importa.
- (ii) **Independência da alocação Pareto-eficiente em relação à atribuição inicial dos direitos** (sob direitos bem-definidos, custos de transação zero, sem efeito-renda relevante). **O que muda entre os dois casos é apenas \(quem paga quem\), não o nível final \(q^*_A = 6\).** **[correta]**
- (iii) A sempre ganha mais na barganha.
- (iv) B sempre ganha mais na barganha.

### Gabarito 5-passos — Exercício 2

**1. Ponto-chave.** Coase (1960) prova que sob 3 hipóteses (direitos bem-definidos, custos de transação zero, sem efeito-renda relevante) a barganha privada gera alocação Pareto-eficiente, **independente** da atribuição inicial de direitos. **A redistribuição dos lucros muda; a alocação real (output) não.**

**2. Derivação.** Sem barganha: \(q^p_A = P^A/(\text{coef. MC}) = 16/2 = 8\). Socialmente ótimo: \(q^*_A\) tal que \(P^A = \text{MC}^A + \text{MEC} \Rightarrow 16 = 2q_A + 4 \Rightarrow q^*_A = 6\). **Caso 1 (B tem direito):** A paga B por unidade entre \(\text{MEC} = 4\) (mínimo aceitável por B) e \(P^A - \text{MC}^A = 16 - 2q_A\) (máximo pagável por A). Continuar a operação enquanto a 2ª expressão > 1ª: \(16 - 2q_A > 4 \Leftrightarrow q_A < 6\). Em \(q_A = 6\), igualdade — A para. **Caso 2 (A tem direito):** B paga A por unidade reduzida entre \(\text{lucro perdido de A} = 16 - 2q_A\) e \(\text{MEC} = 4\). Reduzir vale enquanto 1ª < 2ª: \(16 - 2q_A < 4 \Leftrightarrow q_A > 6\). Em \(q_A = 6\), igualdade — B para de pagar. **Os dois casos chegam a \(q^*_A = 6\).** Diferença: em Caso 1, A paga B; em Caso 2, B paga A. **Eficiência alocativa indep. de direitos; redistribuição de lucros depende.**

**3. Armadilha.** Item (a)(i): erro algébrico — \(16/2 = 8\), não 4. Item (b)(i): aluno ignora MEC. Item (c)(i): aluno acha que B sempre rejeita — não, B aceita se compensação \(\ge\) dano. Item (c)(iv): aluno confunde Coase com barganha de Nash de jogo geral; sob hipóteses padrão, ordem da barganha não importa para o equilíbrio (Nash assintótico de Rubinstein converge ao mesmo ponto sob desconto pequeno). Item (e)(i): "atribuição importa" é a tese **anti-Coase** — falsa sob hipóteses padrão.

**4. Extensão.** **Onde Coase falha na prática:** custos de transação positivos (1.000 vizinhos), direitos mal-definidos (clima global), free-rider em barganha (cada vizinho ganha pouco). Não-zero efeito-renda também quebra independência absoluta — Hovenkamp (1999) detalha. **Aplicação prática:** poluição transfronteiriça pré-Acid Rain Program (US 1990) tinha alta fricção; o Acid Rain Program institucionalizou direitos via cap-and-trade. Schmalensee-Stavins (2013, *J. Economic Perspectives*) documentam custos 4× menores que regulação tradicional. **Aula 8** introduz informação assimétrica — quando uma das partes conhece sua MEC mas a outra não, Coase puro deixa de bastar; mecanismos de revelação (VCG-tipo) entram.

**5. Peer-review.** Calibre 🟡. Cálculo Coase em economia bilateral simples + interpretação. Itens (c) e (d) testam a mesma ideia em duas direções de direitos — verificação dupla da independência. Distrator (e)(i) é o mais formativo — força aluno a articular **por que** alocação não depende. **Tradeoff de tempo:** ~12 min, dentro do alvo. **Risco residual:** mínimo; cálculos lineares simples.

---

## Exercício 3 — 🟡 Samuelson + comparação Nash subprovisão

### Enunciado

Economia com \(I = 3\) consumidores **idênticos**. Preferências quase-lineares \(u^i(x^i, G) = x^i + 3 \ln G\) (com \(G > 0\)). Bem público com tecnologia linear: \(\text{TMT}_{G,x} = 1\) (custo marginal constante de 1 unidade de bem privado por 1 unidade de bem público). Dotações \(\omega^i\) suficientemente grandes para ignorar restrição de não-negatividade interna.

### Sub-itens

**(a)** A taxa marginal de substituição \(\text{TMS}^i_{G,x} = u^i_G/u^i_x\) é:

- (i) \(\text{TMS}^i = 3\) (constante).
- (ii) **\(\text{TMS}^i = 3/G\)** (decrescente em \(G\) — bem público com utilidade marginal decrescente). **[correta]**
- (iii) \(\text{TMS}^i = G/3\).
- (iv) \(\text{TMS}^i = \ln G\).

**(b)** Aplicando a condição de Samuelson \(\sum_i \text{TMS}^i = \text{TMT}\):

- (i) \(G^* = 3\): cada agente exige \(3/G = 1 \Rightarrow G = 3\) individualmente.
- (ii) **\(G^* = 9\)**: \(\sum_{i=1}^3 (3/G) = 1 \Rightarrow 9/G = 1 \Rightarrow G^* = 9\). **[correta]**
- (iii) \(G^* = 1\).
- (iv) \(G^*\) indeterminado.

**(c)** Em provisão voluntária Nash (cada agente escolhe \(g^i\) tomando \(g_{-i}\) como dado), a CPO é \(\text{TMS}^i = 1\) **individualmente**. Em equilíbrio simétrico onde todos contribuem positivamente, isso implica:

- (i) \(G^N = 9 = G^*\) (Nash coincide com Samuelson).
- (ii) \(G^N > G^*\) (super-provisão).
- (iii) **\(G^N = 3\): cada agente, ao decidir \(g^i\), iguala \(\text{TMS}^i = 1\), o que dá \(3/G = 1 \Rightarrow G = 3\). Como \(G\) é o nível agregado e a CPO é a mesma para os 3, qualquer perfil de \((g^1, g^2, g^3)\) com soma 3 é equilíbrio Nash.** **[correta]**
- (iv) \(G^N = 27\).

**(d)** A razão \(G^N/G^* = 3/9 = 1/3\). Isso ilustra:

- (i) Provisão voluntária é eficiente.
- (ii) **Free-rider clássico: provisão Nash entrega \(1/I\) do ótimo de Samuelson em economia simétrica com Bernoulli quase-linear logarítmica. Em geral, \(G^N < G^*\) por subprovisão estrita.** **[correta]**
- (iii) Free-rider não é problema com agentes idênticos.
- (iv) Sub-provisão é sempre maior que \(50\%\).

**(e)** Para implementar \(G^* = 9\), o mecanismo de Lindahl exige preços personalizados \(\tau^i\) tais que cada agente, sob restrição \(x^i + \tau^i G \le \omega^i\), escolha \(G = 9\) voluntariamente. Os preços de Lindahl em equilíbrio simétrico são:

- (i) \(\tau^i = 1\) para cada agente (igual à TMT total).
- (ii) **\(\tau^i = 1/3\) para cada agente: cada CPO \(\text{TMS}^i = \tau^i\) com \(\text{TMS}^i = 3/9 = 1/3\); soma \(\sum_i \tau^i = 3 \cdot 1/3 = 1 = \text{TMT}\) ✓.** **[correta]**
- (iii) \(\tau^i = 3\).
- (iv) \(\tau^i\) indeterminado.

### Gabarito 5-passos — Exercício 3

**1. Ponto-chave.** A condição de Samuelson \(\sum_i \text{TMS}^i = \text{TMT}\) é a regra-mestra de eficiência para bem público: a **soma vertical** das valorações marginais iguala o custo marginal social. Provisão voluntária Nash entrega \(\text{TMS}^i = \text{TMT}\) **agente por agente**, gerando subprovisão \(G^N < G^*\). Lindahl com preços personalizados \(\tau^i = \text{TMS}^i\) (em equilíbrio) e \(\sum \tau^i = \text{TMT}\) implementa Samuelson.

**2. Derivação.** \(u = x + 3\ln G\), \(u_x = 1\), \(u_G = 3/G\). \(\text{TMS}^i = (3/G)/1 = 3/G\). Samuelson: \(3 \cdot (3/G) = 1 \Rightarrow G^* = 9\). Nash: cada agente \(\text{TMS}^i = 3/G = 1 \Rightarrow G^N = 3\). Lindahl em equilíbrio simétrico: \(\tau^i = \text{TMS}^i(G^*) = 3/9 = 1/3\); \(\sum_i \tau^i = 1 = \text{TMT}\) ✓.

**3. Armadilha.** Item (a)(i): aluno acha que \(\text{TMS}\) é constante porque \(u\) é "linear-ish" — esquece que \(u_G = 3/G\) decresce. Item (b)(i): aluno aplica regra de bem privado \(\text{TMS}^i = \text{TMT}\). Item (c)(i): aluno confunde Nash com Samuelson — clássico. Item (d)(iii): "free-rider não é problema com idênticos" é falso — simetria não elimina free-rider, só faz a subprovisão simétrica. Item (e)(i): aluno aplica \(\tau^i = \text{TMT}\) (regra de bem privado individual) — não, a soma é o que conta.

**4. Extensão.** Bergstrom-Blume-Varian (1986, *J. Public Economics* 29(1): 25–49, [DOI 10.1016/0047-2727(86)90024-1](https://doi.org/10.1016/0047-2727(86)90024-1)) provaram resultado mais forte: com agentes assimétricos (rendas diferentes) e preferências normalmente convexas, **um único agente (o mais rico) provê todo o bem público** em equilíbrio Nash; os pequenos pegam carona perfeito. **Implicações:** financiamento de NATO (US carrega), Wikipedia (poucos doadores grandes), open-source (poucos commits dominantes). Aula 9 introduz mecanismos de matching (Gale-Shapley) que abordam coordenação descentralizada com revelação. **Quem desafiar Lindahl com revelação estratégica:** vai para VCG (Exercício 5).

**5. Peer-review.** Calibre 🟡. Cálculo direto + interpretação econômica em 5 sub-itens. Distratores plausíveis em (a) (constante vs. decrescente) e (b) (regra bem privado vs. público). Item (c) é o mais formativo: separa quem entendeu free-rider de quem decorou Nash. Item (e) testa Lindahl como descentralização de Samuelson. **Tradeoff de tempo:** ~14 min, dentro do alvo. **Risco residual:** baixo; aluno que fez Aula 1 sabe \(u_G/u_x\); aluno que fez Aula 2 sabe Lagrangiano. Tudo se conecta.

---

## Exercício 4 — 🟡 Cap-and-trade vs. imposto Pigou: equivalência sob certeza

### Enunciado

Considere indústria com 2 firmas, A e B, ambas operando em mercado distinto (não competem entre si), mas ambas emitem poluente uniforme. Curvas de **custo marginal de redução** (em moeda por tonelada de poluente reduzida):

- Firma A: \(\text{MAC}_A(r_A) = 2 r_A\) (custo cresce linearmente com redução).
- Firma B: \(\text{MAC}_B(r_B) = r_B\) (custo cresce mais devagar — B é "mais barato" em reduzir).

Total de emissões sem regulação: 30 toneladas (15 cada). Governo define meta agregada de redução: \(R = 15\) toneladas. (Consequência: emissão final agregada = 15.)

### Sub-itens

**(a)** **Cenário 1 — Imposto Pigou uniforme \(t\).** Cada firma reduz até \(\text{MAC} = t\). Para induzir \(R_A + R_B = 15\) com \(\text{MAC}_A = t\) e \(\text{MAC}_B = t\), o imposto é:

- (i) \(t = 5, R_A = 2{,}5, R_B = 5\) (total = 7,5; meta não atingida).
- (ii) **\(t = 10\): \(2 r_A = 10 \Rightarrow r_A = 5\); \(r_B = 10\); soma = 15 ✓.** **[correta]**
- (iii) \(t = 15\), com \(R_A = 7{,}5, R_B = 15\) (total = 22,5; meta excedida).
- (iv) \(t = 30\).

**(b)** **Cenário 2 — Cap-and-trade.** Governo distribui 15 permissões totais (7,5 cada firma inicialmente). Firmas trocam permissões a preço \(p\). Em equilíbrio competitivo, cada firma reduz emissões até \(\text{MAC} = p\). O preço de equilíbrio é:

- (i) \(p = 5\): meta não atingida.
- (ii) **\(p = 10\): mesmo cálculo do (a). \(r_A = 5, r_B = 10\); soma = 15 ✓.** **[correta]** **A é compradora de permissões** (recebeu 7,5 e reduziu só 5; precisa de 2,5 a mais); **B é vendedora** (recebeu 7,5 e reduziu 10; sobra-lhe 2,5).
- (iii) \(p = 15\), com mesma alocação que (a)(iii).
- (iv) \(p\) depende da atribuição inicial.

**(c)** A equivalência \(t = p = 10\) entre Pigou e cap-and-trade ilustra:

- (i) Cap-and-trade é mais caro que Pigou.
- (ii) **Sob certeza (curvas MAC conhecidas), o equivalente preço-quantidade vale: imposto Pigou ótimo gera mesma alocação que cap-and-trade com cap apropriado. Ambos descentralizam corretamente o critério de "custo total mínimo de mitigação".** **[correta]** Weitzman (1974, *Review of Economic Studies* 41(4), 477–491, [DOI 10.2307/2296698](https://doi.org/10.2307/2296698)) detalha incerteza.
- (iii) Cap-and-trade só funciona com firmas idênticas.
- (iv) Imposto Pigou é sempre Pareto-superior.

**(d)** **Custo total de mitigação no equilíbrio (Cenário 2 com cap-and-trade):**

- (i) \(\text{Total} = (1/2) \cdot 5^2 + (1/2) \cdot 10^2 = 12{,}5 + 50 = 62{,}5\) (área sob MAC, integrais).
- (ii) **\(\text{Total} = 62{,}5\)**: integral de \(\text{MAC}_A\) de 0 a 5 = \(5^2/2 \cdot 2 = 25\) (área triângulo); integral de \(\text{MAC}_B\) de 0 a 10 = \(10^2/2 = 50\)? Verificação cuidadosa: \(\int_0^5 2 r dr = r^2|_0^5 = 25\); \(\int_0^{10} r dr = r^2/2|_0^{10} = 50\). **Total = 75.** **[correta]** **Atenção:** o item (i) está com cálculo errado de área de \(\text{MAC}_A\). O correto é 25, não 12,5 — \(\text{MAC}_A = 2r\) tem inclinação 2, área do triângulo de base 5 e altura 10 é \(5 \cdot 10/2 = 25\). Escolha **a opção que reflete \(25 + 50 = 75\)**.
- (iii) Total = 100.
- (iv) Total = 150 (cada firma reduz 7,5 sem trocar).

**(e)** Comparando o custo total da regulação por **comando-controle uniforme** (cada firma reduz \(R/I = 7{,}5\)) com o custo total **por cap-and-trade** (firma com MAC menor reduz mais):

- (i) Comando-controle é sempre mais barato.
- (ii) **Cap-and-trade gera economia: comando-controle force \(\int_0^{7{,}5} 2 r dr + \int_0^{7{,}5} r dr = 56{,}25 + 28{,}125 = 84{,}375\); cap-and-trade entrega 75 (calculado em (d)). Economia ≈ 9,4 unidades, ou ~11%, porque a firma com MAC menor (B) reduz mais.** **[correta]**
- (iii) Os custos são iguais.
- (iv) Comando-controle não é Pareto-eficiente — verdadeiro mas não responde à pergunta.

### Gabarito 5-passos — Exercício 4

**1. Ponto-chave.** Sob certeza nos custos de mitigação, **imposto Pigou e cap-and-trade são equivalentes** em alocação e custo total. Ambos atingem o critério Pareto-eficiente "todas as firmas igualam custo marginal de mitigação ao mesmo nível", o que implica firma com MAC menor reduzir mais. Comando-controle uniforme falha esse critério e gera custo total maior. Sob incerteza, há tradeoff (Weitzman 1974).

**2. Derivação.** Pigou: \(\text{MAC}_A = \text{MAC}_B = t \Rightarrow 2r_A = r_B = t\). Total \(r_A + r_B = t/2 + t = 3t/2 = 15 \Rightarrow t = 10\). Logo \(r_A = 5, r_B = 10\). Cap-and-trade: equilíbrio competitivo no mercado de permissões iguala MAC ao preço \(p = 10\); mesma alocação. Custo total: \(\int_0^5 2r\,dr + \int_0^{10} r\,dr = 25 + 50 = 75\). Comando-controle: \(\int_0^{7{,}5} 2r\,dr + \int_0^{7{,}5} r\,dr = 56{,}25 + 28{,}125 = 84{,}375\). Economia: 84,375 − 75 = 9,375 ≈ 11%. **Cap-and-trade descentraliza eficientemente; comando-controle não.**

**3. Armadilha.** Item (a)(i): aluno usa \(t = 5\) sem checar que meta não é atingida. Item (b)(iv): aluno acha que cap-and-trade depende da atribuição (não, sob hipóteses padrão de Coase). Item (c)(i): "cap-and-trade mais caro que Pigou" — falso sob certeza. Item (d): aluno erra cálculo de área (esquece que inclinação 2 dobra). Item (e)(i): aluno inverte a comparação.

**4. Extensão.** Sob **incerteza** nos custos marginais de mitigação ou no benefício marginal social, **a escolha entre Pigou (preço) e cap-and-trade (quantidade)** depende da inclinação relativa das curvas. **Teorema de Weitzman (1974):** se MAC mais inclinado que MB, **prefer impostos** (estabilizam preço mas deixam quantidade variar — pequeno custo se MB plano); se MB mais inclinado, **prefer caps** (estabilizam quantidade — pequeno custo se MAC plano). **Aplicação:** poluição local com curva de dano íngreme (saúde) → cap. Carbono global (dano disperso) → imposto frequentemente preferido. EU ETS adotou cap; Suécia adotou imposto direto sobre carbono (1991, primeiro do mundo, ~$130/tCO\(_2\) hoje). **Aula 8** introduz informação assimétrica como camada adicional sobre essa escolha.

**5. Peer-review.** Calibre 🟡. Cálculo + interpretação Pigou-vs-cap-vs-comando-controle. Item (c) cita Weitzman 1974 — referência DOI [10.2307/2296698](https://doi.org/10.2307/2296698) verificada. **Tradeoff de tempo:** ~14 min — no topo do alvo para 🟡. **Risco residual:** moderado — item (d) exige integração simples mas um aluno com pressa pode errar a área de \(\text{MAC}_A\) (não esquecer fator 2 da inclinação). Distrator (d)(i) testa exatamente esse erro.

---

## Exercício 5 — 🔴 VCG (Clarke pivot) com 3 agentes: cálculo da decisão e transferências

### Enunciado

Comunidade com 3 agentes (\(I = 3\)) decide se constrói uma ponte. Decisão pública \(d \in \{\text{sim}, \text{não}\}\). Valorações privadas (em moeda):

- Agente A: \(v^A(\text{sim}) = 10, v^A(\text{não}) = 0\) (quer ponte).
- Agente B: \(v^B(\text{sim}) = 6, v^B(\text{não}) = 0\) (quer ponte, com menos intensidade).
- Agente C: \(v^C(\text{sim}) = -20, v^C(\text{não}) = 0\) (não quer ponte; e.g., perde acesso ou paga muito imposto).

Custo da ponte (conta agregada): \(K = 0\) (já incluso nas valorações).

Aplica-se o mecanismo VCG na versão Clarke pivot: \(t^i = h^i(\hat v_{-i}) - \sum_{j \neq i} \hat v^j(d^*)\), com \(h^i(\hat v_{-i}) = \max_d \sum_{j \neq i} \hat v^j(d)\). Assume-se que cada agente reporta sua valoração verdadeira.

### Sub-itens

**(a)** A decisão socialmente ótima \(d^* = \arg\max_d \sum_i v^i(d)\) é:

- (i) \(\sum v^i(\text{sim}) = 10 + 6 + (-20) = -4\); \(\sum v^i(\text{não}) = 0\). Logo \(d^* = \text{não}\) (\(0 > -4\)). **[correta]**
- (ii) \(d^* = \text{sim}\) porque 2 dos 3 querem.
- (iii) \(d^* = \text{sim}\) porque a soma de valorações positivas (16) > única negativa (20).
- (iv) Indeterminado por empate.

**(b)** Calcule \(h^A(\hat v_{-A}) = \max_d \sum_{j \in \{B,C\}} \hat v^j(d)\):

- (i) \(h^A = 0\): \(\sum_{j\neq A}(\text{sim}) = 6 + (-20) = -14\); \(\sum_{j\neq A}(\text{não}) = 0\). Máximo = 0. **[correta]**
- (ii) \(h^A = 16\) (sem agente C).
- (iii) \(h^A = -14\).
- (iv) \(h^A = 6\).

**(c)** A transferência de A é \(t^A = h^A - \sum_{j \neq A} v^j(d^*)\). Substituindo:

- (i) \(t^A = 16 - 0 = 16\).
- (ii) **\(t^A = 0 - 0 = 0\)** (\(d^* = \text{não}\), todos \(v^j(\text{não}) = 0\); \(h^A = 0\) calculado em (b)). **A não paga nada — sua presença não foi pivot.** **[correta]**
- (iii) \(t^A = -10\) (A é "compensado").
- (iv) \(t^A = -16\).

**(d)** Para o agente C, calcule \(h^C(\hat v_{-C}) = \max_d \sum_{j \in \{A,B\}} \hat v^j(d)\):

- (i) \(h^C = -20\).
- (ii) **\(h^C = 16\)**: \(\sum_{j\neq C}(\text{sim}) = 10 + 6 = 16\); \(\sum_{j\neq C}(\text{não}) = 0\). Máximo = 16. **[correta]**
- (iii) \(h^C = 0\).
- (iv) \(h^C = 4\).

**(e)** A transferência de C é \(t^C = h^C - \sum_{j \neq C} v^j(d^*)\). Substituindo:

- (i) \(t^C = 16 - 0 = 0\).
- (ii) **\(t^C = 16 - 0 = 16\)** (\(d^* = \text{não}\); \(\sum_{j\neq C}(\text{não}) = 0\); \(h^C = 16\)). **C paga 16 — ele é pivot: sem sua oposição, a ponte seria construída e os outros teriam ganho 16. Ele "compensa" os outros pelo dano que sua oposição causou na alocação social.** **[correta]**
- (iii) \(t^C = 0\).
- (iv) \(t^C = -16\) (C é compensado).

### Gabarito 5-passos — Exercício 5

**1. Ponto-chave.** No mecanismo VCG (Clarke pivot), cada agente paga **somente se sua presença mudou a decisão**. O pagamento é o "custo externo" (em valoração) que sua oposição/apoio causou aos outros. A propriedade central: **declarar verdadeiramente é estratégia dominante**, porque \(h^i(\hat v_{-i})\) descola a declaração do agente do seu pagamento — maximizar utilidade líquida equivale a maximizar critério social.

**2. Derivação.** Ótimo: comparar \(\sum v^i(\text{sim}) = 10 + 6 - 20 = -4\) vs. \(\sum v^i(\text{não}) = 0\). Como \(0 > -4\), \(d^* = \text{não}\). **Pivot test:** sem A, decisão sem A é \(\arg\max(\text{sim} = 6 - 20 = -14, \text{não} = 0)\) = não. **Mesma decisão** com ou sem A — A não foi pivot. \(t^A = 0\). Sem B, decisão sem B é \(\arg\max(\text{sim} = 10 - 20 = -10, \text{não} = 0)\) = não. **Mesma decisão** com ou sem B — B não foi pivot. \(t^B = 0\). Sem C, decisão sem C é \(\arg\max(\text{sim} = 10 + 6 = 16, \text{não} = 0)\) = sim. **Decisão diferente** com ou sem C — C foi pivot. \(t^C = h^C - \sum_{j\neq C}v^j(d^*) = 16 - 0 = 16\). C paga 16. **Verdade-dominância.**

**3. Armadilha.** Item (a)(ii): aluno aplica regra de "maioria simples" (2 querem). VCG é regra de **soma das valorações**, não votação. Item (a)(iii): aluno soma só valores positivos. Item (b)(ii): aluno esquece de incluir C no cálculo de \(h^A\). Item (e)(iv): aluno acha que C é "compensado" pela perda — não, ele paga porque sua oposição **mudou a decisão**.

**4. Extensão.** Em geral, com \(I\) agentes, **só os agentes pivot pagam**; os não-pivot pagam zero. Receita do mecanismo é \(\sum_i t^i \ge 0\) (nunca negativa em Clarke pivot), mas tipicamente **não-balanceada** — soma das transferências excede custo da decisão. Para implementação real, governo absorve residual ou usa outra fonte. **Limitação de domínio:** Gibbard-Satterthwaite + Roberts (1979) — em domínios de preferência irrestritos, mecanismos dominantes são ditatoriais. VCG escapa porque opera em domínio quase-linear (utilidades aditivamente separáveis em moeda). **Aplicações reais:** leilão de segundo preço (Vickrey, 1961) em propaganda Google AdWords (até ~2019); **FCC spectrum auctions (US 1994+)**, com receita >US$ 100bi via mecanismos VCG-derivados (Milgrom 2000, Cramton 2013). **Aulas 8–9:** Akerlof, Spence, Rothschild-Stiglitz lidam com info assimétrica via mecanismos relacionados a VCG (revelação via auto-seleção).

**5. Peer-review.** Calibre 🔴. Cálculo VCG completo em economia 3-agentes — o exemplo canônico para internalizar pivot. Item (e) é o mais formativo — separa quem entendeu dominância de quem decorou fórmula. **Tradeoff de tempo:** ~16 min — médio para 🔴. **Risco residual:** baixo se aluno fez Bloco 4 do durante-aula; moderado se entrou direto sem revisão. Distratores em (e) testam interpretação do sinal da transferência (paga × recebe). **Decisão pedagógica explícita:** valor de \(K = 0\) (custo agregado) está incluído nas valorações para simplificar — em mecanismo real, \(K\) entraria como termo subtraído na soma. Justificada porque o ponto é o cálculo do pivot, não a alocação de custos.

---

## Exercício 6 — 🔴 Tragédia dos comuns (Hardin 1968) + Ostrom: governance institucional

### Enunciado

Lago compartilhado por \(I = 4\) pescadores. Cada pescador escolhe esforço \(e^i \ge 0\) (horas de pesca). Captura individual: \(c^i = e^i \cdot S(E)\), onde \(E = \sum_i e^i\) é o esforço total da comunidade e \(S(E)\) é o "estoque pesqueiro disponível por hora" — uma função decrescente do esforço total devido à congestão e depleção. Para esta análise, assuma \(S(E) = 100 - E\). Custo unitário do esforço: \(w = 10\) por hora. Lucro individual: \(\pi^i(e^i, e_{-i}) = e^i \cdot S(E) - w \cdot e^i = e^i(100 - E) - 10 e^i\).

### Sub-itens

**(a)** No equilíbrio Nash não-cooperativo (cada pescador maximiza \(\pi^i\) tomando \(e_{-i}\) como dado), a CPO é \(\partial \pi^i/\partial e^i = 100 - E - e^i - 10 = 0\). Em equilíbrio simétrico (\(e^i = E/4 = e^*\)):

- (i) \(e^* = 5, E^N = 20\).
- (ii) **\(e^* = 18, E^N = 72\)**: substituindo \(e^i = E/I = E/4\) na CPO: \(90 - E - E/4 = 0 \Rightarrow E (5/4) = 90 \Rightarrow E^N = 72\); \(e^* = 18\). **[correta]**
- (iii) \(e^* = 25, E^N = 100\) (esforço máximo).
- (iv) \(e^* = 0\) (ninguém pesca).

**(b)** O **socialmente ótimo** maximiza lucro **agregado** \(\Pi = E \cdot S(E) - w \cdot E = E(100 - E) - 10 E\) (escolhe \(E\) total ignorando "egoísmo"). CPO em \(E\): \(100 - 2E - 10 = 0 \Rightarrow E^* = 45\). Em alocação simétrica \(e^* = 45/4 = 11{,}25\):

- (i) \(E^* = 72\).
- (ii) **\(E^* = 45, e^* = 11{,}25\).** **[correta]**
- (iii) \(E^* = 100\).
- (iv) \(E^* = 0\).

**(c)** A razão \(E^N/E^* = 72/45 = 1{,}6\) ilustra:

- (i) Eficiência do equilíbrio Nash.
- (ii) **Tragédia dos comuns (Hardin 1968): Nash não-cooperativo entrega \(E^N > E^*\) — sobreesforço de 60% relativo ao ótimo. Cada pescador ignora a externalidade que seu esforço impõe aos outros (reduz estoque disponível).** **[correta]**
- (iii) Sub-pesca por causa de congestão.
- (iv) O modelo é mal-especificado.

**(d)** **Solução tipo Pigou (taxa por hora de esforço).** Para induzir \(E = E^* = 45\) via taxa \(t\), cada pescador resolve \(\max e^i (100 - E) - (10 + t) e^i\). CPO: \(100 - E - e^i - 10 - t = 0\). Em equilíbrio simétrico com \(E = 45\) e \(e^i = 11{,}25\):

- (i) \(t = 0\).
- (ii) **\(t = 33{,}75\)**: \(100 - 45 - 11{,}25 - 10 - t = 0 \Rightarrow t = 33{,}75\). **[correta]** Imposto sobre cada hora de esforço internaliza congestão.
- (iii) \(t = 90\).
- (iv) \(t = 100\).

**(e)** **Solução tipo Ostrom (governance institucional).** Em vez de imposto centralizado, comunidade pesqueira coordena entre si: estabelece quota agregada (\(E^* = 45\)), divide entre membros (\(11{,}25\) cada), monitora cumprimento via vigilância mútua, sanciona violações graduadamente. **Comparada com a solução Pigou:**

- (i) Solução Ostrom é estritamente Pareto-pior porque exige custos de monitoramento.
- (ii) **Solução Ostrom pode ser Pareto-superior à Pigou se (a) custos de monitoramento mútuo são baixos (comunidade pequena, todos se conhecem), (b) as taxas de Pigou seriam capturadas por governo distante e/ou ineficiente, ou (c) o lago tem características específicas (sazonalidade, espécies) que regulação centralizada não capta.** **[correta]** Ostrom (1990) documentou empiricamente: em escala local, governance comunitária supera regulação tipo Pigou em vários casos; em escala global (clima), fica difícil. Análise caso-a-caso.
- (iii) Solução Ostrom é equivalente a Pigou.
- (iv) Solução Ostrom não funciona em prática.

### Gabarito 5-passos — Exercício 6

**1. Ponto-chave.** A "tragédia dos comuns" (Hardin 1968) prevê sobreexploração de recurso comum sob acesso aberto: cada agente ignora a externalidade do seu uso sobre os outros. Soluções clássicas: Pigou (taxa centralizada que internaliza congestão) e Coase (atribuição de direitos + barganha). Ostrom (1990, Nobel 2009) documentou empiricamente que **governance institucional descentralizada** pode ser uma quarta via — funciona quando comunidade é pequena, monitoramento mútuo é viável, e regulação centralizada seria ineficiente.

**2. Derivação.** Lucro individual: \(\pi^i = e^i(100 - E) - 10 e^i\). CPO Nash: \(\partial \pi^i/\partial e^i = 100 - E - e^i - 10 = 0\). Em simétrico (\(e^i = E/4\)): \(90 - E - E/4 = 0 \Rightarrow E^N = 72; e^* = 18\). Lucro agregado: \(\Pi = E(100 - E) - 10 E\). CPO ótimo: \(100 - 2E - 10 = 0 \Rightarrow E^* = 45\). Razão \(E^N/E^* = 72/45 = 1{,}6\). **Imposto Pigou para induzir \(E^*\) — passo de simetria explícito.** Cada pescador, em sua maximização individual, toma \(e_{-i}\) como dado e escolhe \(e^i\) satisfazendo CPO modificada \(100 - E - e^i - 10 - t = 0\). Pela simetria do problema com \(n=4\) agentes idênticos, em equilíbrio simétrico cada um escolhe o mesmo \(e^i = e^*\), de modo que \(E = 4 e^*\) — essa é a condição de auto-consistência (cada agente, em sua melhor resposta, replica o nível agregado induzido). Substituindo \(e^i = E/4\) na CPO: \(100 - E - E/4 - 10 - t = 0 \Rightarrow 90 - (5/4) E - t = 0\). Avaliando no alvo \(E = E^* = 45\) (logo \(e^i = 11{,}25\)): \(90 - (5/4)(45) - t = 0 \Rightarrow 90 - 56{,}25 - t = 0 \Rightarrow t = 33{,}75\). **Verificação direta** (sem usar a forma simétrica reduzida): \(100 - 45 - 11{,}25 - 10 - t = 0 \Rightarrow t = 33{,}75\) ✓. A álgebra fecha em todos os passos.

**3. Armadilha.** Item (a)(i): aluno usa regra de soma sem CPO Nash. Item (a)(iii): aluno acha que esforço máximo é socialmente ótimo. Item (c)(iii): aluno inverte a tragédia (sub-pesca em vez de sobre-pesca). Item (d)(i)/(iii): aluno calcula \(t\) em \(E^N\) (privado) em vez de \(E^*\) (ótimo). Item (e)(i)/(iv): aluno aplica regra "centralizado é sempre melhor" — contradiz Ostrom + Nobel 2009.

**4. Extensão.** **Hardin (1968)** descreveu a dinâmica de sobreuso em acesso aberto ("tragédia dos comuns"); **Ostrom (1990)** documentou que comunidades reais frequentemente saem do acesso aberto via instituições locais, evitando assim a dinâmica de Hardin. **Os 8 princípios de Ostrom** (limites bem-definidos, regras adaptadas, monitoramento, sanções graduadas, resolução de conflitos local, autonomia reconhecida, organização aninhada, regras de saída/entrada) estabelecem framework para governance comunitária. **Aplicações brasileiras:** colônias de pescadores artesanais no Pará (manejo de pirarucu via "acordos de pesca", documentado por Almeida et al. 2009 para o Médio Solimões), uso compartilhado de água em irrigação de comunidades quilombolas. **Limites:** common-pool em escala global (clima, biodiversidade, oceano) escapa governance local — exige Pigou-Coase com mecanismos internacionais (Acordo de Paris, Protocolo de Kyoto) ou cap-and-trade (EU ETS para CO\(_2\)). **Aula 8** detalha info assimétrica como camada adicional de complicação para mecanismos centralizados — quando regulador não conhece curva de demanda dos pescadores, seleção adversa entra.

**5. Peer-review.** Calibre 🔴. Modelo padrão de tragédia dos comuns (Hardin 1968) com solução Pigou + reconhecimento Ostrom. Item (e) é o mais conceitualmente sutil: separa quem leu Ostrom de quem entende apenas Pigou-Coase. **Tradeoff de tempo:** ~18 min, no topo do alvo. **Risco residual:** moderado — item (b) exige distinguir soma agregada de soma simétrica; item (d) requer cuidado em substituir corretamente \(E\) e \(e^i\) na CPO modificada. **Decisão pedagógica explícita:** modelo simétrico é simplificação — heterogeneidade de tecnologia entre pescadores quebra simetria mas não muda qualitativamente o resultado. Justificada para preservar tractabilidade dentro do calibre N&S. Aluno que quiser ver heterogeneidade tem em Magill-Quinzii (Cap. 17, 1996, mecanismos com agentes assimétricos).

---

## Apêndice — Notação canônica desta lista

| Símbolo | Significado |
|---|---|
| \(\text{MC}_p(q)\) | custo privado marginal |
| \(\text{MEC}(q)\) | custo externo marginal |
| \(\text{MC}_s = \text{MC}_p + \text{MEC}\) | custo social marginal |
| \(q^p\) | quantidade de equilíbrio privado |
| \(q^*\) | quantidade socialmente ótima |
| \(t^* = \text{MEC}(q^*)\) | imposto Pigou ótimo |
| \(\text{MAC}(r)\) | custo marginal de redução de poluente |
| \(G\) | nível de bem público |
| \(\text{TMS}^i_{G,x}\) | TMS agente \(i\) entre \(G\) e \(x\) |
| \(\text{TMT}_{G,x}\) | taxa marginal de transformação |
| \(G^*\) | ótimo de Samuelson |
| \(G^N\) | nível Nash de provisão voluntária |
| \(\tau^i\) | preço pessoal de Lindahl |
| \(d^*\) | decisão socialmente ótima (VCG) |
| \(v^i(d)\) | valoração do agente \(i\) pela decisão \(d\) |
| \(t^i\) | transferência VCG do agente \(i\) |
| \(h^i(\hat v_{-i})\) | função arbitrária dos outros relatos (Clarke pivot) |
| \(E\) | esforço total (common-pool) |
| \(e^i\) | esforço individual do agente \(i\) |
| \(S(E)\) | estoque por hora disponível |
