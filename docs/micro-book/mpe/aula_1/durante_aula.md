# Aula 1 — Durante a Aula

> **Status:** esqueleto. Campos `{{...}}` e `> TODO:` a preencher em iteração futura.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** 22/04/2026 (quarta-feira)
- **Horário:** 19:30–22:30 (180 min)
- **Tema:** Teoria do Consumidor I — Preferências, Axiomas e Utilidade
- **Objetivo de aprendizagem:** formalizar preferências via axiomas, demonstrar (ao nível de ideia) representação por utilidade, distinguir ordinalidade de cardinalidade e classificar formas funcionais (Cobb-Douglas, CES, quasilinear, Leontief).
- **Pré-requisitos assumidos:** pré-aula concluída (ZaE §§3.1–3.4, N&S 12e cap. 3, checkpoint de 6 itens, N&S 3.1 e 3.3 no papel).
- **Nível pedagógico:** meio-termo entre graduação avançada e *qualifier* diluído. Piso N&S; teto de conforto J-R onde o rigor paga o custo.

---

## Timing master (180 min = 3h)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura e triagem de dúvidas | 19:30 | 19:40 | 10 min |
| 1 | Mini-lecture: axiomas e teorema da representação | 19:40 | 20:25 | 45 min |
| P1 | Pausa curta | 20:25 | 20:30 | 5 min |
| 2 | Resolução guiada: TMS para CES e quasilinear | 20:30 | 21:10 | 40 min |
| 3 | Box Brasil: consumo domiciliar (POF/IBGE) | 21:10 | 21:35 | 25 min |
| P2 | Pausa curta | 21:35 | 21:40 | 5 min |
| 4 | Prática em dupla: N&S 3.5 e 3.7 + fechamento | 21:40 | 22:30 | 50 min |
| 5 | Síntese e ponte para Aula 2 | (dentro do bloco 4) | 22:30 | (incluído nos 10min de fechamento do bloco 4) |

**Checagem de soma:** 10 + 45 + 5 + 40 + 25 + 5 + 50 = **180 min**. Conforme Plano oficial: 45 + 40 + 25 + 50 = **160 min** + 20 min de abertura/pausas. **OK.**

---

## Bloco 0 — Abertura (10 min, 19:30–19:40)

- [ ] **Check-in (3 min):** confirmar chamada, retomar o contrato pedagógico do curso em uma frase, lembrar dinâmica da aula.
- [ ] **Triagem de dúvidas (7 min):** puxar do dashboard as 2–3 dúvidas agregadas mais comuns da pré-aula; anunciar onde serão tratadas ao longo dos blocos. Não resolver agora.
  - > TODO: preencher no dia, a partir do dashboard da plataforma.

> **Observação:** Aula 1 não terá quiz-surpresa — abertura de curso é para calibrar expectativa e contrato, não para sobrecarregar.

---

## Bloco 1 — Mini-lecture: axiomas e teorema da representação (45 min, 19:40–20:25)

Cada sub-item tem tempo alocado, o que vai no quadro, equação-chave e ponte para o próximo.

### 1.a. Motivação (~5 min)

- [ ] **Quadro:** pergunta de abertura — "por que axiomatizar preferência?"
- [ ] **Pontos-chave:** preferência como primitivo; utilidade como *representação conveniente*, não como grandeza mensurável.
- [ ] **Ponte:** "se vamos trabalhar com uma relação $\succeq$, quais propriedades ela precisa ter para a matemática colar?"

### 1.b. Cinco axiomas (~20 min)

Ordem adotada (calibre de revisão pelo Darcio): **(1) Completude → (2) Transitividade → (3) Continuidade → (4) Monotonicidade → (5) Convexidade**. Lógica: os três primeiros são "racionalidade + topologia" (garantem representação); os dois últimos dão forma útil à função.

- [ ] **(1) Completude** (~2 min) — definição formal; exemplo e contraexemplo (indecisão genuína).
- [ ] **(2) Transitividade** (~3 min) — definição; armadilha de ciclos (paradoxo das máquinas de dinheiro).
- [ ] **(3) Continuidade** (~5 min) — definição via conjuntos de nível fechados; contraexemplo clássico (preferências lexicográficas) — motivar por que não há representação contínua.
  - > TODO: decidir se faz a demonstração do contraexemplo lexicográfico no quadro ou apenas cita (tempo-crítico aqui).
- [ ] **(4) Monotonicidade** (~5 min) — forte, fraca, não-saciedade local; implicações para indiferença (sem "faixas" de indiferença).
- [ ] **(5) Convexidade** (~5 min) — convexidade e convexidade estrita; interpretação econômica (diversificação preferida); ligação com TMS decrescente.
- [ ] **Equação-chave do bloco:** $x \succeq y \Leftrightarrow u(x) \geq u(y)$ no quadro, **aguardando** o teorema da representação.

### 1.c. Teorema da representação (Debreu) (~15 min)

- [ ] **Enunciado formal no quadro:** se $\succeq$ em $X \subseteq \mathbb{R}^n_+$ é **completa, transitiva e contínua**, então existe $u: X \to \mathbb{R}$ contínua tal que $x \succeq y \Leftrightarrow u(x) \geq u(y)$.
- [ ] **Ideia de prova (não prova formal):** construção via conjuntos de nível / função de utilidade por "pacote de referência". Referenciar J-R cap. 1 para quem quiser o passo-a-passo.
  - > TODO: escolher uma das duas construções padrão (Debreu original vs. prova pela diagonal com bem-referência) e explicitar qual entra no quadro.
- [ ] **Monotonicidade e convexidade** aparecem como **adicionais** sobre a representação — não são necessárias para existir $u$, mas dão regularidade à função (continuidade diferenciável, quasiconcavidade).
- [ ] **Ponte:** "ok, existe $u$. Mas qual $u$? E qualquer transformação funciona?"

### 1.d. Ordinalidade vs. cardinalidade (~5 min)

- [ ] **Quadro:** se $v = f(u)$ com $f$ estritamente crescente, $v$ representa a mesma $\succeq$.
- [ ] **Consequência operacional:** TMS é invariante a transformação monótona; magnitudes de $u$ **não são**.
- [ ] **Tensão útil:** distinguir claramente do caso de **utilidade esperada** (cardinalidade com classe de afins) — só anunciar, aparece na Aula 5.
- [ ] **Ponte para o Bloco 2:** "agora que sabemos que $u$ existe e é única a menos de transformação monótona, vamos calcular TMS em formas funcionais concretas."

---

## Pausa 1 (5 min, 20:25–20:30)

---

## Bloco 2 — Resolução guiada: TMS para formas funcionais (40 min, 20:30–21:10)

Estratégia: apresentar **Cobb-Douglas, Leontief, CES e quasilinear como funções autônomas**, cada uma com sua lógica econômica própria. A unificação via família CES (Cobb-Douglas e Leontief como casos-limite) fica para a **monitoria**, onde o calibre algébrico (L'Hôpital em $\rho \to 0$, argumento via min em $\rho \to -\infty$) é tratado com o tempo que merece.

### 2.a. Revisar definição de TMS (~5 min)

- [ ] **Quadro:** $\text{TMS}_{12} = -\frac{dx_2}{dx_1}\Big|_{u=\bar{u}} = \frac{u_1}{u_2}$.
- [ ] **Ênfase:** TMS é objeto **ordinal** — invariante a transformação monótona.

### 2.b. Cobb-Douglas (~8 min)

- [ ] **Forma:** $u(x_1, x_2) = x_1^\alpha x_2^{1-\alpha}$, $\alpha \in (0,1)$.
- [ ] **Derivação no quadro:** $\text{TMS} = \frac{\alpha}{1-\alpha}\cdot \frac{x_2}{x_1}$.
- [ ] **Leitura econômica:** parcelas de gasto constantes em $\alpha$ e $1-\alpha$; elasticidade de substituição **unitária** (antecipar sem derivar — fica na monitoria).
- [ ] **Transformação log:** $\ln u = \alpha \ln x_1 + (1-\alpha)\ln x_2$ — mesma preferência, manipulação algébrica mais confortável. Ponto de ordinalidade vivo.

### 2.c. Leontief (~5 min)

- [ ] **Forma:** $u(x_1, x_2) = \min\{a x_1,\, b x_2\}$.
- [ ] **Curva de indiferença em L:** bens em proporção fixa; TMS **não-diferenciável** no kink (indefinida no vértice, $0$ ou $\infty$ nos lados).
- [ ] **Leitura econômica:** complementaridade perfeita — sapato esquerdo e direito, CPU e RAM, ingredientes de receita.

### 2.d. CES genérica (~12 min)

- [ ] **Forma:** $u(x_1, x_2) = \left(\alpha x_1^\rho + (1-\alpha) x_2^\rho\right)^{1/\rho}$, $\rho \leq 1$, $\rho \neq 0$.
- [ ] **Derivação no quadro:** derivadas parciais, razão, simplificação até $\text{TMS} = \frac{\alpha}{1-\alpha}\left(\frac{x_2}{x_1}\right)^{1-\rho}$.
  - > TODO: pré-calcular a passagem algébrica para apresentar limpo.
- [ ] **Elasticidade de substituição:** $\sigma = 1/(1-\rho)$. Indexar os três regimes **nominalmente** (substitutos perfeitos $\sigma=\infty$; Cobb-Douglas $\sigma=1$; Leontief $\sigma=0$) **sem** derivar os limites — anunciar que isso é objeto da monitoria.
- [ ] **Leitura econômica:** CES generaliza famílias já vistas em 2.b e 2.c; útil em macro (produção), IO (demanda por variedades), finanças (tolerância ao risco).

### 2.e. Quasilinear (~8 min)

- [ ] **Forma:** $u(x_1, x_2) = v(x_1) + x_2$, $v$ crescente e côncava.
- [ ] **Derivação:** $\text{TMS} = v'(x_1)$ — depende **só de $x_1$**.
- [ ] **Leitura econômica:** efeito-renda zero no bem 1 (interior); excedente do consumidor bem-definido; forma padrão em IO aplicada e public.

### 2.f. Mini-exercício numérico (~2 min)

- [ ] **Placeholder:** calcular TMS de Cobb-Douglas $u = x_1^{0.4}\, x_2^{0.6}$ no ponto $(4, 9)$. Resposta-alvo: $\text{TMS} = \frac{0.4}{0.6}\cdot \frac{9}{4} = 1.5$.
  - > TODO: confirmar número "bonito" antes da aula; trocar por CES/quasilinear se o ritmo permitir expansão.

> **Ganchos explícitos para a monitoria inicial:**
> - Deduzir Cobb-Douglas como limite da CES quando $\rho \to 0$ (via log + L'Hôpital).
> - Deduzir Leontief como limite da CES quando $\rho \to -\infty$ (argumento heurístico via min, cuidado com o kink).
> - Calcular $\sigma$ diretamente pela definição $\sigma = \frac{d\ln(x_2/x_1)}{d\ln \text{TMS}}$ para cada forma.

---

## Bloco 3 — Box Brasil: consumo domiciliar (POF/IBGE) (25 min, 21:10–21:35)

### 3.a. Slides de dado real (~10 min)

- [ ] **Slide 1:** estrutura de gasto das famílias brasileiras por faixa de renda (POF mais recente — > TODO: confirmar edição POF e atualizar citação).
- [ ] **Slide 2:** participação de alimentação, habitação, transporte e educação/saúde — mostrar Lei de Engel *implícita*.
- [ ] **Slide 3:** comparação entre decil inferior e decil superior — o que salta aos olhos?
- [ ] **Slide 4 (opcional, se o tempo permitir):** série temporal da participação de alimentação fora do domicílio — sinal de mudança de preferências ou de renda?
- [ ] > TODO: decidir se os dados vão em slides ou direto em gráfico interativo do livro ZaE cap. 3 (preferência: reaproveitar figura do livro).

### 3.b. Discussão guiada (~10 min)

- [ ] **Pergunta 1:** qual padrão de preferência os dados "revelam"? (ponte com preferência revelada, que será formalizada em aula futura).
- [ ] **Pergunta 2:** a convexidade como axioma é plausível olhando os microdados?
- [ ] **Pergunta 3:** onde a hipótese de preferências idênticas entre agentes quebra, e por que isso importa para política pública (transferência de renda, focalização)?

### 3.c. Tensão ordinalidade × microdados (~5 min)

- [ ] **Ponto:** se utilidade é ordinal, como comparar bem-estar entre famílias? Introduzir (sem resolver) o problema de comparação interpessoal — volta em EG (Aula 4) e externalidades (Aula 7).
- [ ] **Fechamento do box:** uma frase de *takeaway*, não de lição de casa.

---

## Pausa 2 (5 min, 21:35–21:40)

---

## Bloco 4 — Prática em dupla: N&S 3.5 e 3.7 + fechamento (50 min, 21:40–22:30)

### 4.a. Enunciados abreviados (~3 min)

- [ ] **N&S 12e — 3.5:** > TODO: confirmar enunciado e abreviar em 2 linhas. Tópico provável: manipulação de forma funcional e verificação de axiomas.
- [ ] **N&S 12e — 3.7:** > TODO: confirmar enunciado e abreviar em 2 linhas. Tópico provável: TMS e classificação de preferência.
- [ ] **Formação de duplas:** aleatória ou por proximidade — > TODO: decidir política uniforme para o curso (recomendação: aleatória, para mixar backgrounds).

### 4.b. Resolução em dupla (~25 min)

- [ ] **Instruções:** papel e caneta, professor circula, Alberto também (se presente nesta aula).
- [ ] **Sinalização de progresso:** duplas levantam sinalizador quando travam em ponto específico.
- [ ] > TODO: checklist de armadilhas previstas para o professor monitorar (mínimo: erro de sinal em TMS, confusão entre quasiconcavidade e concavidade, aplicação de monotonicidade onde só vale não-saciedade local).

### 4.c. Consolidação no quadro (~12 min)

- [ ] **3.5:** um aluno (voluntário ou chamado) apresenta; professor refina no quadro.
- [ ] **3.7:** idem.
- [ ] **Armadilhas comuns a destacar:** > TODO: listar 2–3 após testar exercício previamente.

### 4.d. Síntese e ponte para Aula 2 (~10 min)

- [ ] **Síntese em 3 pontos:**
  - > TODO: 3 bullets do tipo "se você sair com isso, a aula valeu".
  - (esboço: (i) axiomas → representação por utilidade; (ii) ordinalidade e invariância da TMS; (iii) CES como família unificadora).
- [ ] **Ponte para Aula 2:** "na próxima, $u$ vira objeto de maximização sob restrição orçamentária — nasce a demanda marshalliana. E do dual nasce a função gasto."
- [ ] **Pré-aula 2:** liberada na plataforma até {{data}}; tempo-alvo 75–90 min; cobrirá UMP, EMP e ida-e-volta da dualidade.
- [ ] **Material extra (opcional):** > TODO: decidir se vai indicar Jehle-Reny cap. 1 como leitura "teto" para quem quer mais formalismo.

---

## Materiais e recursos (checklist do professor)

- [ ] Slides `reveal.js` (padrão Insper `#C8102E`, MathJax).
- [ ] Gráficos interativos do ZaE cap. 3 abertos em aba (curvas de indiferença CES, Leontief, quasilinear).
- [ ] Dados POF — slides ou figura do livro.
- [ ] Lista de chamada.
- [ ] Marcador de quadro (x3, cores distintas — verde para TMS, preto para derivações).
- [ ] Acesso ao dashboard da plataforma para triagem de dúvidas.

---

## Notas para o professor (autocalibração em tempo real)

- **Se a turma trava no axioma de continuidade (Bloco 1.b):** resistir à tentação de entrar na prova completa do contraexemplo lexicográfico; cortar em 2 min e deixar o detalhe para a monitoria futura ou apêndice do livro.
- **Se a derivação da CES (Bloco 2.d) esticar além de 12 min:** cortar a manipulação algébrica no meio e entregar o resultado final pronto no quadro — Cobb-Douglas e Leontief já foram dados como funções autônomas em 2.b e 2.c, e os limites ficam para a monitoria.
- **Se o box POF (Bloco 3) engata discussão longa:** cortar em 25 min sem exceção; é Aula 1 e perder tempo aqui compromete a prática em dupla (Bloco 4), que é onde o aluno sai com "músculo" real.
- **Se o tempo de prática em dupla (Bloco 4.b) estoura:** reduzir a consolidação do 3.7 a "caminho + resultado" no quadro e sinalizar que a resolução completa fica na plataforma pós-aula. Nunca cortar o fechamento (4.d) — é a ponte para a pré-aula 2.
