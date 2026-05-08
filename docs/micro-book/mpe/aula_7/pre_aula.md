# Pré-Aula 7 — Material-Fonte (interno)

> **Status:** material-fonte em Markdown da pré-aula 7. É o "esqueleto narrativo" do `platform/aula-07.html`. Quando o aluno abre a plataforma, vê o HTML; este MD é a referência de revisão e auditoria. Tema: **Externalidades e Bens Públicos** — Pigou (1920), Coase (1960), Samuelson (1954), Lindahl (1919), Clarke-Groves-Vickrey (mecanismo VCG), Ostrom (1990) governance. Calibre N&S 12e Cap. 19; ZaE Cap. 20 como orientação estrutural; J-R sem capítulo dedicado (citamos §6.6 só onde encaixa).

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Aula presencial:** 03/06/2026 (quarta-feira), 19:30–22:30
- **Pré-aula abre:** quinta 28/05 madrugada (após Aula 6)
- **Pré-aula fecha:** quarta 10/06 às 18:00 BRT (canônico, 1h30 antes da Aula 8)
- **Tempo-alvo:** 90–120 min material + 30–45 min quiz pré (10 🟡)
- **Pré-requisitos:** Aulas 1–6 consolidadas. Em particular: 1º TBE estendido (Aula 5), incompletude como falha do EG (Aula 6 / Hart 1975), \(\text{TMS}\) e \(\text{TMT}\) operacionais (Aulas 1–3), Lagrangiano com restrição de viabilidade (Aulas 2 e 4). **Sem isso, esta pré-aula trava em §3.**

---

## Objetivos de aprendizagem

Ao final desta pré-aula, o aluno deve ser capaz de:

1. **Diagnosticar** externalidade como "ação de \(i\) entra na utilidade ou tecnologia de \(j\) fora do sistema de preços", e enunciar por que isso quebra o 1º TBE da Aula 5.
2. **Distinguir** externalidades positivas de negativas; tecnológicas (na função de produção) de pecuniárias (via preço); diretas de Coase-relevantes (poucos agentes, direitos bem-definidos) versus difusas (muitos agentes, agente difuso — clima, ar).
3. **Derivar** a condição de Pigou: imposto ótimo \(t^* = \text{MEC}(q^*)\) (custo externo marginal no nível socialmente ótimo), comparando equilíbrio privado vs. socialmente ótimo num modelo parcial.
4. **Enunciar** o teorema de Coase: sob direitos bem-definidos + custos de transação zero + sem efeito-renda relevante, **a alocação de equilíbrio resulta em eficiência independente da atribuição inicial de direitos**. **Reconhecer** que as 3 hipóteses falham com frequência prática.
5. **Provar** a condição de Samuelson para bem público: \(\sum_{i=1}^I \text{TMS}_i = \text{TMT}\) — soma vertical das demandas individuais iguala o custo marginal social.
6. **Caracterizar** o problema do **carona** (free-rider): em provisão voluntária descentralizada, sob preferências não-degeneradas, o nível agregado de bem público é **estritamente menor** que o ótimo social (subprovisão).
7. **Reconhecer** o mecanismo de **Lindahl** como sistema de preços personalizados que implementa o ótimo de Samuelson como equilíbrio competitivo (com a falha: requer revelação verdadeira das preferências), e **VCG (Clarke 1971, Groves 1973, Vickrey 1961)** como mecanismo direto que torna a revelação verdadeira a estratégia dominante.
8. Aplicar o ferramental a casos brasileiros (desmatamento Amazônia, SUS, CBio) e mundiais (EU ETS, Acid Rain Program 1990, FCC spectrum auctions 1994).

**Não-objetivos** (para Aulas 8–9 ou pré-monitoria 4):

- **Seleção adversa, sinalização, risco moral** — Aula 8 e Aula 9. Aqui só citamos como "outra forma de falha" no fechamento.
- **Common-pool resources com governance institucional rigorosa** (Ostrom 1990) — citamos no Box, mas não modelamos formalmente. Pré-monitoria 4 detalha.
- **Demonstração da implementabilidade de VCG em domínios irrestritos** (Gibbard-Satterthwaite + Roberts) — fora do escopo. Citamos.
- **Provisão dinâmica de bem público sob aprendizado** — fora.

---

## Estrutura das 9 seções

| # | Seção | Tipo | Tempo |
|---|---|---|---|
| 0 | Orientação | Contrato com aluno | 2 min |
| 1 | Leitura ZaE — Cap. 20 §20.1–§20.4 (externalidades) + §20.5–§20.7 (bens públicos + Lindahl) | Leitura dirigida | 25 min |
| 2 | Leitura N&S 12e — Cap. 19 (piso obrigatório) | Leitura dirigida (PDF) | 20 min |
| 3 | Conceitual 1 — Externalidades: diagnóstico + Pigou + Coase | Texto + 2 micro-checkpoints | 16 min |
| 4 | Conceitual 2 — Bens públicos: Samuelson + free-rider | Texto + 2 micro-checkpoints | 14 min |
| 5 | Conceitual 3 — Mecanismos: Lindahl + VCG + Ostrom | Texto + 2 micro-checkpoints | 18 min |
| 6 | Exercícios de papel (calibre N&S §19.2 / §19.4 / §19.6) | 3 itens | 15 min |
| 7 | Checkpoint final de síntese | 3 questões | 10 min |
| 8 | Reflexão qualitativa | 2 campos abertos | 3 min |

Total: ~123 min material; quiz pré (10 🟡) à parte (30–45 min).

---

## Seção 0 — Orientação (contrato)

1. Papel e caneta. **Externalidades** se entendem com gráfico parcial: oferta privada vs. social, e o triângulo de bem-estar entre as duas. Faça pelo menos um gráfico desses no papel.
2. Tente os micro-checkpoints **sem consultar** primeiro. Errar 1ª é dado pedagógico útil.
3. Não pule seções. Diagnóstico → Pigou/Coase → Samuelson → Mecanismos é cadeia lógica.
4. Anote dúvidas na reflexão final (Seção 8). Alimentam o Bloco 0 da aula presencial.

> **Aviso de calibre.** Esta aula é a **segunda das três falhas clássicas do EG.** Aula 5 fechou o EG canônico; Aula 6 introduziu a **primeira** falha (incompletude); aqui catalogamos a **segunda** (externalidades + bens públicos não-precificáveis); Aula 8 introduzirá a **terceira** (informação assimétrica). Mantenha o fio: cada aula expõe um mecanismo *específico* pelo qual o 1º TBE da Aula 5 deixa de valer.

---

## Seção 1 — ZaE Cap. 20 (orientação estrutural + leitura principal)

Leitura dirigida do livro **Microeconomia: Do Zero ao Equilíbrio** (Darcio Genicolo Martins) — Capítulo 20 ("Fumaça, Caronas e Tragédias").

**Por que ZaE como leitura primária:**

- Cobertura panorâmica completa de externalidades + bens públicos com calibre adequado ao MPE.
- Boxes Brasil substantivos (desmatamento, SUS, CBio) — alinhados ao bundle desta aula.
- Notação consistente com as Aulas 1–6 (\(\text{TMS}\), \(\succeq\), vírgula decimal).
- Atividade de sala (jogo de bens públicos com punição) que serve como ponte para o Bloco 2 do durante-aula.

**O que ler:**

- **§20.1 — Externalidades: definição e tipologia.** Tecnológicas vs. pecuniárias; diretas vs. transacionais; positivas vs. negativas. Não pular tipologia — ela vai aparecer no Bloco 1 do durante.
- **§20.2 — Externalidades e ineficiência alocativa.** Por que mercado falha quando custo privado ≠ custo social.
- **§20.3 — Modelo parcial com externalidade.** Curvas de oferta privada (\(\text{MC}_p\)) vs. social (\(\text{MC}_s = \text{MC}_p + \text{MEC}\)). Equilíbrio privado \(q^p\), socialmente ótimo \(q^*\). Triângulo de Harberger de perda de bem-estar.
- **§20.4 — Soluções: Pigou, Coase, cap-and-trade.** Os três mecanismos canônicos.
- **§20.5–§20.6 — Bens públicos e condição de Samuelson.** Não-rivalidade + não-exclusibilidade. Soma vertical das demandas; \(\sum \text{TMS}_i = \text{TMT}\).
- **§20.7 — Preços de Lindahl.** Personalizados, descentralizam o ótimo de Samuelson.
- **§20.8 — Free-rider e provisão voluntária.** Subprovisão.

Recomendação: leia §20.1–§20.8 com calma; §20.9–§20.10 (votação + VCG) ficam para a Seção 5 desta pré-aula.

---

## Seção 2 — N&S 12e — Cap. 19 (piso obrigatório)

Leitura dirigida do **Nicholson & Snyder, *Microeconomic Theory: Basic Principles and Extensions*, 12ª ed., Cap. 19** ("Externalities and Public Goods"). Esta é a leitura formal canônica que estabelece o nível matemático mínimo da turma.

**Foco de leitura (em ordem):**

- **§19.1 — Defining Externalities.** Distinção entre tecnológica e pecuniária; entre direta e via mercado.
- **§19.2 — Externalities and Allocational Inefficiency.** Modelo parcial. Equilíbrio privado vs. ótimo social.
- **§19.3 — Solutions to the Externality Problem.** Pigou (taxa); fusão de firmas (internalização); Coase. Lê com atenção a discussão das 3 hipóteses do Coase.
- **§19.4 — Attributes of Public Goods.** Rivalidade + exclusibilidade — matriz 2×2.
- **§19.5 — Public Goods and Resource Allocation.** Condição de Samuelson, derivação a partir de UMP+restrição.
- **§19.6 — Lindahl Pricing of Public Goods.** Preços personalizados.
- **§19.7 — Voting and Resource Allocation.** Eleitor mediano.
- **§19.8 — A Simple Political Model.** Manipulação estratégica.
- **§19.9 — Voting Mechanisms.** Aqui aparece VCG (versão Groves-Vickrey-Clarke).

> **Calibre.** N&S §19.5 deriva Samuelson via Lagrangiano com restrição agregada — **exatamente** o que vamos fazer no Bloco 2 do durante-aula. Quem dominar a derivação até CPO sai pronto. **MWG §11.B–§11.D** (Externalities and Public Goods) aparece cirurgicamente em 🔴 — não é leitura obrigatória.

PDF acessado via `MPE.openMaterial('nicholson-snyder-12e-cap19.pdf', this)`. Bucket: a confirmar — caso o PDF ainda não esteja no Supabase, use a versão impressa do Insper.

---

## Seção 3 — Conceitual 1: Externalidades — diagnóstico + Pigou + Coase

### Diagnóstico: por que externalidade quebra o 1º TBE

**Definição operacional.** Há externalidade entre \(i\) e \(j\) quando a ação de \(i\) (e.g., escolha de produção, consumo, ou uso de recurso) entra na função-utilidade ou na função de produção de \(j\) **sem passar pelo sistema de preços**. Formalmente, em economia AD canônica (Aulas 4–5), preferências e tecnologia eram da forma

\[
u^i(x^i), \quad y^j = f^j(\text{insumos de } j).
\]

Sob externalidade, vira

\[
u^i(x^i, x^k) \quad \text{ou} \quad y^j = f^j(\text{insumos de } j, \text{ação de } k),
\]

para algum \(k \neq i, j\) (ou \(k\) representando o ambiente físico). O mercado não cota o "preço" da ação externa de \(k\) — porque não há instituição que a transaciona.

**Por que isso quebra o 1º TBE.** Recapitule a prova da Aula 5 (1º TBE estendido): \(\tilde x \succ x^*\) viável \(\Rightarrow p^* \cdot \tilde x > p^* \cdot \omega \Rightarrow\) contradição com viabilidade. O passo crítico era "**toda** a interação entre agentes passa por \(p^*\)". Sob externalidade, a interação passa fora — a ação de \(k\) afeta \(i\) ou \(j\) sem aparecer em \(p^* \cdot \cdot\). O argumento de contradição não chega no fim. **1º TBE não vale.**

> **Microscópio pedagógico.** Aula 6 quebrou o 1º TBE por **incompletude** (o conjunto de \(\tilde x\) implementáveis era pequeno demais). Aqui quebra por **escopo da interação** (a função-utilidade tem um argumento que não está no vetor \(x\) precificado). São dois mecanismos distintos. Aula 8 introduz um terceiro (informação assimétrica).

### Tipologia (que vai aparecer em prova)

| Eixo | Categorias | Exemplo |
|---|---|---|
| Sinal | Positiva / Negativa | Vacinação (positiva) / Poluição (negativa) |
| Origem | Tecnológica / Pecuniária | Fumaça da fábrica (tec.) / Subida de preço por entrada de competidor (pec.) |
| Intensidade Coase | Direta (poucos, direitos bem-def.) / Difusa (muitos, sem direitos) | Vizinho de cima (direta) / Mudança climática global (difusa) |

**Ponto-chave:** **externalidade pecuniária NÃO causa ineficiência no 1º TBE.** Quando o preço sobe porque entrou um competidor, agentes existentes "perdem" — mas via mercado, não fora dele. O 1º TBE da Aula 5 já contempla essas redistribuições. **Apenas externalidades tecnológicas (e via consumo/uso fora-de-mercado) quebram o resultado.**

### Solução 1: Pigou (1920) — taxa que internaliza

**Setup mínimo.** Considere um produtor que escolhe \(q\) (output) com custo privado \(\text{MC}_p(q)\) e gera **custo externo marginal** \(\text{MEC}(q) > 0\) (poluição que prejudica vizinhos). Custo social: \(\text{MC}_s(q) = \text{MC}_p(q) + \text{MEC}(q)\). Demanda inversa \(P(q)\).

**Equilíbrio privado:** \(P(q^p) = \text{MC}_p(q^p)\). **Ótimo social:** \(P(q^*) = \text{MC}_s(q^*) = \text{MC}_p(q^*) + \text{MEC}(q^*)\). Como \(\text{MC}_s > \text{MC}_p\): **\(q^p > q^*\)** — produção privada é excessiva.

**Pigou:** imponha imposto unitário \(t^*\) sobre o produtor tal que ele resolva \(P(q) = \text{MC}_p(q) + t^*\). Para \(t^* = \text{MEC}(q^*)\) (no nível ótimo), o produtor escolhe \(q^* = q^*\). **A taxa internaliza.**

> **Cuidado.** \(t^* = \text{MEC}(q^*)\), não \(\text{MEC}(q^p)\). Avaliar a externalidade marginal **no ótimo** — em geral não é o que o mercado revela diretamente. Em prática, pede esforço empírico (estimar MEC).

### Box Brasil 🇧🇷 — Lei dos Combustíveis Renováveis (CBio) como Pigou disfarçado

A **Política Nacional de Biocombustíveis (RenovaBio, Lei 13.576/2017)** instituiu os **Créditos de Descarbonização (CBio)**: distribuidoras de combustíveis fósseis devem cumprir uma meta anual individual de descarbonização e podem cumpri-la comprando CBios emitidos por produtores certificados de etanol/biodiesel. Em equilíbrio competitivo, o **preço do CBio internaliza** o custo social marginal das emissões de combustíveis fósseis: o mercado de CBios é o mecanismo via o qual a distribuidora paga, indiretamente, pelo dano climático marginal.

Formalmente: distribuidora resolve \(\min C_p + p_{\text{CBio}} \cdot e\), onde \(e\) é a quantidade de CBios necessária. \(p_{\text{CBio}}\) tem o papel da taxa Pigou — só que descentralizada via mercado de permissões. A diferença operacional com o imposto direto é apenas o canal: imposto vai ao Tesouro, mercado de permissões vai ao certificador. Equivalência teórica sob hipóteses padrão.

### Solução 2: Coase (1960) — barganha sob direitos bem-definidos

**Coase, R. H. (1960). "The Problem of Social Cost." *Journal of Law and Economics* 3, 1–44, [DOI 10.1086/466560](https://doi.org/10.1086/466560).**

**Teorema (Coase, versão informal).** Suponha que (i) os direitos de propriedade sobre o recurso afetado pela externalidade estejam **bem-definidos**, (ii) os agentes possam **negociar a custo zero**, e (iii) os efeitos-renda sejam **desprezíveis** sobre as decisões. Então a alocação resultante da barganha é **Pareto-eficiente**, e — surpresa — **independe** de quem detém o direito inicialmente.

**Intuição operacional.** Suponha 1 fábrica + 1 morador. Se o morador tem direito ao ar limpo, ele pode "vender" tolerância de emissões à fábrica — só vai aceitar se a fábrica pagar pelo menos o dano marginal. Se a fábrica tem direito a emitir, o morador pode "comprar" redução de emissões — só aceita pagar pelo dano evitado. Nos dois casos, a quantidade transacionada equaliza disposição-a-receber e disposição-a-pagar marginais. Por construção, esse é o ponto em que \(\text{MEC} = \text{MC reduction}\) — o mesmo \(q^*\) que Pigou.

**Onde Coase falha (na prática, na maioria dos casos):**

- **Custos de transação não-zero:** identificar os afetados, redigir contratos, monitorar cumprimento — trivialmente positivo.
- **Direitos mal-definidos:** quem é dono do ar? Da bacia? Do clima global?
- **Muitos agentes (free-rider em Coase):** se o ganho de cada morador da barganha é pequeno e o custo individual de participar é positivo, ninguém se mobiliza.
- **Efeito-renda relevante:** se a transferência inicial é grande comparada à riqueza dos agentes, suas decisões mudam — alocação "depende de quem detém o direito".

> **Pedagogia.** Coase sem custos de transação é teorema de **eficiência condicional**, não receita política. A pergunta empírica importante é: **em quais situações reais os custos são baixos o suficiente?** Resposta típica: poucos agentes + direitos claros + ativo bem-definido. Casos: vizinho de cima (sim); poluição transfronteiriça com 100 países (não).

### Box Mundo 🌍 — EU ETS como Coase + Pigou aplicado

O **EU Emissions Trading System (EU ETS)**, lançado em 2005, é o maior mercado de cap-and-trade do mundo: a UE estabelece um teto agregado de emissões (cap) e distribui/leiloa permissões a empresas; permissões são transacionáveis. Em equilíbrio competitivo, o **preço da permissão internaliza** o custo marginal de mitigação no nível da meta agregada.

Conexão Pigou-Coase: a UE define o **direito de emitir** (Coase: direitos bem-definidos), distribui inicialmente (atribuição), e o mercado encontra a alocação eficiente entre firmas com diferentes custos marginais de mitigação. O preço da permissão age como o \(t^*\) Pigou descentralizado: a firma com custo marginal de mitigação maior compra; a com custo menor reduz e vende. Resultado: a meta agregada é cumprida ao **custo total mínimo**.

O EU ETS Phase 4 (2021–2030) tem cap declinante; preços da tonelada de CO\(_2\) oscilaram entre €25 e €100 nos últimos anos, refletindo escassez crescente do direito a emitir.

### Micro-checkpoints (2 itens — obrigatórios)

**MC1.** Considere uma fábrica que emite poluição com custo externo marginal \(\text{MEC}(q) = 2q\) e curva de custo privado marginal \(\text{MC}_p(q) = 4 + q\). A demanda inversa é \(P(q) = 20 - q\). Sobre o imposto Pigou ótimo:

- (a) \(t^* = 2 q^p\), avaliado no equilíbrio privado.
- (b) \(t^* = \text{MEC}(q^*) = 2 q^*\), avaliado no nível socialmente ótimo \(q^*\). Resolvendo: \(\text{MC}_s = 4 + q + 2q = 4 + 3q\); equilíbrio social \(20 - q = 4 + 3q \Rightarrow q^* = 4\). Logo \(t^* = 2 \cdot 4 = 8\). **[correta]**
- (c) \(t^* = \text{MEC}(q^p)\) — mesma lógica do (a) com forma melhor.
- (d) \(t^*\) indeterminado sem informação adicional.

**MC2.** O Teorema de Coase (1960) **não** garante eficiência da barganha quando:

- (a) Os agentes são neutros ao risco.
- (b) **Há custos de transação positivos OU os direitos de propriedade não estão bem-definidos OU efeitos-renda são relevantes** — qualquer uma das três quebra o teorema. **[correta]**
- (c) Há mais de um agente envolvido.
- (d) O bem é privado.

---

## Seção 4 — Conceitual 2: Bens Públicos — Samuelson + Free-rider

### Definição: rivalidade × exclusibilidade

| | **Excludente** | **Não-excludente** |
|---|---|---|
| **Rival** | Bem privado puro (pão) | Recurso comum (pesca, pasto) |
| **Não-rival** | Bem-clube (TV a cabo) | Bem público puro (defesa nacional, ar limpo) |

Bem público puro: meu consumo não diminui o seu (não-rival), e não consigo excluí-lo do consumo (não-excludente). **Não pode ser organizadamente comprado** num mercado tradicional.

### Condição de Samuelson (1954)

**Samuelson, P. A. (1954). "The Pure Theory of Public Expenditure." *Review of Economics and Statistics* 36, 387–389, [DOI 10.2307/1925895](https://doi.org/10.2307/1925895).**

**Setup.** Economia com \(I\) consumidores, 1 bem privado \(x\) (numerário), 1 bem público \(G\). Preferências \(u^i(x^i, G)\) com \(\partial u^i/\partial x^i, \partial u^i/\partial G > 0\). Tecnologia: produzir \(G\) consome \(x\) à taxa de transformação \(\text{TMT}(G) = \text{MC}(G)\). Restrição agregada: \(\sum_i x^i + \text{MC}(G) \cdot G = \sum_i \omega^i + \text{produção}\) — para manter simplicidade pedagógica, assuma economia linear: cada \(x^i\) é dotação fixa \(\omega^i\) e \(G\) é produzido convertendo \(c\) unidades de bem privado em 1 unidade de bem público (\(\text{TMT} = c\) constante).

**Programa do planejador social.** Maximize \(\sum_i \alpha^i u^i(x^i, G)\) sujeito a \(\sum_i x^i + c G = \sum_i \omega^i\). Lagrangiano:

\[
\mathcal{L} = \sum_i \alpha^i u^i(x^i, G) - \lambda \left(\sum_i x^i + c G - \sum_i \omega^i\right).
\]

**CPO em \(x^i\):** \(\alpha^i u^i_x = \lambda \;\;\Rightarrow\;\; \alpha^i = \lambda/u^i_x\). **CPO em \(G\):** \(\sum_i \alpha^i u^i_G = \lambda c\). Substituindo:

\[
\sum_i \frac{u^i_G}{u^i_x} = c.
\]

Mas \(u^i_G/u^i_x = \text{TMS}^i_{G,x}\) (taxa marginal de substituição entre bem público e bem privado). E \(c = \text{TMT}_{G,x}\). Logo:

\[
\boxed{\;\sum_{i=1}^I \text{TMS}^i_{G,x} = \text{TMT}_{G,x}.\;\;\;\;\text{(Condição de Samuelson)}}
\]

**Leitura econômica.** Para bem privado, a regra é \(\text{TMS}^i = \text{TMT}\) **agente por agente** (todos compram à mesma taxa marginal). Para bem público, a regra é \(\sum_i \text{TMS}^i = \text{TMT}\) — soma **vertical** das demandas inversas individuais.

> **Pedagogia.** A diferença \(\text{TMS}^i\) (bem privado) vs. \(\sum \text{TMS}^i\) (bem público) é o mais econômico item a entender da Aula 7. Vem de: bem privado é **rival** (uma unidade vai a um agente), bem público é **não-rival** (a mesma unidade vai a todos). Logo o "valor marginal social" do bem público é a **soma** das valorações marginais individuais.

### Comparação com bem privado (gráfico mental)

- **Bem privado:** demanda agregada = soma horizontal das individuais (a um preço, somam-se as quantidades).
- **Bem público:** "demanda agregada" = soma vertical das individuais (a uma quantidade, somam-se os preços / valorações marginais).

Equilíbrio de mercado num bem privado entrega \(\text{TMS}^i = p = \text{TMT}\) para cada \(i\) — Pareto. **Não existe esse paralelo para bem público sob mercado descentralizado:** a soma vertical não pode ser "lida" pelo mercado sem revelação.

### Free-rider (Olson 1965, Bergstrom-Blume-Varian 1986)

**Setup.** Cada agente \(i\) escolhe contribuição \(g^i \ge 0\) ao bem público; \(G = \sum_i g^i\). Preferências \(u^i(x^i, G)\) com \(x^i = \omega^i - g^i\). UMP individual: \(\max_{g^i} u^i(\omega^i - g^i, g^i + g_{-i})\), onde \(g_{-i} = \sum_{j \neq i} g^j\) é tomado como dado (Nash).

**CPO interior:** \(-u^i_x + u^i_G = 0 \Rightarrow u^i_G/u^i_x = 1 = \text{TMS}^i\).

**Equilíbrio Nash de provisão voluntária:** \(\text{TMS}^i = 1\) **para cada agente que contribui positivamente**. Isso tipicamente implica \(\sum_i \text{TMS}^i \le I < \text{TMT}\) (se \(\text{TMT} = c\) está abaixo de \(I\), o ótimo de Samuelson exige somar \(I\) valorações; aqui só conseguimos uma por agente). **Subprovisão.**

> **Mais forte: agentes "grandes" carregam o peso.** Bergstrom-Blume-Varian (1986) provaram: se um agente é estritamente mais rico que os outros, ele provê o bem público sozinho em equilíbrio Nash (e os pequenos pegam carona). **"Os ricos pagam pela festa."** O resultado tem implicações para defesa internacional (NATO), pesquisa fundamental (universidades públicas brasileiras vs. privadas), e financiamento de software open-source.

### Box Brasil 🇧🇷 — SUS como bem público (parcialmente excludente)

O **Sistema Único de Saúde (SUS)**, instituído pela Constituição de 1988, é financiado por tributos federais, estaduais e municipais. Atendimento é **universal e gratuito**. Pelos eixos de Samuelson:

- **Não-excludente:** ninguém pode ser legalmente impedido (princípio constitucional).
- **Parcialmente rival:** vacinação coletiva (não-rival até o limite da capacidade), atendimento de pronto-socorro (rival; uma maca é uma maca).

Pelo critério econômico, SUS é mais próximo de **bem público com produção rival** ("bem-clube nacional"). A condição de Samuelson aplicada à parte não-rival (vacinação, vigilância sanitária, controle de epidemias) **justifica** financiamento via tributo: cada cidadão valoriza o bem-estar agregado da população (não-rival), e o financiamento individual via mercado seria gravemente subprovido (free-riding).

### Box Mundo 🌍 — Defesa nacional como bem público canônico

Cada pessoa beneficiada pela defesa nacional não rivaliza com os outros (não-rival) e não pode ser excluída (não-excludente, em geral). Por Samuelson: \(\sum_i \text{TMS}^i_{D, x} = \text{TMT}_{D, x}\). Provisão privada via mercado (cada um compra "um pedaço de defesa") teria fortíssimo free-rider — defesa coletiva é financiada via tributo geral em quase todos os países. **A teoria prevê o que vemos.**

### Micro-checkpoints (2 itens — obrigatórios)

**MC3.** Em economia com \(I = 3\) consumidores e bem público \(G\), todos com Bernoulli quase-linear \(u^i(x^i, G) = x^i + 2\sqrt{G}\) e \(\text{TMT} = 1\) (custo marginal constante), o nível socialmente ótimo de \(G\) (Samuelson) é:

- (a) \(G^* = 1\) — cada agente exigiria igualmente.
- (b) **\(G^* = 9\)**: \(\text{TMS}^i = u^i_G/u^i_x = 1/\sqrt{G}\); Samuelson \(\sum_i 1/\sqrt{G} = 1 \Rightarrow 3/\sqrt{G} = 1 \Rightarrow \sqrt{G} = 3 \Rightarrow G^* = 9\). **[correta]**
- (c) \(G^* = 3\).
- (d) \(G^*\) indeterminado.

**MC4.** Sob provisão voluntária Nash do bem público do MC3 (sem mecanismo de coordenação), o nível agregado \(G^N\) provido satisfaz:

- (a) \(G^N = G^* = 9\) — Nash coincide com Samuelson.
- (b) \(G^N > G^* = 9\) — superprovisão.
- (c) **\(G^N < G^* = 9\)** — subprovisão (free-rider). Cada agente Nash escolhe \(g^i\) tal que \(\text{TMS}^i = 1\) **individualmente** (\(1/\sqrt{G} = 1 \Rightarrow G = 1\) se um agente é provedor único; com 3 simétricos a discussão é mais sutil mas \(G^N < 9\) sempre). **[correta]**
- (d) \(G^N = 0\).

---

## Seção 5 — Conceitual 3: Mecanismos — Lindahl + VCG + Ostrom

### Lindahl (1919) — preços personalizados

**Lindahl, E. (1919/1958). "Just Taxation: A Positive Solution." Em R. A. Musgrave & A. T. Peacock (eds.), *Classics in the Theory of Public Finance*, Macmillan.**

**Ideia.** Para cada agente \(i\), defina um **preço pessoal** \(\tau^i\) cobrado por unidade de bem público consumida. A restrição orçamentária do agente é \(x^i + \tau^i G \le \omega^i\). UMP entrega \(\text{TMS}^i = \tau^i\). Equilíbrio de Lindahl: encontrar \((\tau^{1*}, \ldots, \tau^{I*}, G^*)\) tal que:

- **Cada agente** maximiza utilidade dados \(\tau^i\): \(\text{TMS}^i_{G,x}(x^{i*}, G^*) = \tau^{i*}\).
- **Mercado fecha:** custo total do bem público = soma das contribuições. \(\sum_i \tau^{i*} = \text{TMT}\).

Substituindo a primeira na segunda: \(\sum_i \text{TMS}^i = \text{TMT}\) — **Samuelson é exatamente o equilíbrio de Lindahl.**

**Lindahl é "competitivo" para bens públicos.** Como AD é competitivo para bens privados.

### Onde Lindahl falha: revelação de preferências

O equilíbrio de Lindahl exige que cada \(\tau^i\) seja calculado com base em \(\text{TMS}^i\) verdadeira. Mas **se o agente sabe que sua \(\tau^i\) será cobrada com base no que ele declarar**, ele tem incentivo a declarar **\(\text{TMS}^i\) baixa** para pagar menos. Free-riding ressurge — agora como problema de revelação, não de comportamento.

> **Pergunta-driver para a próxima sessão.** Existe mecanismo onde declarar a verdade é estratégia dominante?

### VCG (Vickrey 1961, Clarke 1971, Groves 1973) — verdade dominante

**Vickrey, W. (1961). "Counterspeculation, Auctions, and Competitive Sealed Tenders." *Journal of Finance* 16, 8–37, [DOI 10.1111/j.1540-6261.1961.tb02789.x](https://doi.org/10.1111/j.1540-6261.1961.tb02789.x).**

**Clarke, E. H. (1971). "Multipart Pricing of Public Goods." *Public Choice* 11, 17–33, [DOI 10.1007/BF01726210](https://doi.org/10.1007/BF01726210).**

**Groves, T. (1973). "Incentives in Teams." *Econometrica* 41(4), 617–631, [DOI 10.2307/1914085](https://doi.org/10.2307/1914085).**

**Setup.** Decisão pública discreta \(d \in \mathcal{D}\) (e.g., construir ponte sim/não). Cada agente \(i\) tem valoração privada \(v^i(d)\) (utilidade pelo resultado \(d\) em unidades de moeda). Decisão socialmente ótima: \(d^* = \arg\max_{d} \sum_i v^i(d)\).

**Mecanismo VCG (versão pivot/Clarke).**

1. Cada agente declara \(\hat v^i(\cdot)\). Mecanismo escolhe \(d^* = \arg\max \sum_i \hat v^i(d)\).
2. Cada agente paga **transferência \(t^i = h^i(\hat v_{-i}) - \sum_{j \neq i} \hat v^j(d^*)\)**, onde \(h^i(\hat v_{-i})\) é uma função arbitrária dos relatos dos outros (não depende de \(\hat v^i\)).

A **escolha canônica** de \(h^i\) (Clarke pivot) é \(h^i(\hat v_{-i}) = \max_{d} \sum_{j \neq i} \hat v^j(d)\), o que faz o agente pagar **somente** se sua presença mudou a decisão (pivot) — ele paga o "dano externo" (em valoração) que sua opinião causou aos outros.

**Teorema (Vickrey-Clarke-Groves).** Sob VCG, declarar verdadeiramente \(\hat v^i = v^i\) é **estratégia dominante** para cada agente \(i\) (independente do que os outros declarem). Em equilíbrio, decisão é \(d^* = \arg\max \sum_i v^i\) — eficiente.

**Sketch da demonstração** (do dominância). Suponha \(i\) declara \(\hat v^i\). Sua utilidade líquida (transferência negativa = pagamento):
\[
v^i(d^*) - t^i = v^i(d^*) - h^i(\hat v_{-i}) + \sum_{j \neq i} \hat v^j(d^*).
\]
Como \(h^i\) não depende de \(\hat v^i\), maximizar essa utilidade é equivalente a maximizar \(v^i(d^*) + \sum_{j \neq i} \hat v^j(d^*)\). Mas \(d^*\) é escolhido pelo mecanismo como argmax de \(\hat v^i + \sum_{j \neq i} \hat v^j\). Se \(\hat v^i = v^i\), maximizamos exatamente \(v^i + \sum_{j \neq i} \hat v^j\) — alinhado. **Verdade é dominante.** \(\blacksquare\)

> **O preço de VCG.** Não é orçamento-balanceado em geral (\(\sum_i t^i\) pode ser positivo ou negativo, raramente zero). Para implementação real, governo absorve o residual. Há também limitação domínio: VCG funciona para preferências quase-lineares; em domínios irrestritos, Gibbard-Satterthwaite + Roberts limitam.

### Box Mundo 🌍 — FCC Spectrum Auctions (US 1994) como aplicação real de VCG

A **Federal Communications Commission (FCC)** dos EUA começou em 1994 a leiloar espectro de rádio para telefonia móvel. Inicialmente usaram um leilão simultâneo de múltiplas rodadas (SMR); para licenças complementares (que se valorizam quando combinadas), variantes inspiradas em VCG (e.g., Combinatorial Clock Auction) entraram nas rodadas seguintes (FCC Auction 73, 2008+).

A teoria por trás (Milgrom 2000, Cramton 2013) é descendente direta de Vickrey 1961: leilão de segundo preço (Vickrey) é VCG aplicado à decisão "quem leva o item". Verdade na valoração é dominante — leilões geram receita e alocação eficiente sem coleta de dados externa. Entre 1994 e 2020, FCC arrecadou >US$ 100 bi em espectro via mecanismos VCG-derivados.

### Box Brasil 🇧🇷 — PMCMV: subsídio cruzado como Lindahl implícito

O **Programa Minha Casa, Minha Vida (PMCMV)**, lançado em 2009, segmenta beneficiários por faixa de renda e aplica subsídios distintos: famílias da Faixa 1 (até ~3 salários mínimos) recebem subsídio integral; Faixa 2 e 3 pagam à taxa de juros + parcela proporcional do custo. Em forma reduzida, isso equivale a **preços personalizados** pelo bem público "habitação social" — interpretação Lindahl.

A diferença com Lindahl puro: o "preço" não vem da declaração da \(\text{TMS}\) individual; vem de critério institucional (renda como proxy de capacidade-de-pagar). Funciona aproximadamente porque renda e disposição-a-pagar são correlacionadas — mas é Lindahl com proxy, não Lindahl original. O programa é uma das maiores transferências cruzadas do orçamento federal brasileiro.

### Ostrom (1990) — common-pool com governance institucional

**Ostrom, E. (1990). *Governing the Commons: The Evolution of Institutions for Collective Action*. Cambridge University Press.** (Nobel de Economia 2009.)

A "tragédia dos comuns" (Hardin 1968, *Science* 162, 1243–1248, [DOI 10.1126/science.162.3859.1243](https://doi.org/10.1126/science.162.3859.1243)) prevê que recursos comuns (pesca, pasto, irrigação) tendem a ser sobre-explorados sob regime de acesso aberto. Mas Ostrom documentou empiricamente: **comunidades reais frequentemente coordenam soberania local** (regras de uso, monitoramento mútuo, sanções graduadas) **e evitam a tragédia sem privatizar nem nacionalizar**.

Os **8 princípios de Ostrom** (cobre: limites de membros, regras adaptadas ao contexto, monitoramento, sanções graduadas, conflitos resolvidos localmente, autonomia organizacional reconhecida, organização aninhada). Implicação para o curso: **Coase + governance institucional > Coase puro.** A solução do common-pool não é nem mercado nem Estado puro; é instituição comunitária com regras de uso e enforcement.

> **Pedagogia.** Para o MPE, Ostrom é **citação cultural-econômica fundamental** (e Nobel). O que mais importa do framework: reconhecer que **soluções para externalidades não são limitadas a Pigou + Coase + Estado** — há a quarta via, governance institucional, que opera fora do binário taxa/barganha.

### Micro-checkpoints (2 itens — obrigatórios)

**MC5.** O equilíbrio de Lindahl com preços personalizados \(\tau^i\) implementa qual condição em equilíbrio?

- (a) \(\tau^i = p\) para todos \(i\) (mesmo preço).
- (b) \(\tau^i = \text{TMT}\) para cada \(i\) individualmente.
- (c) **\(\sum_i \tau^i = \text{TMT}\) com \(\tau^i = \text{TMS}^i\) para cada \(i\) — equivale exatamente à condição de Samuelson \(\sum_i \text{TMS}^i = \text{TMT}\).** **[correta]**
- (d) \(\tau^i\) não importa, apenas \(G\) importa.

**MC6.** Sob mecanismo VCG, declarar verdadeiramente sua valoração é estratégia dominante porque:

- (a) Os agentes são honestos por natureza.
- (b) **A transferência VCG (Clarke pivot) descola a declaração do agente \(i\) de seu pagamento — a função \(h^i\) não depende de \(\hat v^i\). Logo, maximizar utilidade líquida do agente \(i\) é equivalente a maximizar \(v^i(d) + \sum_{j \neq i} \hat v^j(d)\), e o mecanismo escolhe argmax dessa soma quando \(\hat v^i = v^i\). Verdade alinha incentivo.** **[correta]**
- (c) A lei pune mentira.
- (d) Os agentes têm preferências quase-lineares e valorações idênticas.

---

## Seção 6 — Exercícios de papel

**Tempo-alvo:** 15 min para abordagem (não para resolução completa). Resolução pode ser feita até a aula presencial.

> **Calibração.** Os enunciados são **auto-contidos** e calibrados ao **piso N&S 12e §19.2 / §19.5 / §19.6**. Quem preferir abordagem panorâmica encontra material equivalente em ZaE Cap. 20.

### EP-1 (obrigatório, calibre intermediário) — Pigou em modelo parcial

> **Nota.** Os parâmetros aqui (curvas de oferta e MEC) são **distintos** dos do Exercício 1 dos avaliativos. Mesma estrutura conceitual (taxa Pigou ótima), calibração numérica diferente.

Considere mercado parcial com demanda inversa \(P(q) = 24 - q\), curva de custo privado marginal \(\text{MC}_p(q) = 6 + q\), e custo externo marginal \(\text{MEC}(q) = q\) (linear).

(a) Calcule o equilíbrio privado \(q^p\) e o preço correspondente \(P^p\).
(b) Calcule o ótimo social \(q^*\) (igualando \(P\) a \(\text{MC}_s = \text{MC}_p + \text{MEC}\)) e o preço correspondente \(P^*\).
(c) Calcule o imposto Pigou ótimo \(t^* = \text{MEC}(q^*)\). Verifique que com esse imposto, o produtor escolhe \(q^*\).
(d) Calcule o **triângulo de Harberger** (perda de bem-estar do não-imposto): área entre \(\text{MC}_s\) e \(P\) entre \(q^*\) e \(q^p\).

**Abordagem (textarea, mín. 10 caracteres):** descreva como você vai resolver — ordem das contas e qual é o "ponto de fé" (e.g., "vou primeiro encontrar \(q^p\) sem imposto, depois \(q^*\) com MC social").

### EP-2 (obrigatório, calibre intermediário) — Samuelson em economia simétrica

> **Nota.** Parâmetros distintos dos do Exercício 3 dos avaliativos.

Economia com \(I = 4\) consumidores idênticos. Preferências quase-lineares \(u^i(x^i, G) = x^i + 6\sqrt{G}\). Bem público com tecnologia linear \(\text{TMT}_{G,x} = 4\) (4 unidades de bem privado por 1 unidade de bem público).

(a) Calcule \(\text{TMS}^i_{G,x}\) para cada agente em função de \(G\). (Use \(\text{TMS} = u_G/u_x\).)
(b) Aplique a condição de Samuelson \(\sum_i \text{TMS}^i = \text{TMT}\) e calcule \(G^*\).
(c) Calcule o nível Nash de provisão voluntária \(G^N\) (equilíbrio simétrico onde cada agente, dado \(g_{-i}\), escolhe \(g^i\) com CPO \(\text{TMS}^i = 1\) no mercado de bem privado vs. bem público). **Compare \(G^N\) com \(G^*\) e calcule a razão \(G^N/G^*\).**

**Abordagem (textarea, mín. 10 caracteres):** descreva em 2-3 linhas a fórmula de \(G^*\) e como você obterá \(G^N\).

### EP-3 (bônus, calibre intermediário) — Coase em barganha bilateral

Duas firmas: A produz e gera fumaça (custo externo unitário em B = 5 por unidade de output de A), B é restaurante a céu aberto (perde 5 unidades de lucro por unidade de fumaça). A escolhe \(q_A\) com \(\text{MC}^A(q_A) = q_A\) e demanda \(P^A = 20\) (constante). Sem o problema, A produziria até \(q^p_A = 20\). Com Coase (custos de transação zero):

(a) Argumente que o socialmente ótimo \(q^*_A\) satisfaz \(P^A = \text{MC}^A + \text{MEC} \Rightarrow 20 = q_A + 5 \Rightarrow q^*_A = 15\).
(b) Suponha que B tem direito ao ar limpo. Quanto B cobra de A para tolerar \(q_A\) unidades? **Discuta:** a transação se realiza até \(q^*_A = 15\). Verifique que A está disposto a pagar por \(q_A \le 15\) e B aceita.
(c) Suponha agora que A tem direito a poluir. Quanto B paga a A para reduzir? **Discuta:** mesmo \(q^*_A = 15\) emerge. (Coase: alocação independe da atribuição de direitos sob hipóteses padrão.)

**Abordagem (textarea, opcional):** descreva o mecanismo da barganha e por que \(q^*_A\) é o mesmo nos dois casos.

---

## Seção 7 — Checkpoint final de síntese

3 questões sintetizando externalidades → Pigou/Coase → Samuelson → Mecanismos.

**Q1 (síntese — diagnóstico).** Externalidade tecnológica negativa entre dois agentes quebra o 1º TBE (Aula 5) porque:

- (a) Os preços são incorretos.
- (b) **A função-utilidade ou tecnologia de um agente depende da ação de outro fora do sistema de preços** — o argumento de contradição via \(p^* \cdot \tilde x > p^* \cdot \omega\) não captura a interação externa, e \(\tilde x\) Pareto-superior pode existir sem violação de viabilidade. **[correta]**
- (c) Os agentes são irracionais.
- (d) O 1º TBE não vale em economias com produção.

**Q2 (síntese — bens públicos).** A condição de Samuelson \(\sum_i \text{TMS}^i = \text{TMT}\) difere da condição de bem privado \(\text{TMS}^i = \text{TMT}\) (cada agente) porque:

- (a) Bem público é mais caro de produzir.
- (b) **Bem público é não-rival: a mesma unidade satisfaz vários agentes simultaneamente, então o "valor marginal social" é a soma das valorações marginais individuais (soma vertical), não cada uma separadamente (soma horizontal).** **[correta]**
- (c) Bem público é sempre subprovido.
- (d) Bem público não tem TMS bem-definida.

**Q3 (síntese — mecanismos).** Sob VCG (Clarke pivot), a estratégia dominante de cada agente é **declarar verdadeiramente** porque:

- (a) Não há custo de mentir.
- (b) Os pagamentos são iguais para todos.
- (c) **A transferência paga por cada agente depende do relato dos outros (\(h^i(\hat v_{-i})\)), não do seu próprio (\(\hat v^i\)). Maximizar utilidade líquida então equivale a maximizar \(v^i(d) + \sum_{j \neq i} \hat v^j(d)\) — alinhado ao critério social. Verdade é argmax.** **[correta]**
- (d) VCG é orçamento-balanceado.

---

## Seção 8 — Reflexão qualitativa

Dois campos obrigatórios (mín. 10 caracteres cada):

1. **"Que conceito ou passagem ainda está nebuloso pra você?"**
   Sugestões de auto-diagnóstico: "Por que \(t^* = \text{MEC}(q^*)\) e não \(\text{MEC}(q^p)\)?", "Como visualizar a soma vertical de demandas em bem público?", "Por que o Coase não funciona com 1.000 vizinhos?", "Como o VCG escapa de Gibbard-Satterthwaite?".

2. **"Qual ponto você quer ver discutido em sala?"**
   Sugestões: "Quero ver a derivação de Samuelson via Lagrangiano no quadro com números.", "Quero entender o EU ETS na prática — quanto o preço da tonelada de CO\(_2\) variou?", "Como o PMCMV se compara a um mecanismo de Lindahl puro?", "Onde a tragédia dos comuns aparece no Brasil?".

---

## Apêndice A — Tabela de notação canônica desta aula

| Símbolo | Significado |
|---|---|
| \(\text{MC}_p(q)\) | custo privado marginal |
| \(\text{MEC}(q)\) | custo externo marginal |
| \(\text{MC}_s = \text{MC}_p + \text{MEC}\) | custo social marginal |
| \(q^p\) | quantidade de equilíbrio privado |
| \(q^*\) | quantidade socialmente ótima |
| \(t^* = \text{MEC}(q^*)\) | imposto Pigou ótimo |
| \(G\) | nível de bem público |
| \(\text{TMS}^i_{G,x}\) | taxa marginal de substituição de bem público por privado para o agente \(i\) |
| \(\text{TMT}_{G,x}\) | taxa marginal de transformação |
| \(\tau^i\) | preço pessoal de Lindahl |
| \(d^*\) | decisão socialmente ótima (VCG) |
| \(v^i(d)\) | valoração do agente \(i\) pela decisão \(d\) |
| \(t^i\) | transferência VCG do agente \(i\) |
| \(h^i(\hat v_{-i})\) | função arbitrária dos outros relatos (Clarke pivot) |

---

## Apêndice B — O que esta aula **não** faz (anti-overclaim)

- **Não cobre seleção adversa nem risco moral.** Aula 8.
- **Não derivar Gibbard-Satterthwaite ou Roberts** (limites de implementabilidade dominante). Citamos.
- **Não modela governance institucional formalmente** (Ostrom 1990 fica em box). Pré-monitoria 4 detalha.
- **Não trata externalidade dinâmica** (estoque de poluentes, recursos esgotáveis). Citamos como extensão.
- **Não cobre Black-Scholes em derivativos verdes** (cap-and-trade dinâmico). Citamos como exercício para casa.
- **Não derivar o equilíbrio de Lindahl como caso particular de equilíbrio AD com preços contingentes.** Há literatura (Foley 1970), mas fica fora do escopo desta aula.
- **Não trata mecanismos balanceados** (AGV/Arrow 1979, d'Aspremont-Gérard-Varet). Citamos VCG como o canônico; existência de mecanismos exatos com orçamento balanceado é tópico avançado.

> **Disclaimer estilístico.** Esta aula é **pesada em diagnóstico + alta em ferramental + leve em fórmulas finais**. Saia com 5 coisas na ponta da língua: (1) a tipologia tecnológica × pecuniária, (2) Pigou \(t^* = \text{MEC}(q^*)\), (3) Coase + 3 hipóteses, (4) Samuelson \(\sum \text{TMS} = \text{TMT}\), (5) VCG como verdade-dominante. Esses são os 5 fatos pedagógicos da Aula 7. **Aula 8** vai introduzir info assimétrica como terceira falha; **Aula 9** vai voltar a mecanismos via sinalização e matching.
