# Monitoria 01 — Roteiro do Monitor (Alberto)

> **Status:** roteiro presencial minuto-a-minuto para a monitoria de **sábado 16/05/2026, 10:00–12:00, Insper**. Tema: **revisão integrada das Aulas 1 (Preferências/Axiomas), 2 (UMP/EMP/Dualidade) e 3 (Slutsky/Elasticidades/Bem-estar)**, com **extensão** dos pontos que as três aulas magistrais consolidaram só em Cobb-Douglas e que os exercícios avaliativos não chegaram a varrer em formas raras.

> **Para quem este documento é:** **Alberto Nishikawa** (monitor). Não é roteiro de aula magistral nem reapresentação dos axiomas; é o briefing do que **estender**, do que **trabalhar com a turma**, e dos **erros que provavelmente vão aparecer** dadas as reflexões que vão chegar pela Pré-M1 entre quarta 13/05 (fechamento do bundle Aula 1∪2) e sexta 15/05 (fechamento da Pré-M1).

> **Conexão com a Avaliação Final (24/06).** Aulas 1, 2 e 3 entram na **Parte I** da AF, com peso de **40%**. É o maior bloco da prova. Esta é a **primeira** monitoria — depois dela vêm M2 (Aula 4), M3 (Aula 5), M4 (Aulas 6–7), M5 (Aulas 8–9 + revisão geral). Aqui o foco é **consolidar dualidade e Slutsky em formas não-Cobb-Douglas**, porque a aula magistral foi obrigada a economizar tempo nas formas raras (CES com \(\rho \neq 0\), Stone-Geary com \(\gamma_i \neq 0\)) e a AF *vai* misturá-las.

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** sábado, 16/05/2026
- **Horário:** 10:00–12:00 (120 min)
- **Local:** Insper, sala a confirmar com a coordenação
- **Monitor:** Alberto Nishikawa
- **Audiência:** ~50 alunos do MPE, primeira monitoria do curso
- **Pré-requisitos do aluno:**
  - Aulas 1–3 cursadas (quartas 22/04, 29/04, 06/05).
  - **Pré-Monitoria 1** completada na plataforma (`pre-monitoria-01.html`, fecha sexta 15/05 22:00). Cobre: limites CES via L'Hôpital + lex sem continuidade (Aula 1); Roy/Shephard em CES com \(\rho \neq 0\) (Aula 2); Slutsky em Stone-Geary + Wold-Juréen 1953 + Heijman & von Mouche 2011 (Aula 3); cross-aulas N&S 4.10 + J-R 1.38 + sabor ANPEC quase-linear.
  - Quizzes e exercícios avaliativos das três aulas fechados em **06/05 18h** (calendário unificado Aula 1 ∪ Aula 2) e **13/05 18h** (Aula 3); gabaritos liberados 07/05 e 14/05 madrugada.
- **Calibre:** revisão e **extensão**. Não é primeira exposição. Foco operacional em **(i)** atender dúvidas trazidas pela Pré-M1 (campo `refl-alberto`), **(ii)** trabalhar 2 exercícios numéricos passo-a-passo em formas funcionais raras, **(iii)** apontar 4–5 erros típicos da AF Parte I.

---

## O que o aluno **já viu** antes do sábado (não repetir)

Pela Pré-M1 da plataforma, o aluno **já trabalhou em casa**:

1. **Limites CES via L'Hôpital** (Seção 2 da Pré-M1): \(\rho \to 0\) → CD; \(\rho \to -\infty\) → Leontief; \(\rho \to 1\) → linear. **Não rederivar L'Hôpital na utilidade** — o aluno já viu. Você pode usar o resultado como ponto de partida e mostrar o L'Hôpital aplicado **à função gasto** \(e(p, u)\) (extensão genuína).
2. **Lex e falha de continuidade** (Seção 2): construção \(x^n = (1 - 1/n, 2) \to (1, 2)\) vs. \((1, 1)\); conjunto inferior não-fechado. **Não refazer**, apenas referenciar.
3. **Roy/Shephard em CES com \(\rho \neq 0\)** (Seção 3): forma fechada de \(v(p, m)\) e \(e(p, u)\) com \(r = \rho/(\rho - 1)\), verificação numérica em \(\alpha = 1/2, \rho = -1\). **Não refazer a derivação algébrica genérica** — use como base para o exercício M1-1 abaixo (Stone-Geary, que é uma **outra** forma rara).
4. **Slutsky em Stone-Geary + Wold-Juréen** (Seção 4): \(u = -1/(x_1 - 1) - x_2\); CPO; conclusão de que Giffen estrito em forma fechada exige construção mais elaborada (Heijman & von Mouche 2011). **Não refazer Wold-Juréen**, mas você pode discutir a fronteira no exercício M1-3 ou em pergunta-disparo do Apêndice A.
5. **Sabor ANPEC quase-linear** (Seção 5): \(u = x + \ln y\); matriz de Slutsky **não** diagonal (substitutos Hicksianos via cruzados \(+1/p_y\)). Aluno tem o spoiler — **referencie no Bloco 2** ao discutir simetria.

**Conclusão operacional:** não dedique tempo a **introduzir** esses tópicos. Use-os como **alavanca**: o aluno chega com modelo na cabeça e pode aplicar no quadro.

## O que **provavelmente** vai aparecer no campo `refl-alberto`

Antecipação calibrada com base nos exemplos do textarea da Pré-M1 e nos pontos delicados das auditorias das Aulas 1–3. **Reler as reflexões reais na sexta 15/05 antes de finalizar a monitoria** — adaptar os blocos abaixo conforme densidade da demanda.

| Pedido típico | Bloco onde tratar |
|---|---|
| "N&S 4.10 completo no quadro — CV/EV em CD travou" | Bloco 3 — exercício M1-2 estende (CV/EV em CES com \(\sigma \neq 1\)); CD fica como caso-limite |
| "Stone-Geary completo — função gasto e LES" | Bloco 1 — extensão central: SG dualidade completa + Linear Expenditure System |
| "Construção de Giffen estrita em forma fechada" | Bloco 2 — discussão honesta + ponto de Heijman & von Mouche; **não** prometer Giffen-em-2-bens-fechado (não cabe em 30 min) |
| "Como a matriz de Slutsky vira teste econométrico" | Bloco 2 ou Apêndice B (M1-3 AIDS-lite) |
| "Por que Roy não dá Marshalliana em quase-linear de canto" | Bloco 1 — observação de canto + ponte com a Aula 3 |
| "AIDS na prática: como impor as 4 restrições" | Bloco 2 final + Apêndice C |
| "Limites CES no \(e(p,u)\) e \(h(p,u)\), não só na \(u\)" | Bloco 1 — extensão direta da Pré-M1 |

---

## Timing master (120 min)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + check-in das dúvidas | 10:00 | 10:10 | **10 min** |
| 1 | **Bloco A — Stone-Geary completo: dualidade, LES e o que sobra de Roy/Shephard fora de CD** | 10:10 | 10:40 | **30 min** |
| 2 | **Bloco B — Slutsky operacional: matriz de Slutsky, AIDS-lite e Giffen como fronteira (Hunan + feijão)** | 10:40 | 11:10 | **30 min** |
| P1 | Pausa | 11:10 | 11:20 | **10 min** |
| 3 | **Exercícios trabalhados ao vivo:** (i) Stone-Geary numérico com γ ≠ 0 (UMP + e + LES + simetria), (ii) CV/EV em CES com \(\sigma = 2\) (alta de preço grande) | 11:20 | 11:50 | **30 min** |
| 4 | Encerramento + ponte AF + erros típicos + dúvidas finais + ponte M2 | 11:50 | 12:00 | **10 min** |

**Soma:** \(10 + 30 + 30 + 10 + 30 + 10 = 120\) min. ✓

> **Variáveis de ajuste em tempo real.** Se o **Bloco A derrapa** em 5 min (turma demanda mais derivação SG completa), corte do Bloco B o item de AIDS-lite e mantenha apenas matriz de Slutsky + Giffen Hunan. Se o **Bloco B derrapa**, corte do Bloco 3 o exercício 2 (CV/EV CES) e mantenha apenas Stone-Geary numérico — é o exercício mais alinhado com Parte I da AF. Se ambos correm bem, o Bloco 3 pode ganhar 5 min para dúvidas individuais durante o "tempo de tentar".

---

## Bloco 0 — Abertura + check-in (10 min)

**10:00–10:10.**

### Roteiro

1. **Cumprimento e moldura (2 min).** "Bom dia. Monitoria 1 — primeira de cinco. Tema: extensões das Aulas 1, 2 e 3 — Preferências, Dualidade, Slutsky. Não vou repetir aula magistral. Vou cobrir o que **a Pré-M1 vocês fizeram** sinalizou que precisa de mais tempo, principalmente formas não-Cobb-Douglas. Próxima semana é a M2, com Equilíbrio Geral em trocas e produção."

2. **Check-in das dúvidas (5 min).** Pergunte abertamente: *"Quem fez a Pré-M1 quer compartilhar 1 dúvida que ficou nebulosa?"*
   - Anote no canto do quadro 3 a 5 tópicos.
   - Triagem rápida: marque ✅ ao lado do que cabe nos Blocos A, B ou 3; marque ⏭ no que é Aula 4+ ou está fora do escopo.
   - **Não tente resolver agora.** A função desse check-in é (a) ativar a turma e (b) dar contexto para a calibração dos blocos.
   - **Triagem específica de duas dúvidas-âncora** que vocês *vão* ouvir:
     - **"CV em CES — fica feio?"** → Bloco 3 exercício M1-2 resolve em forma fechada com \(\sigma = 2\).
     - **"Stone-Geary tem dualidade canônica?"** → Bloco 1 cobre integralmente.

3. **Conexão com AF (3 min).** Quadro:

   | Parte AF | Aulas | Peso |
   |---|---|---|
   | **I** | **1, 2, 3** | **40%** |
   | II | 4, 5, 6 | 30% |
   | III | 7, 8 | 20% |
   | IV | 9 | 10% |

   > "Aulas 1, 2 e 3 são **40%** da prova — o maior bloco. Hoje a gente consolida a parte que provavelmente vai aparecer e que **não** foi exaustivamente vista em sala: dualidade fora de CD, Slutsky em forma matricial, e CV/EV com substituição imperfeita."

### Transição para o Bloco A

> "Começamos com Stone-Geary. Por quê? Porque a aula magistral derivou \(x^M, v, h, e\) em Cobb-Douglas e a Pré-M1 estendeu para CES. Stone-Geary é a **terceira** forma canônica que aparece em estimação empírica (LES — Linear Expenditure System — Stone 1954, *Economic Journal*) e que, se você dominar, te deixa pronto para AIDS no Bloco B. É a ponte natural entre Aula 2 (dualidade) e estimação real de demanda."

---

## Bloco A — Stone-Geary completo: dualidade, LES, ponte com AIDS (30 min)

**10:10–10:40.**

### Objetivo do bloco

1. **Estender** o exemplo da Pré-M1 (Stone-Geary com bem inferior por construção) para a forma canônica simétrica \(u = (x_1 - \gamma_1)^\alpha (x_2 - \gamma_2)^{1-\alpha}\), derivar **dualidade completa** (\(x^M, v, h, e\)) e mostrar que ela gera o **Linear Expenditure System** — modelo de estimação canônico em demanda.
2. **Demonstrar** que Roy e Shephard "passam pelo \(\gamma\)" sem se quebrar, mas que a **interpretação** dos parcelas de gasto deixa de ser CD.
3. **Sketch** opcional (se demanda no `refl-alberto` for significativa) do limite CES → CD aplicado **à função gasto**, complementando a Pré-M1 que fez L'Hôpital só na utilidade.

### Estrutura interna (30 min)

#### A.1 (12 min) — Stone-Geary: derivação completa de \(x^M, v, h, e\)

**O que o aluno já tem da Pré-M1 e da Aula 3** (não rederivar):

- Sabe que SG admite o atalho \(\tilde x_i = x_i - \gamma_i\) → CD em \((\tilde x_1, \tilde x_2)\) com renda residual \(\tilde m = m - p_1 \gamma_1 - p_2 \gamma_2\).
- Sabe que SG **não é** homotética (escalar \(m\) não preserva razões \(x_1/x_2\)).
- Viu na Aula 3 (Ex 2) que SG gera curva de Engel com **intercepto \(\gamma_i\)** e inclinação CD na renda residual.

**Extensão do Alberto (no quadro):**

Forma canônica:
\[
u(x_1, x_2) = (x_1 - \gamma_1)^{\alpha} (x_2 - \gamma_2)^{1-\alpha}, \qquad x_i \geq \gamma_i \geq 0, \;\; \alpha \in (0, 1).
\]

**Marshalliana** (resolver UMP via atalho CD em \(\tilde x\)):
\[
\boxed{\;
x_1^M(p, m) = \gamma_1 + \frac{\alpha (m - p_1 \gamma_1 - p_2 \gamma_2)}{p_1},
\quad
x_2^M(p, m) = \gamma_2 + \frac{(1-\alpha)(m - p_1 \gamma_1 - p_2 \gamma_2)}{p_2}.
\;}
\]

> **Eq-punch para Alberto cravar:** *"Stone-Geary diz: 'primeiro pago a subsistência \(p \cdot \gamma\); o que sobra \(\tilde m\) eu gasto Cobb-Douglas com parcelas \((\alpha, 1-\alpha)\)'. É a forma mais simples de não-homotético. **Linear Expenditure System** vem disso direto: \(p_i x_i^M = p_i \gamma_i + s_i (m - p \cdot \gamma)\) com \(s_i \in \{\alpha, 1-\alpha\}\). **Estimação real** (Stone 1954, *Economic Journal* 64(255): 511–527, [DOI 10.2307/2227743](https://doi.org/10.2307/2227743)) regrediu gasto-em-bem contra renda residual e tirou \(\gamma_i, \alpha\) ao mesmo tempo. **Foi o avô empírico do AIDS.**"*

**Indireta** (substituir \(x^M\) em \(u\)):
\[
v(p, m) = \frac{(m - p_1\gamma_1 - p_2\gamma_2) \cdot \alpha^{\alpha}(1-\alpha)^{1-\alpha}}{p_1^{\alpha} p_2^{1-\alpha}}.
\]

**Função gasto** (inverter \(v\) em \(m\)):
\[
\boxed{\;
e(p, u) = p_1\gamma_1 + p_2\gamma_2 + u \cdot \frac{p_1^{\alpha} p_2^{1-\alpha}}{\alpha^{\alpha}(1-\alpha)^{1-\alpha}}.
\;}
\]

> "**Olhe o que a estrutura aditiva faz:** subsistência \(p \cdot \gamma\) entra como **constante** em \(p\) (linear), e o componente CD entra como **homogêneo grau 1**. \(e\) inteira é homogênea grau 1 em \(p\) — Shephard funciona, vamos verificar."

**Hicksiana** (Shephard: \(h_i = \partial e/\partial p_i\)):
\[
h_1(p, u) = \gamma_1 + u \cdot \frac{\alpha \, p_1^{\alpha-1} p_2^{1-\alpha}}{\alpha^{\alpha}(1-\alpha)^{1-\alpha}},
\quad
h_2(p, u) = \gamma_2 + u \cdot \frac{(1-\alpha) \, p_1^{\alpha} p_2^{-\alpha}}{\alpha^{\alpha}(1-\alpha)^{1-\alpha}}.
\]

**Verificação dual numérica** (rápida, 2 min): tome \(\alpha = 1/3\), \(\gamma_1 = 2\), \(\gamma_2 = 1\), \(p = (2, 1)\), \(m = 20\). Renda residual \(\tilde m = 20 - 4 - 1 = 15\). Marshalliana: \(x_1^M = 2 + (1/3)(15)/2 = 4{,}5\); \(x_2^M = 1 + (2/3)(15)/1 = 11\). Walras: \(2 \cdot 4{,}5 + 1 \cdot 11 = 20\) ✓. Indireta: \(v = 15 \cdot \alpha^{1/3}(1-\alpha)^{2/3}/(2^{1/3}) = 15 \cdot (1/3)^{1/3}(2/3)^{2/3}/2^{1/3}\). Calculando: \((1/3)^{1/3} \approx 0{,}693\); \((2/3)^{2/3} \approx 0{,}763\); \(0{,}693 \cdot 0{,}763 = 0{,}529\); \(0{,}529/2^{1/3} \approx 0{,}529/1{,}260 \approx 0{,}420\); \(v \approx 15 \cdot 0{,}420 = 6{,}30\). 

Conferir gasto: \(e(p, 6{,}30) = 5 + 6{,}30 \cdot 2^{1/3} \cdot 3/2^{2/3} = 5 + 6{,}30 \cdot 1{,}260 \cdot 1{,}890 \approx 5 + 15{,}00 = 20{,}00 = m\) ✓. **Quatro funções, quatro identidades**, Stone-Geary fechada.

#### A.2 (8 min) — Por que Roy continua valendo, e o que muda

**Quadro:** aplicar Roy à \(v\) acima.
\[
\frac{\partial v}{\partial p_1} = -\frac{\gamma_1 \cdot \alpha^\alpha(1-\alpha)^{1-\alpha}}{p_1^\alpha p_2^{1-\alpha}}
- \frac{(m - p\cdot\gamma) \cdot \alpha \cdot p_1^{-1}\cdot \alpha^\alpha(1-\alpha)^{1-\alpha}}{p_1^\alpha p_2^{1-\alpha}}.
\]

\[
\frac{\partial v}{\partial m} = \frac{\alpha^\alpha(1-\alpha)^{1-\alpha}}{p_1^\alpha p_2^{1-\alpha}}.
\]

Razão (com cancelamento do fator CD):
\[
-\frac{\partial v/\partial p_1}{\partial v/\partial m} = \gamma_1 + \frac{\alpha(m - p\cdot\gamma)}{p_1} = x_1^M. \;\;\checkmark
\]

> "**Roy não enxerga o \(\gamma\) — porque \(\gamma\) entra linearmente em \(e\), e Roy é razão de derivadas. O \(\gamma_1\) sobrevive na Marshalliana via o termo \(-\gamma_1 \cdot \partial(p\cdot\gamma)/\partial p_1\) puxado pela cadeia. Lição: dualidade é robusta a parametrizações aditivas — basta ter \(e\) bem-comportada (homogênea grau 1, côncava, monótona). É exatamente por isso que AIDS funciona em economia aplicada: ele assume \(e\) homogênea grau 1 e côncava como ponto de partida, sem amarrar a forma específica."*

**Cuidado pedagógico** (aluno típico tropeça): em SG, parcela de gasto **não** é constante em \(\alpha\):
\[
s_1(p, m) = \frac{p_1 x_1^M}{m} = \frac{p_1\gamma_1}{m} + \alpha \cdot \frac{m - p\cdot\gamma}{m}.
\]
A parcela varia com \(m\) e com \(\gamma_1/p_1\) — diferente de CD onde \(s_1 = \alpha\) sempre. **Lei de Engel embutida:** quando \(m\) cresce muito, \(s_1 \to \alpha\) (regime CD); quando \(m \to p \cdot \gamma\), \(s_1 \to p_1 \gamma_1/(p \cdot \gamma)\) (todos os bens viram subsistência pura). Isso é o que faz SG **gerar curvas de Engel realistas** sem precisar de elasticidade-renda zero como em quase-linear.

#### A.3 (8 min) — Limite CES → CD aplicado a \(e(p, u)\) (extensão direta da Pré-M1)

**Trigger condicional:** acionar se a Pré-M1 mostrou demanda significativa (alunos pedindo "L'Hôpital no \(e\)"). Caso contrário, transformar este sub-bloco em **homework dirigido**: anunciar fórmulas e indicar como exercício extra (Apêndice B M1-extra-1).

Quadro:

Função gasto CES (Pré-M1):
\[
e^{\text{CES}}(p, u) = u \cdot \big(\alpha_1^{1/(1-\rho)} p_1^{r} + \alpha_2^{1/(1-\rho)} p_2^{r}\big)^{1/r}, \qquad r = \frac{\rho}{\rho - 1}.
\]

Quando \(\rho \to 0\): \(r \to 0\) também. Aplicar L'Hôpital ao logaritmo do termo CES:
\[
\lim_{r \to 0} \frac{\ln(\alpha_1^{1/(1-\rho)} p_1^r + \alpha_2^{1/(1-\rho)} p_2^r)}{r}.
\]

No limite \(\rho \to 0\), \(\alpha_i^{1/(1-\rho)} \to \alpha_i\). L'Hôpital (mesma técnica da Pré-M1):
\[
\lim_{r \to 0} \frac{\alpha_1 p_1^r \ln p_1 + \alpha_2 p_2^r \ln p_2}{\alpha_1 p_1^r + \alpha_2 p_2^r} = \alpha_1 \ln p_1 + \alpha_2 \ln p_2 \cdot \frac{1}{1} = \alpha_1 \ln p_1 + \alpha_2 \ln p_2.
\]

Logo \((\cdot)^{1/r} \to e^{\alpha_1 \ln p_1 + \alpha_2 \ln p_2} = p_1^{\alpha_1} p_2^{\alpha_2}\). E como o fator de normalização \(1/[\alpha^\alpha(1-\alpha)^{1-\alpha}]\) aparece no limite via continuidade dos coeficientes, recuperamos:
\[
e^{\text{CD}}(p, u) = u \cdot \frac{p_1^{\alpha} p_2^{1-\alpha}}{\alpha^{\alpha}(1-\alpha)^{1-\alpha}}. \;\;\checkmark
\]

> **Eq-punch para Alberto cravar:** *"O ponto não é a álgebra — é que **o limite preserva a estrutura dual**. Se a sua especificação econométrica usa CES com \(\rho\) próximo de 0, você pode usar fórmulas CD como aproximação local. **Não precisa rodar L'Hôpital toda hora — a continuidade da família já garante.** Esse é o truque que macro de crescimento explora há 50 anos: 'a função de produção não importa muito perto da CD'."*

#### A.4 (2 min) — Síntese do Bloco A

> "Levaram do Bloco A: (i) Stone-Geary tem **dualidade completa** (4 funções), gerada via atalho \(\tilde x = x - \gamma\); (ii) gera **LES** \(p_i x_i^M = p_i \gamma_i + s_i \tilde m\) — modelo empírico real; (iii) Roy e Shephard funcionam mesmo com \(\gamma \neq 0\) porque \(e\) permanece homogênea grau 1 em \(p\); (iv) parcela de gasto **varia com renda** (Engel embutida); (v) **CD é caso-limite de SG quando \(\gamma \to 0\)** e **caso-limite de CES quando \(\rho \to 0\)** — duas rotas para o mesmo destino."

### Saída do Bloco A

A turma sai sabendo responder em uma palavra:

- "Por que SG é a forma empírica canônica?" → gera LES; impõe Engel realista; tem dualidade fechada.
- "Roy funciona em qualquer \(v\)?" → sim, contanto que \(v\) seja diferenciável e venha de \(e\) bem-comportada (homogênea grau 1, côncava). É **decorrência do Envelope**, não da forma específica.
- "Por que parcela de gasto em SG não é constante?" → porque a subsistência \(p \cdot \gamma\) não escala com \(m\); só a renda residual \(\tilde m\) é gastada CD-style.

### Transição para o Bloco B

> "Stone-Geary foi extensão das Aulas 1 e 2. Bloco B é extensão da Aula 3: vamos olhar Slutsky em **forma matricial**, ver como ela vira teste empírico (AIDS), e fechar com a fronteira do Giffen — Hunan e o que diz o caso brasileiro do feijão."

---

## Bloco B — Slutsky operacional: matriz, AIDS-lite, Giffen como fronteira (30 min)

**10:40–11:10.**

### Objetivo do bloco

1. **Levantar** a equação de Slutsky para forma matricial \(S = \partial h/\partial p\) — simetria, semidef. negativa, \(Sp = 0\), trace negativo.
2. **Mostrar** como AIDS (Deaton-Muellbauer 1980) impõe Slutsky como restrição econométrica — versão "lite" para a turma sem econometria estrutural.
3. **Discussão socrática:** Giffen no Hunan (Jensen-Miller 2008) e por que feijão brasileiro **não** é Giffen (POF 2017–18) — calibre dos parâmetros para ver o sinal virar.
4. **Apontar** os 4 erros típicos da AF Parte I que vão aparecer.

### Estrutura interna (30 min)

#### B.1 (5 min) — Recapitulação enxuta da matriz de Slutsky

Quadro com tabela (cole rápido, 2 min):

\[
S = (s_{ij}), \qquad s_{ij} = \frac{\partial h_i}{\partial p_j} = \frac{\partial x_i^M}{\partial p_j} + x_j^M \frac{\partial x_i^M}{\partial m}.
\]

| Propriedade | Conteúdo | Origem |
|---|---|---|
| **Simetria** | \(s_{ij} = s_{ji}\) | Young: \(\partial^2 e/\partial p_i \partial p_j = \partial^2 e/\partial p_j \partial p_i\) |
| **Semidef. negativa** | \(v^\top S v \leq 0\;\forall v\) | Concavidade de \(e\) em \(p\) |
| **Diagonal \(\leq 0\)** | \(s_{ii} \leq 0\) | Lei da demanda compensada |
| **\(S p = 0\)** | Hicksiana homogênea grau 0 em \(p\) | Euler aplicado a \(h(\lambda p, u) = h(p, u)\) |

> "Vocês acertaram em larga maioria a Q da Pré-M1 sobre o que **não** é propriedade de \(S\) (definida positiva). Bom. **O erro residual** que ainda aparece é confundir **simetria de \(S\)** (Hicksiana) com **simetria de \(\partial x^M/\partial p\)** (Marshalliana, que **não é** simétrica em geral). Insistirei nisso."

**Pergunta-disparo (3 min, dois alunos):** *"Em CD com 2 bens, \(\partial x_1^M/\partial p_2 = 0\) (Aula 3, Bloco 1.d). Mas \(\partial h_1/\partial p_2 > 0\). Como pode? Não viola simetria?"* — força o aluno a articular que **a simetria é da Hicksiana, não da Marshalliana**, e que o efeito-renda compensa exatamente o efeito-substituição cruzado.

#### B.2 (10 min) — AIDS-lite: Slutsky como restrição econométrica

Quadro com fatos verificáveis:

> **AIDS — Almost Ideal Demand System.** Deaton & Muellbauer (1980), "An Almost Ideal Demand System", *American Economic Review* 70(3): 312–326. JSTOR stable 1805222. Especificação: a parcela de gasto \(s_i = p_i x_i^M/m\) é função log-linear de preços e renda real:
> \[
> s_i = \alpha_i + \sum_j \gamma_{ij} \ln p_j + \beta_i \ln(m/P),
> \]
> onde \(P\) é índice de preços (Stone ou translog). Os parâmetros \(\alpha_i, \beta_i, \gamma_{ij}\) são estimados; as **4 restrições agregadas** da Aula 3 viram restrições paramétricas:
>
> | Restrição teórica | Restrição em AIDS |
> |---|---|
> | Adding-up (\(\sum s_i = 1\)) | \(\sum_i \alpha_i = 1, \sum_i \beta_i = 0, \sum_i \gamma_{ij} = 0\;\forall j\) |
> | Homogeneidade (\(\sum_j \varepsilon_{ij} + \eta_i = 0\)) | \(\sum_j \gamma_{ij} = 0\;\forall i\) |
> | **Simetria de Slutsky** (\(s_j \varepsilon^c_{ij} = s_i \varepsilon^c_{ji}\)) | \(\gamma_{ij} = \gamma_{ji}\) |
> | Negatividade (\(S \preceq 0\), i.e. \(v^\top S v \leq 0 \;\forall v\)) | impor sobre \((\gamma_{ij})\) — testável no ajuste |

**Estrutura conceitual (no quadro, 5 min):**

- **Por que AIDS conquistou a econometria de demanda?** Porque (i) é flexível (qualquer sistema linear-em-log admite alguma calibração compatível), (ii) acomoda dados de gasto familiar (POF, FES, CEX), (iii) **as 4 restrições teóricas são testáveis** — se o ajuste rejeita simetria de \(\gamma_{ij}\), ou seu modelo não vem de UMP racional, ou o agente representativo é uma ficção pesada demais.
- **Lema Hicks-Allen 1934** ([DOI 10.2307/2548574](https://doi.org/10.2307/2548574)): a integrabilidade da Hicksiana é o que permite passar de "elasticidades estimadas" para "preferência subjacente". Sem simetria, não há \(e(p, u)\) racionalizável.

> **Eq-punch:** *"AIDS é o exemplo concreto de como teoria do consumidor **vira ferramenta**. As 4 restrições da Aula 3 não são curiosidade — são **restrições de identificação** que permitem você dizer 'isso é elasticidade compensada de uma preferência racional', e não 'isso é número que saiu da regressão'. **Quem quiser ler em profundidade:** Deaton & Muellbauer (1980) é leitura padrão de pós; capítulos 1–4 do Deaton (1992) *Understanding Consumption* fechado o argumento em texto."*

#### B.3 (10 min) — Giffen como fronteira: Hunan vs. feijão brasileiro

Quadro com a tabela calibrada:

| Caso | Parcela \(s_i\) | Elasticidade-renda \(\eta_i\) | Elasticidade compensada \(\varepsilon^c_{ii}\) | Marshalliana \(\varepsilon_{ii} = \varepsilon^c_{ii} - s_i \eta_i\) | Giffen? |
|---|---|---|---|---|---|
| **Hunan arroz (Jensen-Miller 2008)** | 0,50 | −0,50 | −0,20 | \(-0{,}20 - 0{,}5 \cdot (-0{,}5) = +0{,}05\) | **Sim** (marginal) |
| **Feijão Brasil 1º quintil (POF 2017–18)** | 0,12 | +0,30 | −0,40 | \(-0{,}40 - 0{,}12 \cdot 0{,}30 = -0{,}436\) | **Não** |
| **Feijão Brasil 5º quintil** | 0,03 | +0,15 | −0,30 | \(-0{,}30 - 0{,}03 \cdot 0{,}15 = -0{,}3045\) | **Não** |

**O que o aluno tem que ver:**

- **Giffen requer (i) parcela alta, (ii) bem inferior (\(\eta < 0\)), (iii) substituição limitada** — os três simultaneamente. Hunan tem os três; arroz brasileiro, **mesmo no 1º quintil**, é necessidade (não inferior) e a parcela cai com renda.
- **Box Brasil — Jensen & Miller (2008) é caso de fronteira na literatura.** Ainda há controvérsia sobre se identificou Giffen "puro" ou efeito de renda relativo a substituto inferior (carne). Em Camarões (Adamou-Yagoubi 2018, mimeo) tentaram replicar e encontraram coeficientes mais robustos. **Para AF: identifique Giffen como teoricamente coerente mas empiricamente raro**.

> **Pergunta socrática (3 min):** *"Se feijão no 1º quintil é necessidade (\(\eta > 0\)), por que a alta de preço de 2020–22 foi tratada como crise social? **O que é a fricção real?**"*

Resposta esperada (puxar dos alunos): não é Giffen — é **regressividade do orçamento**. \(s_i = 0{,}12\) no 1º quintil vs. \(0{,}03\) no 5º. Uma alta de 50% no preço do feijão tira 6 pontos percentuais de renda real do pobre vs. 1,5 pp do rico. **Bem-estar** (CV) é diferente entre os estratos por causa de \(s_i\), não por causa de \(\eta_i\).

> "**Lição:** elasticidades brutas (Marshallianas) contam comportamento. **CV** conta bem-estar. Os dois conceitos *podem discordar* sobre quem precisa de política. AF Parte I **vai** misturar: cuidado para não confundir efeito-substituição com perda de bem-estar."

#### B.4 (4 min) — Erros típicos da AF a evitar

Tabela com 5 erros típicos para a turma anotar:

| Erro | Como aparece | Correção |
|---|---|---|
| Aplicar Roy à Marshalliana | "\(x^M = -\partial v/\partial p_i\)" sem dividir por \(\partial v/\partial m\) | Roy é **razão**: \(x_i = -(\partial v/\partial p_i)/(\partial v/\partial m)\). |
| Confundir simetria Hicksiana com Marshalliana | "\(\partial x_1^M/\partial p_2 = \partial x_2^M/\partial p_1\)" | Em geral **não vale**. Simetria é de \(S = \partial h/\partial p\). Marshalliana herda só sob condições especiais (preferência homotética). |
| Tratar parcela de gasto como constante fora de CD | "\(s_1 = \alpha\) em SG" | Em SG, \(s_1\) varia com \(m\) e \(\gamma\). Em CES, varia com \(p\) e \(\rho\). **Só CD fixa parcela.** |
| Confundir Inferior com Giffen | "\(\eta < 0\) implica curva positivamente inclinada" | Giffen requer adicionalmente que efeito-renda em magnitude **supere** substituição. Muito raro. |
| Calcular CV em Marshalliana | "\(\text{CV} = \int x^M dp\)" | CV é integral de **Hicksiana**, não Marshalliana. Em CD/CES não-quase-linear, \(\Delta\text{EC} \neq \text{CV}\). Willig 1976 dá o erro. |

#### B.5 (1 min) — Síntese do Bloco B

> "Levaram do Bloco B: (i) matriz de Slutsky tem 4 propriedades estruturais — simetria, semidef. neg., diagonal \(\leq 0\), \(Sp = 0\); (ii) AIDS impõe essas 4 como restrições de identificação econométrica; (iii) Giffen exige simultaneamente parcela alta, inferior e substituição fraca — Hunan tem; feijão brasileiro **não** tem; (iv) os 5 erros que vou descontar na AF."

### Saída do Bloco B

- "Por que AIDS é o cavalo-de-batalha em demanda aplicada?" → impõe as 4 restrições da Aula 3 como restrições paramétricas estimáveis e testáveis.
- "Por que feijão brasileiro não é Giffen mesmo no 1º quintil?" → necessidade (\(\eta > 0\)), não inferior; a regressividade vem de \(s_i\) alto, não de inversão de sinal.

### Transição para a pausa

> "Pausa de 10 minutos. Quando voltarem: dois exercícios numéricos para vocês fazerem primeiro, depois resolvermos juntos. Stone-Geary completo + CV/EV em CES. Tira o cavalo da chuva da Cobb-Douglas."

---

## Pausa — 10 min (11:10–11:20)

Não tente "explicar mais um ponto" durante a pausa — alunos precisam descansar para o Bloco 3.

---

## Bloco 3 — Exercícios trabalhados ao vivo (30 min)

**11:20–11:50.**

### Estrutura

Dois exercícios, **parâmetros novos** (não duplicar os dos avaliativos das Aulas 1–3 nem da Pré-M1):

- **Exercício M1-1 — Stone-Geary numérico: dualidade completa + LES + Slutsky** (15 min). Calibre 🟡.
- **Exercício M1-2 — CV/EV em CES com substituição imperfeita (\(\sigma = 2\))** (15 min). Calibre 🔴.

**Procedimento operacional:** anuncie o enunciado, dê **3 min** para o aluno tentar individualmente (ou em duplas), depois resolva no quadro com participação. Faz a turma falar — não monologue.

---

### Exercício M1-1 (15 min) — Stone-Geary completo: dualidade, LES, Slutsky 🟡

#### Enunciado

Consumidor com preferência Stone-Geary
\[
u(x_1, x_2) = (x_1 - 2)^{1/3} (x_2 - 1)^{2/3}, \qquad x_1 \geq 2, \;\; x_2 \geq 1.
\]

Preços \(p = (2, 1)\), renda \(m = 20\).

**Pede-se:**
1. Derivar a Marshalliana \(x^M(p, m)\) e verificar Walras.
2. Computar a função gasto \(e(p, u)\) e verificar a identidade dual \(e(p, v(p, m)) = m\) numericamente.
3. Calcular a parcela de gasto \(s_1 = p_1 x_1^M / m\) e mostrar que **varia com \(m\)** (Lei de Engel embutida).
4. Aplicar Slutsky a \(\partial x_1^M / \partial p_2\) — calcular cada termo e somar.

#### Resolução guiada

**Passo 1 — Marshalliana (atalho CD em \(\tilde x_i = x_i - \gamma_i\)):**

Renda residual: \(\tilde m = m - p_1\gamma_1 - p_2\gamma_2 = 20 - 2 \cdot 2 - 1 \cdot 1 = 15\).

\[
x_1^M = \gamma_1 + \frac{\alpha \tilde m}{p_1} = 2 + \frac{(1/3)(15)}{2} = 2 + 2{,}5 = 4{,}5.
\]
\[
x_2^M = \gamma_2 + \frac{(1-\alpha) \tilde m}{p_2} = 1 + \frac{(2/3)(15)}{1} = 1 + 10 = 11.
\]

**Walras:** \(p \cdot x^M = 2 \cdot 4{,}5 + 1 \cdot 11 = 9 + 11 = 20 = m\) ✓.

**Passo 2 — Função gasto e dualidade:**

\[
v(p, m) = \frac{\tilde m \cdot \alpha^\alpha (1-\alpha)^{1-\alpha}}{p_1^\alpha p_2^{1-\alpha}}
= \frac{15 \cdot (1/3)^{1/3}(2/3)^{2/3}}{2^{1/3}}.
\]

Cálculo numérico: \((1/3)^{1/3} \approx 0{,}6934\); \((2/3)^{2/3} \approx 0{,}7631\); produto \(\approx 0{,}5292\); divisão por \(2^{1/3} \approx 1{,}2599\) → \(\approx 0{,}4200\). Logo:
\[
v \approx 15 \cdot 0{,}4200 = 6{,}30.
\]

Função gasto:
\[
e(p, u) = p_1\gamma_1 + p_2\gamma_2 + u \cdot \frac{p_1^\alpha p_2^{1-\alpha}}{\alpha^\alpha (1-\alpha)^{1-\alpha}}.
\]

Verificação dual: \(\alpha^\alpha (1-\alpha)^{1-\alpha} = 0{,}5292\) (mesmo cálculo invertido); \(p_1^\alpha p_2^{1-\alpha} = 2^{1/3} \approx 1{,}2599\); fator \(= 1{,}2599/0{,}5292 \approx 2{,}3812\). Logo:
\[
e(p, 6{,}30) = 4 + 1 + 6{,}30 \cdot 2{,}3812 \approx 5 + 15{,}00 = 20{,}00 = m. \;\;\checkmark
\]

**Passo 3 — Parcela de gasto e Engel:**

\[
s_1(p, m) = \frac{p_1 x_1^M}{m} = \frac{2 \cdot 4{,}5}{20} = 0{,}45.
\]

**Repetir com \(m = 40\):** \(\tilde m = 40 - 5 = 35\); \(x_1^M = 2 + (1/3)(35)/2 = 2 + 5{,}833 = 7{,}833\); \(s_1 = 2 \cdot 7{,}833 / 40 = 0{,}392\). **Parcela caiu** de 0,45 para 0,39 quando renda dobrou.

> **Eq-punch:** *"Em SG, parcela do bem com subsistência alta **cai** com renda — porque \(p\gamma\) vira fração menor de \(m\). É a Lei de Engel para necessidades, embutida na forma funcional. Em CD, \(s_1 = \alpha\) sempre — sem Engel."*

No limite \(m \to \infty\): \(s_1 \to \alpha = 1/3 = 0{,}333\). Convergência para o **regime CD**.

**Passo 4 — Slutsky em \(\partial x_1^M/\partial p_2\):**

Marshalliana de \(x_1^M\) em \(p_2\): \(x_1^M = 2 + \alpha(m - p_1\gamma_1 - p_2\gamma_2)/p_1\). Logo:
\[
\frac{\partial x_1^M}{\partial p_2} = -\frac{\alpha \gamma_2}{p_1} = -\frac{(1/3)(1)}{2} = -\frac{1}{6} \approx -0{,}1667.
\]

Hicksiana cruzada (Shephard sobre \(e\)):
\[
h_1(p, u) = \gamma_1 + u \cdot \frac{\alpha p_1^{\alpha-1} p_2^{1-\alpha}}{\alpha^\alpha(1-\alpha)^{1-\alpha}}.
\]
\[
\frac{\partial h_1}{\partial p_2} = u \cdot \frac{\alpha (1-\alpha) p_1^{\alpha-1} p_2^{-\alpha}}{\alpha^\alpha(1-\alpha)^{1-\alpha}}.
\]
Em \(p = (2, 1), u = 6{,}30\): numerador \(= 6{,}30 \cdot (1/3)(2/3)(2)^{-2/3}(1)^{-1/3} = 6{,}30 \cdot (2/9) \cdot 2^{-2/3} \approx 6{,}30 \cdot 0{,}2222 \cdot 0{,}6300 \approx 0{,}8819\); divisão por \(0{,}5292\) → \(\approx 1{,}666\).

Efeito-renda: \(-x_2^M \cdot \partial x_1^M/\partial m = -11 \cdot (\alpha/p_1) = -11 \cdot (1/6) \approx -1{,}833\).

Soma: \(1{,}666 + (-1{,}833) = -0{,}167 \approx -1/6\) ✓ (consistente com derivada direta).

> **Cuidado pedagógico (apontar no quadro):** o efeito-substituição é **positivo** (\(\partial h_1/\partial p_2 > 0\) — bens são substitutos Hicksianos — Aula 3 Bloco 3.c) mas o efeito-renda é **negativo e maior em magnitude**, então a Marshalliana cruzada acaba **negativa**: bens são complementos brutos (intuição: subir \(p_2\) tira renda real, e o consumidor reduz **ambos os bens**). **SG dá um caso onde substituição e renda dão sinais opostos — cuidado de não tirar conclusão pelo sinal de uma só metade.**

#### Gabarito 5-passos

**1. Ponto-chave.** Stone-Geary é a forma canônica não-homotética com dualidade fechada. \(x^M\) tem **intercepto \(\gamma_i\)** + termo CD em renda residual; \(e\) tem **constante \(p\cdot\gamma\)** + termo CD homogêneo grau 1 em \(p\). Roy e Shephard funcionam exatamente porque \(e\) preserva homogeneidade grau 1 e concavidade.

**2. Derivação.** \(\tilde m = 20 - 5 = 15\); \(x_1^M = 4{,}5\), \(x_2^M = 11\); Walras 20 ✓. \(v \approx 6{,}30\); \(e(p, v) = 5 + 6{,}30 \cdot 2{,}3812 = 20\) ✓. Parcela \(s_1 = 0{,}45\) → cai para \(0{,}392\) quando \(m\) dobra (Engel). Slutsky \(\partial x_1^M/\partial p_2 = +1{,}666 - 1{,}833 = -0{,}167 = -1/6\) — bens são **substitutos Hicksianos** mas **complementos brutos**.

**3. Armadilha.** Aluno típico (i) esquece \(\gamma\) na Marshalliana e usa só CD na renda toda; (ii) calcula parcela \(s_1 = \alpha = 1/3\) (CD-style) e não vê Engel; (iii) infere "complementos brutos" \(\Rightarrow\) "complementos Hicksianos" — falso: simetria de \(S\) requer **substituição** sempre não-negativa cruzada para \(i \neq j\) em 2 bens (decorre de \(Sp = 0\) e \(s_{ii} \leq 0\)). Outro erro: aplicar Roy esquecendo o sinal negativo.

**4. Extensão.** Em **AIDS** (Deaton-Muellbauer 1980), parcelas variáveis com renda são parametrizadas via \(\beta_i \ln(m/P)\); SG é caso especial onde \(\beta_i\) é função explícita de \(\gamma_i\). Em **QUAIDS** (Banks-Blundell-Lewbel 1997, *RestStat* 79(4): 527–539, [DOI 10.1162/003465397557015](https://doi.org/10.1162/003465397557015)), adiciona-se termo quadrático em \(\ln(m/P)\) — captura curvatura adicional na Engel. Para o MPE: SG já dá Engel não-trivial sem precisar do termo quadrático. **Aplicação real:** primeiras estimativas de demanda no Brasil (POF 1974–75) usaram LES exatamente porque AIDS ainda era novo — Hoffmann (1980, *Rev. Bras. Economia*) é referência histórica.

**5. Peer-review.** Calibre 🟡. Cálculo direto + interpretação econômica + Slutsky. **Diferenças vs. Aula 3 Ex 2:** lá SG aparece com 2 itens só de Marshalliana e parcela; aqui o exercício fecha **dualidade completa** + Slutsky + Engel numérica. **Tradeoff de tempo:** ~13 min, alvo. **Risco residual:** moderado — Passo 4 é o mais exigente (cálculo de Hicksiana cruzada com expoentes não-inteiros). **Variante AF plausível:** trocar \(\alpha\) (1/3 → 1/2) ou \(\gamma_i\) ou pedir Hicksiana \(h_1\) direta sem passar por Slutsky. Estrutura conceitual idêntica.

---

### Exercício M1-2 (15 min) — CV e EV em CES com substituição imperfeita 🔴

#### Enunciado

Consumidor com preferência CES simétrica
\[
u(x_1, x_2) = \left(\tfrac{1}{2} x_1^{1/2} + \tfrac{1}{2} x_2^{1/2}\right)^2, \qquad \alpha = 1/2, \;\; \rho = 1/2 \;\; (\sigma = 2).
\]

Renda \(m = 4\). Preços iniciais \(p^0 = (1, 1)\); preços finais \(p^1 = (4, 1)\) (alta de **300%** em \(p_1\)).

Use que para essa CES, a função gasto fechada é
\[
e(p, u) = u \cdot \big(\tfrac{1}{4} p_1^{-1} + \tfrac{1}{4} p_2^{-1}\big)^{-1}.
\]

(Derivação na Pré-M1 Seção 3 com \(r = \rho/(\rho-1) = -1\); aqui \(\sigma = 1/(1-\rho) = 2\), \(\alpha_i^\sigma = 1/4\).)

**Pede-se:**
1. Calcular bundle inicial \((x^0, u^0)\) e bundle final \((x^1, u^1)\).
2. Calcular **CV** \(= e(p^1, u^0) - e(p^0, u^0)\).
3. Calcular **EV** \(= e(p^1, u^1) - e(p^0, u^1) = m - e(p^0, u^1)\).
4. Comparar com excedente do consumidor \(\Delta\text{EC} = \int_1^4 x_1^M(p_1, p_2 = 1, m = 4)\, dp_1\) e verificar Willig: \(\text{EV} \leq \Delta\text{EC} \leq \text{CV}\).

#### Resolução guiada

**Passo 1 — Bundles:**

Marshalliana CES (forma canônica): \(x_i^M = \frac{\alpha_i^\sigma p_i^{-\sigma}}{\sum_j \alpha_j^\sigma p_j^{1-\sigma}} \cdot m\). Com \(\alpha_i = 1/2\), \(\sigma = 2\): \(\alpha_i^\sigma = 1/4\), denom \(= \sum_j (1/4) p_j^{-1}\).

**Em \(p^0 = (1, 1), m = 4\):**
\[
x_1^M = \frac{(1/4)(1)}{(1/4)(1) + (1/4)(1)} \cdot 4 = (1/2) \cdot 4 = 2, \quad x_2^M = 2.
\]
\[
u^0 = \left(\tfrac{1}{2}\sqrt 2 + \tfrac{1}{2}\sqrt 2\right)^2 = (\sqrt 2)^2 = 2.
\]

Verificação: \(e(p^0, 2) = 2 \cdot (1/4 + 1/4)^{-1} = 2 \cdot 2 = 4 = m\) ✓.

**Em \(p^1 = (4, 1), m = 4\):**
\[
x_1^M = \frac{(1/4)(1/16)}{(1/4)(1/4) + (1/4)(1)} \cdot 4 = \frac{1/64}{5/16} \cdot 4 = \frac{1}{20} \cdot 4 = \frac{4}{20} = 0{,}2.
\]
\[
x_2^M = \frac{(1/4)(1)}{5/16} \cdot 4 = \frac{4}{5} \cdot 4 = \frac{16}{5} = 3{,}2.
\]

Walras: \(4 \cdot 0{,}2 + 1 \cdot 3{,}2 = 0{,}8 + 3{,}2 = 4 = m\) ✓.

\[
u^1 = \left(\tfrac{1}{2}\sqrt{0{,}2} + \tfrac{1}{2}\sqrt{3{,}2}\right)^2 = (0{,}5 \cdot 0{,}4472 + 0{,}5 \cdot 1{,}7889)^2 = (0{,}2236 + 0{,}8944)^2 = (1{,}1180)^2 = 1{,}25.
\]

**Passo 2 — CV:**

\[
e(p^1, u^0) = u^0 \cdot \big(\tfrac{1}{4 \cdot 4} + \tfrac{1}{4}\big)^{-1} = 2 \cdot \big(\tfrac{1}{16} + \tfrac{4}{16}\big)^{-1} = 2 \cdot \frac{16}{5} = \frac{32}{5} = 6{,}4.
\]

\[
\boxed{\;\text{CV} = e(p^1, u^0) - e(p^0, u^0) = 6{,}4 - 4 = 2{,}4.\;}
\]

> **Leitura econômica:** Para o consumidor manter a utilidade inicial \(u^0 = 2\) frente à alta de 300% em \(p_1\), seria necessário **acrescentar 2,4 unidades de renda** (60% da renda inicial). É a "compensação à Hicks" para o nível antigo de utilidade.

**Passo 3 — EV:**

\[
e(p^0, u^1) = u^1 \cdot \big(\tfrac{1}{4} + \tfrac{1}{4}\big)^{-1} = 1{,}25 \cdot 2 = 2{,}5.
\]

\[
\boxed{\;\text{EV} = e(p^1, u^1) - e(p^0, u^1) = m - e(p^0, u^1) = 4 - 2{,}5 = 1{,}5.\;}
\]

> **Leitura econômica:** No regime de preço **antigo**, o consumidor toparia perder até 1,5 unidades de renda em troca de não ter a alta de preço. EV mede "quanto vale evitar a mudança", calibrado pela utilidade nova.

**Passo 4 — Excedente do consumidor (\(\Delta\text{EC}\)):**

Marshalliana de \(x_1\) em função de \(p_1\) (mantendo \(p_2 = 1, m = 4\)):
\[
x_1^M(p_1) = \frac{(1/4) p_1^{-2}}{(1/4) p_1^{-1} + (1/4)} \cdot 4 = \frac{p_1^{-2}}{p_1^{-1} + 1} \cdot 4 = \frac{4}{p_1 (1 + p_1)}.
\]

Decomposição em frações parciais: \(\frac{1}{p_1(1+p_1)} = \frac{1}{p_1} - \frac{1}{1+p_1}\). Logo:
\[
\Delta\text{EC} = \int_1^4 \frac{4}{p_1(1+p_1)} dp_1 = 4 \int_1^4 \left(\frac{1}{p_1} - \frac{1}{1+p_1}\right) dp_1 = 4\big[\ln p_1 - \ln(1+p_1)\big]_1^4.
\]

Cálculo:
\[
= 4\big[(\ln 4 - \ln 5) - (\ln 1 - \ln 2)\big] = 4\big[\ln 4 - \ln 5 + \ln 2\big] = 4\ln\left(\frac{4 \cdot 2}{5}\right) = 4\ln(1{,}6).
\]

\(\ln(1{,}6) \approx 0{,}4700\); \(\Delta\text{EC} \approx 4 \cdot 0{,}4700 = 1{,}88\).

**Verificação Willig:**
\[
\text{EV} = 1{,}5 \;\;<\;\; \Delta\text{EC} = 1{,}88 \;\;<\;\; \text{CV} = 2{,}4. \;\;\checkmark
\]

> "Ordenamento canônico: para alta de preço de bem normal, **\(\text{EV} \leq \Delta\text{EC} \leq \text{CV}\)** sempre. Excedente do consumidor é a aproximação do meio do caminho. A diferença \(\text{CV} - \text{EV} = 0{,}9\) mede o **efeito-renda na demanda compensada** — em quase-linear, essa diferença vai a zero. Aqui é grande porque \(\Delta p_1\) é grande (300%) e CES com \(\sigma = 2\) tem efeito-renda significativo."

#### Gabarito 5-passos

**1. Ponto-chave.** CV e EV são integrais de Hicksiana (Aula 3 Bloco 4.b); EC é integral de Marshalliana. Em CES com \(\sigma \neq 1\) e variação grande de preço, os três divergem mas **respeitam o ordenamento Willig**. CV é "renda extra para manter \(u^0\)"; EV é "renda mínima evitada para chegar a \(u^1\)". Diferença mede efeito-renda.

**2. Derivação.** Bundles: \((x^0, u^0) = (2, 2; 2)\); \((x^1, u^1) = (0{,}2, 3{,}2; 1{,}25)\). Função gasto CES \(\sigma = 2\): \(e(p, u) = u \cdot (\tfrac{1}{4}p_1^{-1} + \tfrac{1}{4}p_2^{-1})^{-1}\). \(\text{CV} = 6{,}4 - 4 = 2{,}4\); \(\text{EV} = 4 - 2{,}5 = 1{,}5\). EC em frações parciais: \(\Delta\text{EC} = 4\ln(1{,}6) \approx 1{,}88\). Willig satisfeita: \(1{,}5 < 1{,}88 < 2{,}4\) ✓.

**3. Armadilha.** Aluno típico (i) calcula CV em CD (\(\Delta\text{EC}\) usando Marshalliana com \(\sigma = 1\)) e diz "deu 1,88" — mas em CES com \(\sigma = 2\), a Marshalliana é diferente; (ii) confunde EV com "−CV" — não é, ambos são positivos para alta de preço; (iii) aplica fórmula CD para função gasto \(e(p, u) = 2u\sqrt{p_1 p_2}\) — incorreta para CES; (iv) esquece de simplificar \(\frac{1}{p_1(1+p_1)} = \frac{1}{p_1} - \frac{1}{1+p_1}\) e tenta integral por substituição complicada.

**4. Extensão.** Em CES com \(\sigma \to 1\) (CD), CV e EV convergem para resultado padrão (ver Aula 3 Ex 5 da plataforma para CD com \(p_1: 1 \to 4\) e \(m = 16\)). Em **\(\sigma \to \infty\)** (substitutos perfeitos), o consumidor migra completamente para o bem mais barato e CV \(\approx 0\) (substituição perfeita anula efeito de preço). Em **\(\sigma \to 0\)** (Leontief), substituição é nula e CV \(= \Delta p_1 \cdot x_1^0\) (sem ajuste). **Lição estrutural:** o "tamanho" de CV é função monótona crescente de \(1/\sigma\) — quanto **menos** substituível o bem, **maior** a perda de bem-estar de uma alta de preço. **Aplicação real:** isso é o argumento canônico para **bens de primeira necessidade** terem alíquota reduzida em IBS/CBS (EC 132/2023): \(\sigma\) baixa sobre alimentação implica CV alta sobre alta de imposto.

**5. Peer-review.** Calibre 🔴. Cálculo numérico denso + verificação Willig + interpretação. **Diferenças vs. Aula 3 Ex 5:** lá é CD (\(\sigma = 1\)); aqui é CES com \(\sigma = 2\) e variação muito maior de preço (300% vs. 200% em Ex 5). **Tradeoff de tempo:** ~13 min se a turma estiver afiada; até 17 min se Alberto precisar guiar a frações parciais no quadro. **Risco residual:** moderado-alto — Passo 4 (\(\int 1/(p(1+p))\)) é o que mais separa quem aplicou Hicksiana de quem só decorou fórmula. **Variante AF plausível:** trocar \(\sigma\) ou pedir aproximação de Willig (\(|\Delta\text{EC} - \text{CV}|/m \approx \eta s \Delta p^2 / 2\)) com números concretos. Em \(\sigma = 2, s = 1/2, \eta = 1, \Delta\ln p_1 = \ln 4 \approx 1{,}386\), o erro relativo previsto é \(1 \cdot 0{,}5 \cdot 1{,}386^2/2 \approx 0{,}48\) — Willig "estoura" quando \(\Delta p\) é grande. **Confirma** que o exercício está no regime onde a aproximação de Willig **não funciona bem**, e por isso temos que usar Hicksiana exata.

---

### Síntese do Bloco 3

Quadro:

| Exercício | Conceito-âncora | Calibre |
|---|---|---|
| M1-1 (Stone-Geary completo) | Dualidade não-homotética + LES + Engel embutida | 🟡 |
| M1-2 (CV/EV em CES \(\sigma=2\)) | Integrais de Hicksiana + Willig + role de \(\sigma\) | 🔴 |

> "Esses dois são variantes plausíveis dos exercícios da AF Parte I (Aulas 1–3). Quem fechou os dois aqui, fechou o miolo da Parte I."

---

## Bloco 4 — Encerramento + ponte AF + dúvidas finais (10 min)

**11:50–12:00.**

### Roteiro

#### B4.1 (3 min) — O que vocês têm que levar pra casa hoje

Quadro com lista enxuta:

1. **Stone-Geary** tem dualidade fechada. \(x^M\) com intercepto \(\gamma_i\); \(e\) com constante \(p\cdot\gamma\); LES é a forma observada empírica.
2. **CES com \(\rho \neq 0\)** tem fórmulas explícitas para \(v\) e \(e\); CD é caso-limite via L'Hôpital — **continuidade da família** garante que aproximações CD são razoáveis perto de \(\rho = 0\).
3. **Matriz de Slutsky** tem 4 propriedades estruturais — simetria, semidef. neg., diagonal \(\leq 0\), \(Sp = 0\). **AIDS** transforma essas em restrições econométricas testáveis.
4. **Giffen** requer parcela alta + inferior + substituição fraca **simultaneamente**. Hunan tem; feijão brasileiro **não**.
5. **CV/EV em CES com substituição imperfeita** divergem de \(\Delta\text{EC}\); Willig dá ordem mas não magnitudes em variações grandes.

#### B4.2 (3 min) — Conexão com a AF

> "Quarta 24/06, 19:00, 3h, A4 frente-e-verso permitida. Aulas 1–3 valem **40%** combinados — o maior bloco. **Calibre da AF para esses tópicos:** próximo dos exercícios avaliativos das Aulas 1, 2 e 3 — não muito além. Nada do que cobri hoje (Stone-Geary completo, AIDS-lite, CES \(\sigma = 2\) com CV) é prova exatamente como vimos; é **extensão**. **Mas saber a extensão calibra você para a aplicação na AF.**"

> "Erros que vou descontar (já listados na monitoria de hoje, repito):
> 1. Aplicar Roy à Marshalliana em vez de à indireta.
> 2. Confundir simetria Hicksiana com Marshalliana.
> 3. Tratar parcela de gasto como constante fora de CD.
> 4. Confundir Inferior com Giffen.
> 5. Calcular CV via integral de Marshalliana."

#### B4.3 (4 min) — Dúvidas finais + ponte M2

- 3 min para qualquer dúvida final, especialmente das reflexões `refl-claro` da Pré-M1 que não couberam.
- **Ponte M2 (1 min):** *"Sábado 23/05 é a Monitoria 2 — Equilíbrio Geral em trocas e produção (Aula 4). **Pré-M2 sai entre quarta 13/05 e sexta 22/05 — fiquem ligados na plataforma.** Quarta 20/05 vocês têm a Aula 5 (Arrow-Debreu I). Vejo todos lá."*

---

## Apêndice A — Banco de perguntas-disparo

Use conforme o ritmo da turma. **3–4 são suficientes para 2h.**

1. "Por que Stone-Geary é a forma natural para estimar Engel?"
2. "Em CD, parcela é \(\alpha\) constante. Em SG, varia com \(m\). E em CES?"
3. "Roy e Shephard funcionam em qualquer forma — qual é a hipótese mínima?"
4. "Por que a matriz de Slutsky **Hicksiana** é simétrica mas a derivada da Marshalliana **não é**?"
5. "Por que \(\partial h_i/\partial p_i \leq 0\) sempre? Onde isso quebra?"
6. "Em AIDS, qual restrição econométrica vem de simetria de Slutsky?"
7. "Hunan é Giffen real ou efeito de carne como substituto inferior?"
8. "Feijão no 1º quintil é inferior ou necessidade? Diferença?"
9. "CV é integral de Hicksiana. Em quase-linear, vira Marshalliana. Por quê?"
10. "Willig dá \(\text{EV} \leq \Delta\text{EC} \leq \text{CV}\). Quando essa cota é apertada? Quando solta?"
11. "Em CES com \(\sigma \to \infty\), o que acontece com CV de uma alta de preço?"
12. "Lex viola continuidade. E sem continuidade, ainda existe representação por utilidade (não-contínua)?"
13. "Em SG, se \(p\cdot\gamma > m\), a Marshalliana é negativa. O que isso quer dizer?"
14. "Por que CES \(\to\) CD quando \(\rho \to 0\) — é coincidência matemática ou propriedade econômica?"
15. "Em AIDS, se simetria de \(\gamma_{ij}\) for rejeitada no ajuste, o que isso te diz?"

---

## Apêndice B — Banco de exercícios extras (caso sobre tempo no Bloco 3)

Se Bloco 3 fechar adiantado, abrir um destes — **com gabarito 5-passos completo** abaixo.

### M1-extra-1 — 🟡 L'Hôpital aplicado a \(e^{\text{CES}}(p, u)\) recuperando \(e^{\text{CD}}\)

**Enunciado.** Considere a função gasto CES da Pré-M1 Seção 3:
\[
e^{\text{CES}}(p, u) = u \cdot (\alpha_1^{1/(1-\rho)} p_1^r + \alpha_2^{1/(1-\rho)} p_2^r)^{1/r}, \qquad r = \frac{\rho}{\rho - 1}.
\]
Mostre, via L'Hôpital, que \(e^{\text{CES}}(p, u) \to e^{\text{CD}}(p, u) = u \cdot \frac{p_1^{\alpha_1} p_2^{\alpha_2}}{\alpha_1^{\alpha_1} \alpha_2^{\alpha_2}}\) quando \(\rho \to 0\) (e portanto \(r \to 0\)).

**Gabarito 5-passos.**

1. **Ponto-chave.** A continuidade da família CES implica que dualidade CES no limite recupera dualidade CD. Pré-M1 fez L'Hôpital na utilidade; aqui aplicamos a \(e\) — mostra que **toda a estrutura dual** (não só \(u\)) é contínua em \(\rho\).

2. **Derivação.** Tome log do termo CES interno: \(\frac{1}{r} \ln(\alpha_1^{1/(1-\rho)} p_1^r + \alpha_2^{1/(1-\rho)} p_2^r)\). Quando \(r \to 0\): numerador \(\to \ln(\alpha_1 + \alpha_2) = \ln 1 = 0\) (porque \(\alpha_1^{1/(1-\rho)} \to \alpha_1\) também). Forma \(0/0\). L'Hôpital: numerador derivado em \(r\) é \(\frac{\alpha_1^{1/(1-\rho)} p_1^r \ln p_1 + \alpha_2^{1/(1-\rho)} p_2^r \ln p_2}{\alpha_1^{1/(1-\rho)} p_1^r + \alpha_2^{1/(1-\rho)} p_2^r}\). No limite: \(\frac{\alpha_1 \ln p_1 + \alpha_2 \ln p_2}{1} = \alpha_1 \ln p_1 + \alpha_2 \ln p_2\). Logo \((\cdot)^{1/r} \to e^{\alpha_1 \ln p_1 + \alpha_2 \ln p_2} = p_1^{\alpha_1} p_2^{\alpha_2}\). Multiplicando por \(u\) e ajustando o fator de normalização (que aparece via continuidade dos \(\alpha_i^{1/(1-\rho)}\) compostos), recupera \(e^{\text{CD}}\).

3. **Armadilha.** Esquecer que \(\alpha_i^{1/(1-\rho)} \to \alpha_i\) **também** depende de \(\rho\) — não só o expoente. Aplicar L'Hôpital sem checar a forma \(0/0\) (em \(r > 0\) o denominador é positivo, mas o numerador também — só vai a 0 no limite). Confundir o resultado com \(p_1^{\alpha} + p_2^{1-\alpha}\) (forma aditiva incorreta).

4. **Extensão.** Mesma técnica funciona para \(\rho \to -\infty\) (Leontief): \(e \to u \cdot \min(p_1, p_2)\) (gasto vai todo no bem mais barato dado complementaridade perfeita)... espere, **errado**: em Leontief \(u = \min(x_1, x_2)\) com proporção fixa 1:1, e \(e(p, u) = u \cdot (p_1 + p_2)\) (compra ambos em proporção fixa). O argumento de L'Hôpital com \(\rho \to -\infty\) recupera essa forma quando \(\alpha_i = 1/2\). Para \(\alpha_i\) gerais, \(e \to u \cdot (p_1 + p_2)\) quando \(\alpha_1 = \alpha_2 = 1/2\). **Cuidado com a parametrização** — Leontief geral \(u = \min(a x_1, b x_2)\) tem \(e = u \cdot (p_1/a + p_2/b)\).

5. **Peer-review.** Calibre 🟡. Aplicação direta de L'Hôpital + verificação que dualidade é contínua em \(\rho\). **Tradeoff de tempo:** 8 min. **Risco residual:** baixo se aluno seguiu Pré-M1 Seção 2 com atenção. **Variante AF:** improvável aparecer integralmente; mais provável aparecer com \(\rho \to 1\) (substitutos perfeitos): \(e \to u \cdot \min(p_1/\alpha_1, p_2/\alpha_2)\), ou seja, gasta tudo no bem com **menor preço normalizado** pela parcela CES.

### M1-extra-2 — 🔴 AIDS-lite numérico: testar simetria com 2 bens

**Enunciado.** Você dispõe de POF 2017–18 com 5 quintis de renda. Para 2 categorias agregadas (Alimentação, Não-Alimentação), estima sistema AIDS:
\[
s_1 = \alpha_1 + \gamma_{11} \ln p_1 + \gamma_{12} \ln p_2 + \beta_1 \ln(m/P), \quad s_2 = 1 - s_1.
\]

Estimação com dados sintéticos retornou:
\[
\hat\alpha_1 = 0{,}40, \;\hat\gamma_{11} = -0{,}10, \;\hat\gamma_{12} = +0{,}08, \;\hat\beta_1 = -0{,}05; \quad \hat\gamma_{21} = +0{,}06, \;\hat\gamma_{22} = -0{,}08.
\]

Use \(s_1 = 0{,}30\) (média do 1º quintil), preços \(p = (1, 1)\) (normalizados).

(a) Verifique adding-up: \(\sum_i \alpha_i = 1\), \(\sum_i \beta_i = 0\), \(\sum_i \gamma_{ij} = 0\).
(b) Verifique homogeneidade: \(\sum_j \gamma_{ij} = 0\;\forall i\).
(c) Verifique simetria: \(\gamma_{12} = \gamma_{21}\). Está satisfeita?
(d) Recupere a elasticidade-renda \(\eta_1 = 1 + \beta_1/s_1\). É necessidade ou luxo?

**Gabarito 5-passos.**

1. **Ponto-chave.** AIDS impõe as 4 restrições da Aula 3 como restrições paramétricas. Quando os \(\hat\gamma_{ij}\) estimados violam **simetria**, o sistema **não vem de UMP racional** — provavelmente o agente representativo é uma má aproximação, ou houve heterogeneidade não-modelada.

2. **Derivação.**
   - (a) \(\alpha_1 = 0{,}40 \Rightarrow \alpha_2 = 0{,}60\); soma 1 ✓. \(\beta_1 = -0{,}05 \Rightarrow \beta_2 = +0{,}05\); soma 0 ✓. \(\gamma_{11} + \gamma_{21} = -0{,}10 + 0{,}06 = -0{,}04 \neq 0\) ✗ — **adding-up em \(\gamma\) coluna 1 falha**.
   - (b) \(\sum_j \gamma_{1j} = -0{,}10 + 0{,}08 = -0{,}02 \neq 0\) ✗ — **homogeneidade falha**.
   - (c) \(\gamma_{12} = 0{,}08\), \(\gamma_{21} = 0{,}06\). \(\gamma_{12} - \gamma_{21} = 0{,}02 \neq 0\) ✗ — **simetria falha**.
   - (d) \(\eta_1 = 1 + (-0{,}05)/0{,}30 = 1 - 0{,}167 = 0{,}833\). É **necessidade** (\(\eta < 1\)) mas **normal** (\(\eta > 0\)) — coerente com Alimentação no 1º quintil.

3. **Armadilha.** Aluno típico (i) calcula \(\eta_1 = \beta_1/s_1\) (esquece o \(+1\) — Lei de Engel para AIDS); (ii) confunde "\(\gamma_{ij}\) simétrico" com "elasticidade simétrica" — não é a mesma coisa, há fator \(s_j/s_i\) entre eles; (iii) interpreta violação de simetria como "modelo mal especificado" — verdade parcial; o mais correto é "preferências não-racionalizáveis pelo agente representativo, exigindo heterogeneidade explícita".

4. **Extensão.** **Imposição vs. teste**: AIDS pode ser estimado **livre** (sem impor restrições) ou **restrito** (impondo 4). Diferença de log-verossimilhança via teste de razão de verossimilhança \(\chi^2\) com graus de liberdade = nº de restrições. Se rejeitar restritudo, usar **Working-Lewbel** (incorpora heterogeneidade observada) ou **QUAIDS** (curvatura adicional). Em painel: estimação por GMM com instrumentos para preços endógenos (Hausman 1996, *NBER*).

5. **Peer-review.** Calibre 🔴. Aplicação canônica de AIDS-lite + diagnóstico das 4 restrições. **Tradeoff de tempo:** 12 min. **Risco residual:** moderado — aluno típico do MPE-2026 (heterogêneo) tropeça em (d) (esquece Lei de Engel). **Variante AF:** trocar parâmetros e pedir só simetria + interpretação. Mais provável aparecer como item de múltipla escolha "qual restrição falha?". **Cuidado:** os parâmetros do enunciado violam **propositalmente** as 3 primeiras restrições — para mostrar diagnóstico. Em AF real, dados reais costumam ter violações menores.

### M1-extra-3 — 🟡 Quase-linear puro: dualidade degenerada

**Enunciado.** \(u(x_1, x_2) = \ln x_1 + x_2\), preços \((p_1, p_2)\), renda \(m\) "grande o suficiente" para solução interior.

(a) Resolva UMP. Mostre \(x_1^M = p_2/p_1\) (não depende de \(m\)).
(b) Calcule \(v(p, m)\) e verifique Roy.
(c) Calcule \(e(p, u)\) e verifique Shephard.
(d) Mostre que CV = EV = \(\Delta\)EC (caso quase-linear).

**Gabarito 5-passos.**

1. **Ponto-chave.** Em quase-linear, o efeito-renda **na demanda do bem 1** é zero (interior); todo ajuste de renda vai para o bem numerário. Consequência: Hicksiana = Marshalliana **no bem 1**, então CV = EV = \(\Delta\)EC. **Caso de prova canônico** (Aula 3 Bloco 4.c).

2. **Derivação.**
   - (a) Lagrangiano: \(\mathcal{L} = \ln x_1 + x_2 - \lambda(p_1 x_1 + p_2 x_2 - m)\). CPO 1: \(1/x_1 = \lambda p_1\). CPO 2: \(1 = \lambda p_2 \Rightarrow \lambda = 1/p_2\). Sub: \(x_1^M = p_2/p_1\) ✓. Walras: \(x_2^M = (m - p_2)/p_2 = m/p_2 - 1\).
   - (b) \(v(p, m) = \ln(p_2/p_1) + m/p_2 - 1\). Derivadas: \(\partial v/\partial p_1 = -1/p_1\) (de \(-\ln p_1\)) e \(\partial v/\partial m = 1/p_2\). Roy: \(x_1^M = -\dfrac{\partial v/\partial p_1}{\partial v/\partial m} = -\dfrac{-1/p_1}{1/p_2} = \dfrac{p_2}{p_1}\) ✓.
   - (c) Inverter \(v = u\) em \(m\): \(m = e(p, u) = (u - \ln(p_2/p_1) + 1) p_2 = u p_2 - p_2 \ln(p_2/p_1) + p_2\). Shephard: \(\partial e/\partial p_1 = -p_2 \cdot (-1/p_1) = p_2/p_1 = h_1(p, u) = x_1^M\) ✓ (independente de \(u\) — assinatura quase-linear).
   - (d) Como \(h_1 = x_1^M = p_2/p_1\) (independente de \(u\)), integrais de Hicksiana e Marshalliana **coincidem**: \(\text{CV} = \text{EV} = \Delta\text{EC} = \int_{p_1^0}^{p_1^1} (p_2/p_1) dp_1 = p_2 \ln(p_1^1/p_1^0)\).

3. **Armadilha.** Aluno típico (i) tenta aplicar Slutsky achando que efeito-renda em \(x_1\) é não-zero — **é zero por construção** (interior); (ii) calcula \(v\) sem o termo constante \(-1\) e quebra Roy; (iii) confunde "quase-linear no bem 2" com "quase-linear no bem 1" — nesse exercício, \(u = \ln x_1 + x_2\) é **quase-linear em \(x_2\)** (numerário); o **bem 1** tem efeito-renda zero porque sua demanda é constante em \(m\).

4. **Extensão.** Em quase-linear, **excedente do consumidor é literal** — tem interpretação canônica de Marshall (1890). É por isso que IO aplicada e public economics usam quase-linear como ponto de partida: o **welfare é tratado como bem-comportado**. Limite estrutural: quase-linear **não tem efeito-renda no bem-target** — só vale para bens que ocupam parcela pequena da renda (gasolina para um decil alto; cigarros; cervejas premium). Para alimentos básicos, quase-linear **não é apropriado** porque ignora a Lei de Engel.

5. **Peer-review.** Calibre 🟡. Verificação direta + interpretação de welfare. **Tradeoff de tempo:** 10 min. **Risco residual:** baixo — exercício é "limpo" se aluno seguiu Aula 2 com atenção. **Variante AF:** trocar \(u = \ln x_1 + x_2\) por \(u = \sqrt{x_1} + x_2\) ou \(u = -1/x_1 + x_2\) — muda os números, preserva estrutura.

### M1-extra-4 — 🔴 ANPEC clássico: utilidade aditivamente separável e identificação

**Enunciado.** \(u(x_1, x_2) = u_1(x_1) + u_2(x_2)\) com \(u_i'(\cdot) > 0\), \(u_i''(\cdot) < 0\). Preços \(p\), renda \(m\).

(a) Mostre que \(\text{TMS} = u_1'(x_1)/u_2'(x_2)\) e que demanda Marshalliana satisfaz \(u_i'(x_i^M) = \lambda^* p_i\) com \(\lambda^*\) comum.
(b) Mostre que se \(u_1, u_2\) são CARA com mesmo coeficiente \(\theta\), a demanda tem a forma \(x_i^M = -\dfrac{1}{\theta}\big[\ln \lambda^*(p, m) + \ln p_i\big]\) — log-linear em preços, com \(\lambda^*\) endógeno em \(m\). Verifique que o sistema é **não-homotético** (escalar \(m\) não preserva razões \(x_i/x_j\)).
(c) Em \(N \geq 3\) bens com aditividade separável, mostre que a matriz de Slutsky exibe **separabilidade Hicksiana** entre blocos: \(s_{ij}\) é proporcional ao produto de elasticidades-renda quando \(i, j\) estão em blocos distintos (resultado Houthakker 1960; teorema de Pearce). Por quê o caso de **2 bens** é degenerado?
(d) Discuta: identificação de aditividade separável a partir de microdados — quais momentos são "tested"?

**Gabarito 5-passos.**

1. **Ponto-chave.** Aditividade separável é restrição forte: implica que utilidade cruzada \(\partial^2 u/\partial x_i \partial x_j = 0\) e, em \(N \geq 3\) bens, induz **separabilidade Hicksiana** entre blocos de bens (resultado Houthakker 1960; tratamento moderno em Deaton-Muellbauer 1980b §5). **Identificável** via razão de elasticidades cruzadas em microdados — Deaton (1974, *Econometrica* 42(2): 341–367, [DOI 10.2307/1911983](https://doi.org/10.2307/1911983)) detalha o teste.

2. **Derivação.**
   - (a) Lagrangiano: \(\mathcal{L} = u_1(x_1) + u_2(x_2) - \lambda(p_1 x_1 + p_2 x_2 - m)\). CPO: \(u_i'(x_i) = \lambda p_i\;\forall i\). \(\text{TMS} = u_1'/u_2' = p_1/p_2\) (tangência) ✓.
   - (b) CARA: \(u_i(x_i) = -e^{-\theta x_i}/\theta\), \(u_i'(x_i) = e^{-\theta x_i}\). CPO: \(e^{-\theta x_i} = \lambda p_i \Rightarrow x_i = -(1/\theta)\ln(\lambda p_i)\). Walras: \(\sum_i p_i x_i = m \Rightarrow -(1/\theta) \sum_i p_i \ln(\lambda p_i) = m\). Solve para \(\lambda\) e back-sub. **Não-homotética** porque a relação \(x_i\) vs. \(p_i\) é log, não potência.
   - (c) Para utilidade aditivamente separável \(u = \sum_i u_i(x_i)\), o resultado clássico de Houthakker (1960) é que a Hicksiana cruzada satisfaz \(s_{ij} = \phi \cdot \eta_i \eta_j s_i s_j / m\) entre blocos separáveis, com \(\phi\) função do "money-flexibility" \(\partial \ln \lambda^*/\partial \ln m\). **Cuidado em 2 bens:** as 4 propriedades de \(S\) (simetria + semidef. neg. + diagonal \(\leq 0\) + \(Sp = 0\)) **forçam** \(s_{ij} \geq 0\) para \(i \neq j\) — ver discussão em Bloco B.1; logo \(S\) **não pode ser estritamente diagonal** com \(s_{ii} < 0\) em \(N = 2\). A separabilidade Hicksiana só aparece operacionalmente em \(N \geq 3\), onde há graus de liberdade para cruzados nulos entre blocos distintos.
   - (d) Identificação: \(\partial \ln x_i^M/\partial \ln p_j\) (elasticidade cruzada) é função explícita de \((u_i, u_j)\). Se você dispõe de variação de preço em painéis de famílias com renda fixa (intra-trimestre), o coeficiente cruzado revela aditividade separável. **Teste empírico:** \(\partial^2 \ln u/\partial \ln x_i \partial \ln x_j = 0\) testável em microdados via curvatura de Engel.

3. **Armadilha.** Aluno típico (i) confunde "aditiva separável" com "CD" — CD é multiplicativa, não aditiva (mas seu log é aditivo, donde a confusão); (ii) acha que aditividade em utilidade \(\Rightarrow\) Slutsky **estritamente diagonal** — falso em 2 bens (\(Sp = 0\) com \(s_{ii} \leq 0\) **força** \(s_{ij} \geq 0\) cruzado), e em \(N \geq 3\) bens só vale como separabilidade entre blocos, não diagonalidade plena; (iii) infere CARA \(\Rightarrow\) homotética — falso, CARA é inverso de homotética (não preserva razões sob escala de \(m\)).

4. **Extensão.** Aditividade separável é hipótese clássica para extensão a múltiplos períodos: \(U = \sum_t \beta^t u(c_t)\) é CARA-aditiva intertemporal, leva à equação de Euler de macro padrão. **Crítica de Deaton (1974):** aditividade pode falhar empiricamente — bens podem ter complementaridade (lazer-cerveja), e impor aditividade rejeita modelos coerentes. **Tratamento moderno:** AIDS é não-aditiva por design.

5. **Peer-review.** Calibre 🔴. Mistura teoria de utilidade + análise empírica + identificação. **Tradeoff de tempo:** 13–15 min — exercício denso. **Risco residual:** moderado-alto. **Variante AF:** improvável em peso integral; mais provável aparecer item (a) ou (c) isolado em múltipla escolha.

---

## Apêndice C — FAQ (perguntas que aluno costuma fazer)

1. **"Por que Cobb-Douglas é tão usada se Stone-Geary é mais geral?"** — Porque CD é simples (parcelas constantes, log-aditiva), tem dualidade fechada e "aproxima bem" para variações pequenas de preço. SG é necessária quando a Lei de Engel é o foco — i.e., demanda variando com renda de forma sistemática.

2. **"Roy e Shephard são mágica ou tem prova?"** — É **Teorema do Envelope** (Aula 2 §2.4). \(\partial v/\partial p_i = \partial \mathcal{L}/\partial p_i|_{\text{ótimo}} = -\lambda^* x_i^M\). Razão Roy: \(-\partial v/\partial p_i / \partial v/\partial m = x_i^M\). Não é mágica; é cadeia + ótimo.

3. **"AIDS rejeita simetria — o que faço?"** — Significa que sua especificação não vem de UMP racional. Opções: (i) **agente representativo** é má aproximação (heterogeneidade); (ii) preços são **endógenos** (oferta também varia); (iii) **dinâmica** importa (consumo de hoje depende de ontem). Use Working-Lewbel ou QUAIDS.

4. **"Por que feijão não é Giffen no Brasil mas arroz é em Hunan?"** — Elasticidade-renda: feijão brasileiro \(\eta > 0\) (necessidade), arroz Hunan \(\eta < 0\) (inferior — substitui carne quando renda sobe). Parcela: feijão BR \(s = 0{,}12\) no 1º quintil; Hunan \(s = 0{,}50\). Substituição: feijão tem múltiplos substitutos (arroz, milho); Hunan rural tinha arroz como ~85% das calorias. **Os três fatores precisam alinhar simultaneamente** para Giffen aparecer.

5. **"CV ou EV — qual usar em política pública?"** — Depende. **CV** mede "quanto compensar para manter o status quo \(u^0\)" — útil para subsídio focalizado. **EV** mede "quanto valeria evitar a mudança partindo do estado novo \(u^1\)" — útil para custo-benefício de revogação. Em geral, EV é mais comum em análise de welfare porque parte do estado **realizado**, não hipotético. Em CES com \(\sigma > 1\) e alta de preço, CV > EV.

6. **"Em CES com \(\sigma\) muito alto, CV vai a zero?"** — Sim, no limite \(\sigma \to \infty\) (substitutos perfeitos), o consumidor migra completamente para o bem barato e a alta de preço do bem caro **não impacta utilidade**. Em \(\sigma\) alto mas finito, CV é pequena. Aplicação: **substitutos próximos** têm pouca CV em alta de preço; **bens essenciais** (\(\sigma\) baixa) têm CV alta.

7. **"Lex viola continuidade. Posso usar lex em modelo aplicado?"** — Não diretamente — não tem representação contínua (e portanto sem Lagrangiano). Mas lex aparece em **mecanismos de leilão** (lexicographic preferences over lottery outcomes) e em **ranking multi-critério** (escolha de candidato). Em micro padrão, evite.

8. **"AIDS vs. QUAIDS vs. EASI vs. Translog — qual usar?"** — AIDS é o ponto de partida. QUAIDS adiciona termo quadrático em \(\ln(m/P)\) — necessário se Engel não é log-linear. EASI (Lewbel-Pendakur 2009, *AER* 99(3): 827–863, [DOI 10.1257/aer.99.3.827](https://doi.org/10.1257/aer.99.3.827)) é flexível em formato funcional. Translog é o "primo geral" de CD com termos quadráticos em log-preço. Para MPE: AIDS é referência; outras são extensões para casos onde AIDS rejeita.

9. **"Hicks-Allen 1934 é o que exatamente?"** — Hicks & Allen (1934, *Economica* 1, [DOI 10.2307/2548574](https://doi.org/10.2307/2548574)) estabeleceram a teoria do consumidor "moderna" — separando ordinalidade de cardinalidade, derivando demanda compensada, e cunhando a noção de **integrabilidade** (sob que condições uma demanda observada vem de UMP racional). É o ancestral direto de Slutsky-em-elasticidades e da econometria de demanda moderna.

10. **"A AF vai cobrar Stone-Geary completo?"** — Plausível em peso 🟡. Esperar Marshalliana com \(\gamma\) + Engel + parcela variável. Função gasto **completa** é improvável em peso integral; mais provável em item específico ou via Shephard direto.

11. **"E CV/EV em CES — vai cair?"** — Plausível em peso 🟡 ou 🔴. Calibre próximo do M1-2 ou Aula 3 Ex 5. Variações grandes de preço são as que mais separam: aluno que usa Marshalliana erra; aluno que usa Hicksiana acerta.

12. **"AIDS vai cair?"** — Improvável em integralidade. Pode aparecer pergunta conceitual sobre as 4 restrições e qual delas falha em uma estimativa específica.

---

## Apêndice D — Notas para o Alberto (calibração com o Darcio)

Pontos onde o Darcio gostaria que o Alberto **reforce** ou **mitigue** algum aspecto específico, com base nas auditorias das Aulas 1–3:

1. **Aula 1 / Bloco 2 (formas funcionais) foi denso.** Cobb-Douglas, Leontief, CES e quase-linear apresentadas em ~40 min — pouco tempo para internalizar. Pré-M1 esticou via L'Hôpital. **Alberto: dê tempo extra ao Bloco A se a turma travar em SG.** O exercício M1-1 está calibrado para isso — dualidade completa em um exemplo numérico onde tudo fecha.

2. **Aula 2 / Bloco 4 (dualidade sinótica) é o ponto de virada do curso.** A síntese dos 3 diagramas é o que o aluno tem que levar pra casa. **Alberto: refoce no Bloco 4** que as identidades dual \(x^M = h(p, v(p, m))\) e \(h = x^M(p, e(p, u))\) são **estruturalmente equivalentes** — não são duas coisas, é a mesma coisa vista de duas pontas.

3. **Aula 3 / Bloco 1 (derivação Slutsky) foi rápida.** Auditoria mostrou que aluno típico tropeça em **qual termo** vai com sinal negativo (\(-x_j^M \cdot \partial x_i^M/\partial m\)). **Alberto: insista no exercício M1-1 Passo 4 que \(j\) é o índice do **preço** que mudou, não do bem cuja demanda você está estudando.** Aluno confuso volta na monitoria, e M1-1 Passo 4 é exatamente onde isso é treinado.

4. **Item da auditoria das pré-monitorias (commit `4aaea6c` — "auditoria pré-monitorias — refazer Pré-M1 + fixes M2/M3/M4"):** Pré-M1 passou por revisão recente (auditoria Referee 2 em 2026-05-09, confirmou nota 10/10 pós-fixes). **Alberto: confirme com o Darcio na sexta 15/05** se houve ajuste de calibre que tenha sido feito após a publicação. Os fixes principais foram (i) DOI Heijman-von Mouche corrigido (10.1007/978-3-642-21777-7_6), (ii) gabarito do "sabor ANPEC" item 4 corrigido (matriz de Slutsky **não** é diagonal em \(u = x + \ln y\)).

5. **Box brasileiros recentes que valem citar (sem inventar números):**
   - **POF 2017–18 (IBGE)** — citado no Bloco B. Composição de gasto por quintil. Disponível abertamente em `https://www.ibge.gov.br/estatisticas/sociais/saude/9050-pesquisa-de-orcamentos-familiares.html`.
   - **EC 132/2023 + Lei Complementar 214/2025 (IBS/CBS)** — citável quando discutir CV/EV em política tributária. Reforma tributária do consumo brasileira. Dados de incidência por estrato de renda em estudos da SPE/MF (2024).
   - **Jensen & Miller (2008)** *AER* 98(4): 1553–1577, [DOI 10.1257/aer.98.4.1553](https://doi.org/10.1257/aer.98.4.1553) — Hunan arroz, caso canônico de Giffen.
   - **Hicks-Allen (1934)** *Economica* 1, [DOI 10.2307/2548574](https://doi.org/10.2307/2548574) — origem da Slutsky moderna.
   - **Stone (1954)** *Economic Journal* 64(255): 511–527, [DOI 10.2307/2227743](https://doi.org/10.2307/2227743) — Linear Expenditure System / SG empírico.
   - **Deaton & Muellbauer (1980)** *AER* 70(3): 312–326 (JSTOR stable 1805222) — AIDS canônico.

6. **O que NÃO entrar na monitoria:** funções de Bergson-Samuelson para welfare social (entra em Aula 4–5), economia da informação (Aula 8), modelos dinâmicos (não cabem em micro I). Aula 5 (Arrow-Debreu I) é a próxima — não invadir o terreno. Citar em 30 segundos máximo se aluno perguntar; redirecionar para a M2 (sábado 23/05).

7. **Calibre dos exercícios M1-extra (Apêndice B):** 4 exercícios com gabarito completo. Use **somente** se Bloco 3 fechar adiantado. Senão, ficam como **material de estudo opcional** que o aluno pode consumir após a monitoria — **avise** isso no encerramento se sobrou tempo curto.

8. **Despedida sóbria:** monitoria 1 abre o ciclo (M2 vem em 1 semana). Não force ar de finalização. **Reforce que esta foi a primeira de 5 monitorias e que a estrutura (extensão + exercícios numéricos + ponte AF) vai se repetir.** Aluno que entendeu o ritmo daqui vai chegar bem nas próximas.

9. **Particularidade desta turma:** MPE 2026/32 tem 50 alunos heterogêneos (egressos de Economia, Engenharia, Administração, Direito). **Onboarding matemático** já foi feito antes do curso, mas pode haver assimetria. Nas perguntas-disparo, **evite escolher sempre os mesmos alunos** — varie para puxar quem está calado; uso de quadro com nomes anotados ajuda a calibrar participação.

---

> **Encerramento operacional para o Alberto:** este roteiro tem ~6 horas de material em 2 horas de monitoria. **Não tente cobrir tudo.** A ordem de prioridade é:
> 1. Bloco A (Stone-Geary completo) — sempre.
> 2. Bloco B até B.3 (Slutsky matricial + AIDS-lite + Giffen Hunan) — sempre.
> 3. Exercício M1-1 (Stone-Geary numérico) — sempre.
> 4. Exercício M1-2 (CV/EV em CES) — se sobra tempo; senão, deixar como material de estudo pós-monitoria.
> 5. Bloco B.4 (erros típicos) e Bloco 4 (encerramento) — sempre, mas comprima.
>
> **Verifique reflexões `refl-claro` e `refl-alberto` na Pré-M1 na sexta 15/05** e ajuste a ordem se necessário. Calendário: Pré-M1 fecha sex 15/05 22:00; você tem ~12h para calibrar antes do sábado 10:00.
