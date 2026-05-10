# Monitoria 03 — Roteiro do Monitor (Alberto)

> **Status:** roteiro presencial minuto-a-minuto para a monitoria de **sábado 30/05/2026, 10:00–12:00, Insper**. Tema: **aprofundamento da Aula 5 (Arrow-Debreu I — bens contingentes, mercados completos, SDF, seguro completo)**, com extensão dos pontos que a aula magistral só tangenciou e que a Pré-M3 montou em casa em forma conceitual.

> **Para quem este documento é:** **Alberto Nishikawa** (monitor). Não é roteiro de aula magistral nem reapresentação do conteúdo; é o briefing do que **estender**, do que **trabalhar com a turma**, e dos **erros que provavelmente vão aparecer** dadas as reflexões que vão chegar pela Pré-M3 na sexta 29/05.

> **Conexão com a Avaliação Final (24/06).** Aula 5 entra na **Parte II** da AF (Aulas 4–6), com peso de **30%**. Esta é a primeira monitoria do bloco de equilíbrio geral; M4 (13/06) cobre Aulas 6–7 e M5 (20/06) faz revisão geral. Aqui o foco é **consolidar o aparelho AD canônico** + abrir a ponte para SDF/asset pricing que retorna fortemente em M4 (Hart-GP, equity premium).

> **Aviso operacional sobre calendário:** a turma vê **Aula 6 (Arrow-Debreu II — existência, Radner, mercados incompletos)** em **quarta 27/05**, três dias antes desta monitoria. Mas a **Pré-M4** (que cobre formalmente Aula 6) só abre dia 30/05 às 12:00 — **depois** desta monitoria. **Implicação:** alunos chegam aqui com Aula 6 fresca na cabeça mas **sem aparelho formal de Radner / mercados incompletos**. Cuidado para **não invadir Aula 6** (Hart-GP, span, Radner sequencial). Se aluno perguntar, redireciona: *"Aula 6 cobriu, Pré-M4 abre hoje à tarde, M4 dia 13/06 trabalha. Aqui mantemos foco AD canônico."*

---

## Metadados

- **Curso:** Microeconomia I — MPE 2026/32
- **Data:** sábado, 30/05/2026
- **Horário:** 10:00–12:00 (120 min)
- **Local:** Insper, sala a confirmar com a coordenação
- **Monitor:** Alberto Nishikawa
- **Audiência:** ~50 alunos do MPE
- **Pré-requisitos do aluno:**
  - Aulas 1–5 cursadas. Aula 5 foi quarta 20/05 (10 dias antes). Aula 6 foi quarta 27/05 (3 dias antes — material fresco mas ainda não-consolidado).
  - **Pré-Monitoria 3** completada na plataforma (`pre-monitoria-03.html`). Cobre: heterogeneidade de crenças com no-trade theorem (Milgrom-Stokey 1982), SDF operacional + precificação de ativos (R_f, ações Arrow, ativo arbitrário), CARA/CRRA fórmulas fechadas (Wilson 1968, mutual fund), mercados incompletos como teaser informal (Hart 1975).
  - Quiz pós-aula 5 e exercícios avaliativos 5 fechados em 27/05 às 18:00. **Gabarito 5-passos liberado quinta 28/05 — alunos têm acesso desde então.**
- **Calibre:** **revisão + extensão**. Não é primeira exposição. Foco operacional em **(i)** atender dúvidas trazidas pela Pré-M3 (campo `refl-alberto`), **(ii)** conduzir 3 exercícios numéricos passo-a-passo com parâmetros novos (não duplicar avaliativos Aula 5 nem Pré-M3), **(iii)** apontar 3–4 erros típicos que vão aparecer na Parte II da AF.

---

## O que o aluno **já viu** antes do sábado (não repetir)

Pela Aula 5 magistral + avaliativos + Pré-M3, o aluno **já trabalhou em casa**:

1. **Equilíbrio AD canônico em $L=1, S=2, I=2$** (Aula 5 Bloco 2 + Avaliativo Ex 1, Ex 2, Ex 3): definição de $\mathbb{R}^{LS}$, UMP estendida, equação SDF $p^*_s/p^*_{s'} = \pi^i_s v'(x^{i*}_s)/[\pi^i_{s'} v'(x^{i*}_{s'})]$, viabilidade estado-a-estado. **Não rederivar a definição.**
2. **Seguro completo $A$ avesso + $B$ neutro** (Aula 5 Bloco 4 + Avaliativo Ex 1, Ex 5): preços atuarialmente justos $p^*_s/p^*_{s'} = \pi_s/\pi_{s'}$, agente avesso totalmente segurado. **Conhecem o resultado de cor.**
3. **Heterogeneidade de crenças com $\omega$ idêntica** (Pré-M3 Seção 1 + Avaliativo Ex 2): fórmula fechada $p^*_1/p^*_2 = (\pi^A_1+\pi^B_1)/(\pi^A_2+\pi^B_2)$ sob simetria de dotação; alocações $x^{A*} = (37{,}5;\ 58{,}33)$. **Não repetir o cálculo desse setup específico.**
4. **No-trade theorem** (Pré-M3 Seção 1): citação Milgrom-Stokey 1982. Não derivar; pode citar.
5. **SDF operacional** (Pré-M3 Seção 2): $P_0 = E^\pi[m \cdot D]$, taxa livre de risco $R_f = 1/E[m]$, ações Arrow $P^{(s)}_0 = \pi_s m_s$. **Convenção Cochrane com $\pi$ fora do $m$ — usar consistentemente.**
6. **CARA/CRRA fórmulas fechadas** (Pré-M3 Seção 3): mutual fund de Wilson 1968 (CARA: $x^{i*}_s = \bar\omega_s/I + k^i$); CRRA homotética ($x^{i*}_s = \alpha^i \bar\omega_s$). **Citações canônicas.**
7. **Mercados incompletos teaser** (Pré-M3 Seção 4 + Avaliativo Ex 6): Hart 1975, span, "1ª regra de bem-estar falha quando mercados são incompletos". **Aluno tem aparelho conceitual mas não viu Radner formal.** Não invadir Aula 6/M4.
8. **EG intertemporal sem incerteza** (Avaliativo Ex 4): bens datados como caso particular, taxa de juros endógena, paciente vende presente para impaciente.

**Conclusão operacional:** não dedique tempo a **introduzir** esses tópicos. Use-os como **alavanca**: aluno chega com modelo e pode aplicar no quadro com **parâmetros novos**.

## O que **provavelmente** vai aparecer no campo `refl-alberto`

Antecipação calibrada com base nos exemplos do textarea da Pré-M3 (Seção 5) e nos pontos delicados da auditoria da Aula 5 (`revisao-pass5-referee2.md`). **Reler as reflexões reais na sexta 29/05 antes de finalizar a monitoria** — adaptar os blocos abaixo conforme densidade da demanda.

| Pedido típico (sugerido pela Pré-M3) | Bloco onde tratar |
|---|---|
| "Cálculo numérico do equilíbrio com crenças heterogêneas resolvido em sala (Lagrangiano explícito)" | Bloco A — caso $\omega$ assimétrica + crenças assimétricas (não-cancela renda) |
| "Não entendi por que no-trade theorem não impede comércio em modelos com gosto diferente" | Bloco A — distinção crença-puro vs. info-privada |
| "Quero ver derivação Black-Scholes a partir de SDF" | Bloco B — sketch via árvore binomial 1-período (5 min se sobrar tempo) |
| "Como Lucas (1978) precifica ações?" | Bloco B — exercício numérico CRRA $\gamma=2$ |
| "Mehra-Prescott — qual é exatamente o puzzle?" | Bloco B — encerramento com cálculo do gap CRRA-padrão |
| "Equilíbrio AD com 3 estados (caso Ex 5 dos avaliativos foi exigente)" | Bloco 3 — exercício M3-1 com dotações novas |
| "Como o equilíbrio AD muda quando o agregado é arriscado?" | Bloco B — Lucas é exatamente isso |
| "Por que o exercício 6 dos avaliativos é fronteira da Aula 6?" | (não cabe; redirecionar para M4) |

---

## Timing master (120 min)

| Bloco | Conteúdo | Início | Fim | Duração |
|---|---|---|---|---|
| 0 | Abertura + check-in das dúvidas | 10:00 | 10:10 | **10 min** |
| 1 | **Bloco A — Crenças heterogêneas com Lagrangiano explícito + dotação assimétrica** | 10:10 | 10:40 | **30 min** |
| 2 | **Bloco B — SDF operacional + Lucas asset pricing CRRA $\gamma=2$ + sketch Mehra-Prescott** | 10:40 | 11:10 | **30 min** |
| P1 | Pausa | 11:10 | 11:20 | **10 min** |
| 3 | **Exercícios trabalhados ao vivo:** (i) seguro completo $S=3$ numérico, (ii) Lucas CRRA $\gamma=2$, (iii) SDF com crenças heterogêneas e dotação assimétrica | 11:20 | 11:50 | **30 min** |
| 4 | Encerramento + ponte M4 + erros típicos AF Parte II + dúvidas finais | 11:50 | 12:00 | **10 min** |

**Soma:** \(10 + 30 + 30 + 10 + 30 + 10 = 120\) min. ✓

> **Variáveis de ajuste em tempo real.** Se o **Bloco A derrapa** em 5 min (turma demanda mais Lagrangiano explícito), corte do Bloco B o sketch Black-Scholes (B.3) e mantenha apenas Lucas + Mehra-Prescott qualitativo. Se o **Bloco B derrapa** (Lucas é cálculo cuidadoso), corte do Bloco 3 o exercício M3-3 (heterogeneidade) e mantenha M3-1 + M3-2. Se ambos os blocos correm bem, o Bloco 3 pode ganhar 5 min para discussão socrática sobre por que CRRA "típico" não bate com dados.

---

## Bloco 0 — Abertura + check-in (10 min)

**10:00–10:10.**

### Roteiro

1. **Cumprimento e moldura (2 min).** "Bom dia. Monitoria 3. Tema: extensões da Aula 5 — Arrow-Debreu I, mercados completos, SDF. Vocês já viram o aparelho na Aula 5 e nos avaliativos; a Pré-M3 puxou para SDF operacional, no-trade theorem e teaser de mercados incompletos. Hoje **levantamos a partir disso** com cálculo numérico passo-a-passo. **Não vou repetir definição de $\mathbb{R}^{LS}$ nem rederivar 1º TBE estendido — vocês têm.**"

2. **Aviso operacional sobre Aula 6 (1 min).** "Vocês viram Aula 6 quarta passada (27/05). **Hoje aqui é estritamente Aula 5.** Mercados incompletos / Radner / Hart-GP entram **na M4** (13/06). Se aparecer pergunta de Aula 6, redireciono. Pré-M4 abre hoje meio-dia."

3. **Check-in das dúvidas (4 min).** Pergunte abertamente: *"Quem fez a Pré-M3 quer compartilhar 1 dúvida que ficou nebulosa?"*
   - Anote no canto do quadro 3 a 5 tópicos.
   - Triagem rápida: marque ✅ ao lado do que cabe nos Blocos A, B ou 3; marque ⏭ no que é Aula 6/M4 ou está fora do escopo.
   - **Não tente resolver agora.** A função desse check-in é (a) ativar a turma e (b) calibrar o ritmo dos blocos.

4. **Conexão com AF (3 min).** Quadro:

   | Parte AF | Aulas | Peso |
   |---|---|---|
   | I | 1, 2, 3 | 40% |
   | **II** | **4, 5, 6** | **30%** |
   | III | 7, 8 | 20% |
   | IV | 9 | 10% |

   > "Aula 5 está em **30%** da prova combinada com Aulas 4 e 6. Calibre esperado: **🟡 a 🔴**. **Plausível na AF Parte II:** problema de equilíbrio AD com 2 ou 3 estados, agente avesso + neutro, pedindo (i) preços, (ii) alocação de equilíbrio, (iii) verificar 1º TBE explicitamente. Hoje a gente trabalha justamente isso."

### Transição para o Bloco A

> "Começamos com crenças heterogêneas. A Pré-M3 fechou o caso simétrico (dotações iguais → fórmula fechada $p^*_1/p^*_2 = (\pi^A_1+\pi^B_1)/(\pi^A_2+\pi^B_2)$ por cancelamento de renda). Vou mostrar agora o caso **assimétrico** — quando dotações divergem, rendas não cancelam, e precisamos do Lagrangiano explícito."

---

## Bloco A — Crenças heterogêneas com Lagrangiano explícito + dotação assimétrica (30 min)

**10:10–10:40.**

### Objetivo do bloco

1. **Estender** a Pré-M3 Seção 1 e o Avaliativo Ex 2 para o caso **dotações assimétricas + crenças assimétricas** — onde a fórmula fechada $p^*_1/p^*_2 = (\sum_i \pi^i_1 m^i)/(\sum_i \pi^i_2 m^i)$ é **endógena** porque $m^i$ depende de $p$.
2. **Derivar** o sistema com Lagrangiano explícito; resolver no quadro com participação da turma.
3. **Conectar** com o no-trade theorem (Milgrom-Stokey 1982): por que comércio sobrevive aqui mas desapareceria sob informação privada com common knowledge.

### Estrutura interna (30 min)

#### A.1 (12 min) — Lagrangiano explícito do caso assimétrico

**O que o aluno já tem da Pré-M3** (não rederivar):

- Setup canônico: $L=1$, $S=2$, $I=2$, Bernoullis log idênticas, crenças heterogêneas.
- Sob dotações **idênticas** $\omega^A = \omega^B = (50, 50)$: rendas se cancelam, fórmula $p^*_1/p^*_2 = (\pi^A_1+\pi^B_1)/(\pi^A_2+\pi^B_2)$.
- Numericamente com $\pi^A=(0{,}3; 0{,}7)$, $\pi^B=(0{,}5; 0{,}5)$: $p^*_1/p^*_2 = 0{,}8/1{,}2 = 2/3$; $x^{A*}=(37{,}5; 58{,}33)$, $x^{B*}=(62{,}5; 41{,}67)$.

**Extensão do Alberto (no quadro):** mantém crenças, mas **dotações agora assimétricas**: $\omega^A = (60, 40)$, $\omega^B = (40, 60)$. Total $\bar\omega = (100, 100)$ — **agregado livre de risco** (mesmo do Avaliativo Ex 3, mas crenças heterogêneas em vez de simétricas).

**Programa de cada agente** (UMP em $\mathbb{R}^2$):

\[
\max_{x^i_1, x^i_2} \;\; \pi^i_1 \ln(x^i_1) + \pi^i_2 \ln(x^i_2) \quad\text{s.a.}\quad p_1 x^i_1 + p_2 x^i_2 = p_1 \omega^i_1 + p_2 \omega^i_2.
\]

Lagrangiano:

\[
\mathcal{L}^i = \pi^i_1 \ln(x^i_1) + \pi^i_2 \ln(x^i_2) - \lambda^i \big[p_1 x^i_1 + p_2 x^i_2 - m^i(p)\big],
\]

onde $m^i(p) = p_1 \omega^i_1 + p_2 \omega^i_2$ é a **renda endógena em preços**.

CPO em $x^i_s$: $\pi^i_s/x^i_s = \lambda^i p_s$. Logo $x^i_s = \pi^i_s/(\lambda^i p_s)$. Substituindo no orçamento:

\[
\sum_s p_s \cdot \frac{\pi^i_s}{\lambda^i p_s} = \frac{1}{\lambda^i} \sum_s \pi^i_s = \frac{1}{\lambda^i} = m^i(p).
\]

Logo $1/\lambda^i = m^i$ e a **demanda Cobb-Douglas em log**:

\[
\boxed{\;x^i_s = \frac{\pi^i_s\, m^i(p)}{p_s}.\;}
\]

> **Eq-punch:** *"Com Bernoulli log, demanda é Cobb-Douglas — fração $\pi^i_s$ da renda gasta no estado $s$. **A renda $m^i$ é endógena** porque depende dos preços via dotação. Quando $\omega$ é simétrica, $m^A = m^B$ e cancela; quando $\omega$ é assimétrica, sobrevive na fórmula. Esse é o ponto da extensão."*

#### A.2 (12 min) — Resolução do sistema no quadro

**Viabilidade do estado 1:**

\[
x^A_1 + x^B_1 = \frac{\pi^A_1 m^A + \pi^B_1 m^B}{p_1} = \bar\omega_1 = 100.
\]

Substituindo crenças $\pi^A=(0{,}4; 0{,}6)$, $\pi^B=(0{,}7; 0{,}3)$ (parâmetros novos da monitoria, distintos do Avaliativo Ex 2 e da Pré-M3 que usam $\pi^A=(0{,}3; 0{,}7), \pi^B=(0{,}5; 0{,}5)$):

\[
0{,}4 (60 p_1 + 40 p_2) + 0{,}7 (40 p_1 + 60 p_2) = 100 p_1.
\]

Expandir:

\[
24 p_1 + 16 p_2 + 28 p_1 + 42 p_2 = 100 p_1
\;\;\Longleftrightarrow\;\;
52 p_1 + 58 p_2 = 100 p_1
\;\;\Longleftrightarrow\;\;
58 p_2 = 48 p_1.
\]

Logo:

\[
\boxed{\;\frac{p^*_1}{p^*_2} = \frac{58}{48} = \frac{29}{24} \approx 1{,}208.\;}
\]

**Verificação cruzada via viabilidade do estado 2** (1 min, faça com a turma):

$\pi^A_2 m^A + \pi^B_2 m^B = 0{,}6(60p_1 + 40p_2) + 0{,}3(40p_1 + 60p_2) = 36 p_1 + 24 p_2 + 12 p_1 + 18 p_2 = 48 p_1 + 42 p_2 = 100 p_2$

⇒ $48 p_1 = 100 p_2 - 42 p_2 = 58 p_2$ ⇒ idem. ✓ (Walras: viabilidade dos dois estados é redundante; um implica o outro via orçamento.)

**Cálculo das alocações** (normalize $p_2 = 1$, $p_1 = 29/24$):

- $m^A = 60 \cdot 29/24 + 40 = 1740/24 + 960/24 = 2700/24 = 112{,}5$.
- $m^B = 40 \cdot 29/24 + 60 = 1160/24 + 1440/24 = 2600/24 \approx 108{,}33$.
- $x^A_1 = 0{,}4 \cdot 112{,}5/(29/24) = 45 \cdot 24/29 = 1080/29 \approx 37{,}24$.
- $x^A_2 = 0{,}6 \cdot 112{,}5/1 = 67{,}5$.
- $x^B_1 = 0{,}7 \cdot 108{,}33 \cdot 24/29 = (75{,}83)(24/29) \approx 62{,}76$.
- $x^B_2 = 0{,}3 \cdot 108{,}33/1 = 32{,}5$.

**Verificação de viabilidade:** $x^A_1 + x^B_1 \approx 37{,}24 + 62{,}76 = 100$ ✓; $x^A_2 + x^B_2 = 67{,}5 + 32{,}5 = 100$ ✓.

**Pergunta-disparo para a turma:**

> *"Olhem $x^A$. $A$ acha estado 2 mais provável ($\pi^A_2 = 0{,}6$). Em equilíbrio, $A$ consome $67{,}5$ no estado 2 e apenas $37{,}24$ no estado 1. **$A$ apostou pesado contra o estado 1** — vendeu reivindicação-estado-1 para B (que valoriza muito o estado 1 com $\pi^B_1 = 0{,}7$) e usou a receita para comprar reivindicação-estado-2."*

> **Comparação com agregado livre de risco + crenças idênticas (Avaliativo Ex 3):** lá, ambos atingem $x^A = x^B = (80, 80)$ (totalmente segurados individualmente). **Aqui**, agregado é livre de risco mas crenças assimétricas geram **trade interno** — agentes "apostam um contra o outro" mesmo sem risco agregado. **Esse é o ponto que a Pré-M3 prepara mas que só fica vivo no cálculo.**

#### A.3 (5 min) — No-trade theorem revisitado

> "A Pré-M3 mencionou Milgrom-Stokey 1982. Vou amarrar: **por que comércio sobrevive aqui** mas desapareceria sob a hipótese do teorema?"

Quadro com tabela:

| Cenário | Trade em equilíbrio? | Por quê? |
|---|---|---|
| Crenças vêm de **gosto/heurística** (caso de hoje) | **Sim**, comércio robusto | Crenças são exógenas; agentes não inferem nada um do outro |
| Crenças vêm de **informação privada** (Milgrom-Stokey) | **Não** (sob common knowledge de racionalidade) | Disposição de A vender bilhete-1 sinaliza "A sabe algo que B deveria pensar"; B não compra; mercado fecha |

> **Eq-punch para Alberto cravar:** *"O setup que vocês resolveram hoje — crenças exógenas — é onde **mercados de aposta sobrevivem**. Pari-mutuel funciona porque torcedores têm gostos heterogêneos sobre seu time. **Mercados financeiros**, sob a versão pura de Milgrom-Stokey, deveriam ter trade puramente especulativo zero. **Empiricamente, há volume gigantesco de trade — então as hipóteses do teorema não valem fortemente. É a fricção que motiva noise traders, viés comportamental, e overconfidence (Odean 1998 e literatura subsequente — fora do escopo do MPE).*"

**Citação canônica:** *Milgrom & Stokey (1982), J. Economic Theory 26(1): 17–27, [DOI 10.1016/0022-0531(82)90046-1](https://doi.org/10.1016/0022-0531(82)90046-1)*.

#### A.4 (1 min) — Síntese do Bloco A

> "Levaram do Bloco A: (i) com $\omega$ assimétrica, demanda log-CD continua valendo mas a renda $m^i(p)$ não cancela; (ii) razão $p^*_1/p^*_2 = 29/24 \approx 1{,}208$ resolve o sistema; (iii) trade endógeno mesmo com agregado livre de risco — heterogeneidade de crenças cria aposta entre agentes; (iv) no-trade theorem só aplica sob informação privada + common knowledge."

### Saída do Bloco A

A turma sai sabendo responder em uma palavra:

- "Por que demanda em log é Cobb-Douglas?" → CPO entrega $x^i_s = \pi^i_s m^i/p_s$, fração da renda $\pi^i_s$ no estado $s$.
- "Quando rendas cancelam na fórmula?" → quando $\omega^A = \omega^B$ (e Bernoullis idênticas). Heterogeneidade de dotação **força** a usar Lagrangiano completo.
- "Comércio sobrevive sob crenças heterogêneas exógenas?" → sim. Sob informação privada + common knowledge → não.

### Transição para o Bloco B

> "Crenças heterogêneas foi extensão do AD canônico. Bloco B é a outra grande aplicação: **SDF aplicado a precificação de ativos**. A Pré-M3 mostrou as fórmulas; aqui vamos calcular Lucas (1978) com CRRA $\gamma = 2$ e ver de onde vem o equity premium. Aterrissamos com Mehra-Prescott qualitativo — o famoso 'puzzle'."

---

## Bloco B — SDF operacional + Lucas asset pricing CRRA + Mehra-Prescott (30 min)

**10:40–11:10.**

### Objetivo do bloco

1. **Calcular** numericamente o equilíbrio Lucas (1978) com CRRA $\gamma=2$ em economia de troca pura $S=2$. Derivar SDF, taxa livre de risco, preço da equity, equity premium.
2. **Mostrar** o gap quantitativo: o exemplo numérico exagera $\sigma(c)$ para gerar prêmio, mas com $\sigma(\ln c) \approx 2\%$ empírico, $\gamma$ teria que ser absurdamente alto. Esse é o **equity premium puzzle** (Mehra-Prescott 1985).
3. **Sketch opcional** de Black-Scholes (1973) como aplicação famosa do SDF (5 min se sobrar tempo, condicional à demanda no `refl-alberto`).

### Estrutura interna (30 min)

#### B.1 (15 min) — Lucas asset pricing CRRA $\gamma=2$ no quadro

**Setup pedagógico** (no quadro, 2 min):

- Economia de troca pura, agente representativo.
- $t = 0$: dotação determinística $c_0 = 100$.
- $t = 1$: dois estados, $c_1 \in \{c_L, c_H\} = \{80, 120\}$ com $\pi=(0{,}5; 0{,}5)$.
- Bernoulli CRRA $v(c) = c^{1-\gamma}/(1-\gamma)$ com $\gamma = 2$ ⇒ $v'(c) = c^{-2}$.
- Fator de desconto $\beta = 0{,}96$.

> *"Esta é a redução pedagógica máxima do modelo Lucas. Em equilíbrio com agente representativo, $x^*_s = c_s$ (consumo coincide com dotação — não há comércio entre agentes idênticos). O SDF é então **exógeno do ponto de vista de cada agente**, mas **endógeno do ponto de vista do equilíbrio**: ele é o que faz preços serem consistentes com a CPO."*

**Passo 1 — SDF (3 min):**

\[
m_s = \beta \cdot \frac{v'(c_s)}{v'(c_0)} = \beta \cdot \left(\frac{c_0}{c_s}\right)^2.
\]

Cálculos:

\[
m_L = 0{,}96 \cdot \left(\frac{100}{80}\right)^2 = 0{,}96 \cdot \left(\frac{5}{4}\right)^2 = 0{,}96 \cdot \frac{25}{16} = \frac{24}{16} = 1{,}5.
\]

\[
m_H = 0{,}96 \cdot \left(\frac{100}{120}\right)^2 = 0{,}96 \cdot \left(\frac{5}{6}\right)^2 = 0{,}96 \cdot \frac{25}{36} = \frac{24}{36} = \frac{2}{3} \approx 0{,}6667.
\]

> **Pergunta-disparo:** *"Note que $m_L > m_H$. Por quê?"* — resposta esperada: estado L é "ruim" (consumo baixo), agente está faminto, utilidade marginal alta → SDF alto. **Pagamentos no estado ruim valem mais em utilidade.**

**Passo 2 — Taxa livre de risco $R_f$ (3 min):**

Bond livre de risco paga $D = (1, 1)$. Preço:

\[
P_0^{rf} = E^\pi[m] = 0{,}5 \cdot 1{,}5 + 0{,}5 \cdot 0{,}6667 = 0{,}75 + 0{,}3333 = 1{,}0833.
\]

\[
R_f = \frac{1}{P_0^{rf}} = \frac{1}{1{,}0833} \approx 0{,}9231.
\]

> **Pergunta-disparo:** *"$R_f < 1$ — taxa real **negativa**?"* — resposta: sim, **anomalia de modelo de troca sem crescimento**. Aqui $E[c_1] = 100 = c_0$, sem crescimento esperado. Em economia com $E[c_1] > c_0$ (crescimento positivo médio), $R_f$ subiria. Brasil real ~5% real (Tesouro IPCA+ longo); EUA ~1–2% real; modelo aqui mostra mecânica, não calibração.

**Passo 3 — Preço da equity (3 min):**

Equity é claim sobre todo o consumo: dividendo $d_s = c_s$. Preço:

\[
P_0^{eq} = E^\pi[m \cdot c_1] = 0{,}5 \cdot 1{,}5 \cdot 80 + 0{,}5 \cdot 0{,}6667 \cdot 120 = 60 + 40 = 100.
\]

Retorno bruto esperado da equity:

\[
E[R^{eq}] = \frac{E[c_1]}{P_0^{eq}} = \frac{0{,}5 \cdot 80 + 0{,}5 \cdot 120}{100} = \frac{100}{100} = 1{,}0.
\]

**Equity premium:**

\[
\boxed{\;E[R^{eq}] - R_f = 1{,}0 - 0{,}9231 = 0{,}0769 \approx 7{,}7\%.\;}
\]

> **Eq-punch:** *"Equity vale mais em utilidade-esperada do que bond porque equity paga **mais** no estado bom (onde SDF é baixo) e **menos** no estado ruim (onde SDF é alto). É a **covariância negativa** entre payoff e SDF que gera o prêmio. Quem segura equity carrega risco macroeconômico — exige prêmio."*

**Verificação algébrica do prêmio via covariância** (2 min, opcional):

Equação fundamental: $1 = E[m \cdot R^{eq}] = E[m] E[R^{eq}] + \text{Cov}(m, R^{eq})$.

Logo $E[R^{eq}] = (1 - \text{Cov}(m, R^{eq}))/E[m]$.

Aqui $R^{eq}_s = c_s/P_0^{eq}$. $\text{Cov}(m, R^{eq}) = E[m \cdot R^{eq}] - E[m]E[R^{eq}] = 1 - 1{,}0833 \cdot 1{,}0 = -0{,}0833$.

Substituindo: $E[R^{eq}] = (1 - (-0{,}0833))/1{,}0833 = 1{,}0833/1{,}0833 = 1{,}0$ ✓.

> "**A covariância negativa $\text{Cov}(m, R^{eq}) = -0{,}083$ é o motor mecânico do prêmio.**"

#### B.2 (10 min) — Mehra-Prescott qualitativo + gap quantitativo

**O puzzle, em uma frase** (1 min):

> *"Mehra & Prescott (1985) calibraram CRRA com $\gamma$ entre 0 e 10, $\sigma(\Delta\ln c) \approx 2\%$ (volatilidade empírica do consumo per capita americano pós-WWII), $\beta \approx 0{,}96$, $E[\Delta\ln c] \approx 1{,}8\%$, e mostraram que o modelo prevê equity premium **inferior a 1% ao ano**. **Empírico americano pós-1947: 6–7% ao ano.** Gap de 5–6 p.p. Esse é o **equity premium puzzle**."*

**Por que o exercício de hoje (B.1) gerou prêmio "alto" sem $\gamma$ absurdo** (3 min):

Quadro:

| Parâmetro | Hoje (B.1) | Mehra-Prescott (calibração americana) |
|---|---|---|
| $\gamma$ | 2 | 0–10 (típico 2–3) |
| $\sigma(c)/E[c]$ | $20/100 = 20\%$ | $\approx 3\%$ |
| $\sigma(\ln c)$ | $\approx 22\%$ | $\approx 2\%$ |
| Equity premium gerado | $7{,}7\%$ | $< 1\%$ |

> *"O exercício de hoje **trapaceou** com $\sigma(c) = 20\%$ — uma economia onde o consumo agregado oscila 20% entre estados, o que é **catastrófico** comparado ao real. Reduzindo $\sigma(c)$ para o nível empírico americano $\approx 3\%$ e mantendo $\gamma = 2$, o prêmio cai para algo da ordem de $\gamma \cdot \sigma^2(\ln c) \approx 2 \cdot (0{,}02)^2 = 0{,}08\%$ — **insignificante**. Para gerar 6%, precisaria de $\gamma \approx 30$ ou mais."*

**Cálculo da fórmula aproximada (CRRA log-normal, sem derivar):**

\[
\text{equity premium} \approx \gamma \cdot \text{Cov}(\Delta\ln c, \Delta\ln c) = \gamma \cdot \sigma^2(\Delta\ln c).
\]

Com $\gamma = 2$, $\sigma(\Delta\ln c) = 0{,}02$: prêmio $\approx 0{,}0008 = 0{,}08\%$. **Não chega perto dos 6% empíricos.** Para 6%, $\gamma = 0{,}06/0{,}0004 = 150$. **Aversão absurda — daí "puzzle".**

> **Citação canônica:** *Mehra & Prescott (1985), J. Monetary Economics 15(2): 145–161, [DOI 10.1016/0304-3932(85)90061-3](https://doi.org/10.1016/0304-3932(85)90061-3)*.

**Saídas teóricas para o puzzle (citar, não derivar — 2 min):**

| Saída | Mecanismo | Citação |
|---|---|---|
| **Habit formation** | $u(c) = (c - X)^{1-\gamma}/(1-\gamma)$ com hábito $X$ que se ajusta lentamente | Campbell-Cochrane (1999), JPE 107(2) |
| **Risco de desastres** | Probabilidade pequena de queda profunda do consumo eleva $\sigma(m)$ | Barro (2006), QJE 121(3); Rietz (1988) |
| **Epstein-Zin** | Decompõe aversão ao risco e elasticidade intertemporal | Epstein-Zin (1989), Econometrica 57(4) |
| **Hansen-Jagannathan bound** | Diagnóstico (não solução): $\sigma(m)/E[m] \ge \|E[R^e]\|/\sigma(R^e)$ | Hansen-Jagannathan (1991), JPE 99(2), [DOI 10.1086/261749](https://doi.org/10.1086/261749) |

> *"Cada uma é um capítulo de macro-finanças. **Para MPE, basta reconhecer:** o aparelho SDF + Lucas (1978) é a tradução técnica do problema, e a calibração CRRA simples não bate com os dados. **Próxima monitoria (M4) com Alberto vai estender com o Hansen-Jagannathan bound** quando entrar em mercados incompletos (Aula 6)."*

> **Citação canônica:** *Lucas (1978), Econometrica 46(6): 1429–1445, "Asset Prices in an Exchange Economy", [DOI 10.2307/1913837](https://doi.org/10.2307/1913837)*.

#### B.3 (4 min, opcional) — Sketch Black-Scholes via SDF

**Trigger condicional:** acionar somente se 30%+ do `refl-alberto` pediu Black-Scholes; caso contrário, **pular para encerramento do bloco B**.

> *"Black-Scholes (1973) precifica uma opção como combinação linear de ações + bond, **assumindo mercado completo**. Em $|S| = 2$ por nó da árvore binomial, ações + bond geram $|S|$ ativos linearmente independentes — **completam o mercado**. Por arbitragem (1ª lei do bem-estar via SDF único), o preço da opção é determinado."*

Quadro com sketch curto:

- Ação: $S_0 \to S_0 \cdot u$ (estado up) ou $S_0 \cdot d$ (estado down).
- Bond: $1 \to R_f$ em ambos os estados.
- Call europeia strike $K$: payoff $\max(S_T - K, 0) = (C_u, C_d)$.
- 2 ativos, 2 estados ⇒ mercado completo ⇒ existe $m = (m_u, m_d)$ único.
- Preço da call: $C_0 = E^\pi[m \cdot (C_u, C_d)] = \pi_u m_u C_u + \pi_d m_d C_d$.

Com **probabilidade neutra ao risco** $\tilde\pi = \pi \cdot m \cdot R_f$ (que reespecifica medida para que SDF vire $1/R_f$):

\[
C_0 = \frac{1}{R_f} \cdot E^{\tilde\pi}[\max(S_T - K, 0)] = \frac{1}{R_f}\big[\tilde\pi_u C_u + \tilde\pi_d C_d\big].
\]

> *"**Black-Scholes contínuo é o limite** dessa árvore quando $\Delta t \to 0$. A pricing measure $\tilde\pi$ é a famosa 'risk-neutral measure' das finanças. **Aplicação direta do SDF da Aula 5.**"*

**Citação canônica:** *Black & Scholes (1973), J. Political Economy 81(3): 637–654, [DOI 10.1086/260062](https://doi.org/10.1086/260062)*.

#### B.4 (1 min) — Síntese do Bloco B

> "Levaram do Bloco B: (i) Lucas precifica equity como $P_0 = E[m \cdot d]$; (ii) equity premium vem de $\text{Cov}(m, R^{eq}) < 0$; (iii) com $\sigma(c)$ empírico baixo + $\gamma$ razoável, prêmio CRRA-puro fica longe de 6% empírico — equity premium puzzle; (iv) saídas teóricas: habit, desastres, Epstein-Zin; (v) Black-Scholes é SDF aplicado em mercado completo binomial."

### Saída do Bloco B

A turma sai sabendo responder:

- "Por que equity vale prêmio sobre bond?" → covariância negativa entre payoff e SDF.
- "$R_f$ negativo no exemplo de hoje — bug?" → não, mecânico de modelo de troca sem crescimento.
- "Mehra-Prescott — qual o gap?" → modelo prevê <1%, empírico 6%, $\gamma$ teria que ser absurdo.

### Transição para a pausa

> "Pausa de 10 minutos. Quando voltarem: três exercícios trabalhados ao vivo, com vocês fazendo a primeira tentativa antes de eu resolver."

---

## Pausa — 10 min (11:10–11:20)

Não tente "explicar mais um ponto" durante a pausa — alunos precisam descansar para o Bloco 3.

---

## Bloco 3 — Exercícios trabalhados ao vivo (30 min)

**11:20–11:50.**

### Estrutura

Três exercícios, **parâmetros novos** (não duplicar avaliativos da Aula 5 nem os blocos A/B desta monitoria):

- **Exercício M3-1 — Seguro completo $S=3$ numérico** (10 min). Calibre 🟡.
- **Exercício M3-2 — Lucas asset pricing CRRA $\gamma=2$ com parâmetros novos** (10 min). Calibre 🔴.
- **Exercício M3-3 — SDF com crenças heterogêneas + dotação assimétrica** (10 min). Calibre 🟡.

**Procedimento operacional:** anuncie o enunciado, dê **2 min** para o aluno tentar individualmente (ou em duplas), depois resolva no quadro com participação. Faz a turma falar — não monologue.

---

### Exercício M3-1 (10 min) — Seguro completo $S=3$ numérico 🟡

#### Enunciado

Economia $L=1$, $S=3$ estados (recessão / normal / boom), $I=2$ agentes. Probabilidades de consenso $\pi = (0{,}2; 0{,}5; 0{,}3)$. Bernoullis: $A$ avesso $v_A(c) = \ln c$, $B$ neutro $v_B(c) = c$.

Dotações: $\omega^A = (20, 50, 80)$, $\omega^B = (40, 30, 30)$. Total $\bar\omega = (60, 80, 110)$ — agregado **arriscado** mas com $B$ neutro carregando o risco. Numerário $p_3 = 1$.

**Pede-se:**
1. Razões de preço $p^*_s/p^*_3$ via neutralidade de $B$.
2. Consumo de equilíbrio de $A$ (totalmente segurado).
3. Consumo de equilíbrio de $B$ via viabilidade.
4. Verificar 1º TBE explicitamente (alocação Pareto-eficiente?).

#### Resolução guiada

**Passo 1 — Neutralidade de $B$ (2 min):**

$v_B = c$ ⇒ marginais constantes iguais a 1 ⇒ no ótimo interior, $\partial u^B/\partial x^B_s = \pi_s = \lambda^B p^*_s$ ⇒ $p^*_s/p^*_{s'} = \pi_s/\pi_{s'}$.

Com $p_3 = 1$:

\[
p^*_1 = \pi_1/\pi_3 = 0{,}2/0{,}3 = 2/3, \quad p^*_2 = \pi_2/\pi_3 = 0{,}5/0{,}3 = 5/3, \quad p^*_3 = 1.
\]

**Passo 2 — $A$ totalmente segurado (3 min):**

CPO de $A$ ($v = \ln$): $(\pi_s/x^A_s)/(\pi_{s'}/x^A_{s'}) = p^*_s/p^*_{s'} = \pi_s/\pi_{s'}$. Cancela $\pi$: $x^A_s = x^A_{s'}$ para todo par. Logo $x^A_1 = x^A_2 = x^A_3 \equiv \bar c^A$.

Orçamento de $A$:

\[
\bar c^A (p^*_1 + p^*_2 + p^*_3) = p^*_1 \omega^A_1 + p^*_2 \omega^A_2 + p^*_3 \omega^A_3.
\]

\[
\bar c^A \cdot \left(\frac{2}{3} + \frac{5}{3} + 1\right) = \frac{2}{3}(20) + \frac{5}{3}(50) + 1(80).
\]

\[
\bar c^A \cdot \frac{10}{3} = \frac{40}{3} + \frac{250}{3} + 80 = \frac{40 + 250 + 240}{3} = \frac{530}{3}.
\]

\[
\boxed{\;\bar c^A = \frac{530}{3} \cdot \frac{3}{10} = 53.\;}
\]

**Passo 3 — $B$ por viabilidade (2 min):**

\[
x^B_s = \bar\omega_s - x^A_s = \bar\omega_s - 53.
\]

\[
x^B = (60-53, 80-53, 110-53) = (7, 27, 57).
\]

**Verificação cruzada via orçamento de $B$:**

LHS: $(2/3)(7) + (5/3)(27) + 1(57) = 14/3 + 135/3 + 57 = 149/3 + 171/3 = 320/3$.

RHS: $(2/3)(40) + (5/3)(30) + 1(30) = 80/3 + 150/3 + 30 = 230/3 + 90/3 = 320/3$. ✓

**Passo 4 — Verificação 1º TBE (3 min):**

Suponha por contradição que $\tilde x$ Pareto-superior. Pela UMP em $p^*$, o agente $j$ estritamente melhor satisfaz $p^* \cdot \tilde x^j > p^* \cdot \omega^j$ (revealed preference). Por LNS, o outro: $p^* \cdot \tilde x^i \ge p^* \cdot \omega^i$. Soma:

\[
p^* \cdot (\tilde x^A + \tilde x^B) > p^* \cdot \bar\omega = (2/3)(60) + (5/3)(80) + (1)(110) = 40 + 400/3 + 110 = 150 + 400/3 = 850/3.
\]

Mas viabilidade exige $\tilde x^A + \tilde x^B = \bar\omega$ **estado-a-estado**, então $p^* \cdot (\tilde x^A + \tilde x^B) = p^* \cdot \bar\omega$. Contradição. **Logo a alocação $(53, 53, 53; 7, 27, 57)$ é Pareto-eficiente.** ✓

#### Gabarito 5-passos

**1. Ponto-chave.** Em mercado completo AD com $|S|$ estados e agente neutro, **independentemente do número de estados**, neutralidade entrega preços atuarialmente justos ($p^*_s/p^*_{s'} = \pi_s/\pi_{s'}$) e o avesso fica totalmente segurado em todos os estados ($x^{A*}_s = \bar c^A$ constante). 1º TBE estende sem alteração — prova reaproveitada da Aula 4 com viabilidade estado-a-estado.

**2. Derivação.** Neutralidade de $B$ ⇒ marginais $\pi_s$ proporcionais a $p_s$ ⇒ $p^*_s = \pi_s$ (numerário $p_3=1$ implica fator $1/\pi_3$). CPO de $A$ ($\ln$) cancela $\pi$ ⇒ $x^A_s$ constante. Orçamento de $A$: $\bar c^A \cdot \sum p_s = \sum p_s \omega^A_s$ ⇒ $\bar c^A = (\sum p_s \omega^A_s)/(\sum p_s) = (530/3)/(10/3) = 53$. Viabilidade ⇒ $x^B = (7, 27, 57)$.

**3. Armadilha.** Aluno típico esquece o fator $1/\pi_3$ ao normalizar e usa $p^* = \pi$ direto, errando os preços por um fator constante (não muda alocações, mas embaralha rendas se for cuidadoso). Outro erro: escreve $\bar c^A = (\omega^A_1 + \omega^A_2 + \omega^A_3)/3 = 50$ achando que "totalmente segurado = média aritmética da dotação". **Falso** — é **média ponderada pelos preços** ($\bar c^A = \sum p_s \omega^A_s / \sum p_s$). Aqui dá 53, não 50, porque o estado 2 (mais provável + mais caro) puxa para cima.

**4. Extensão.** **Em mercado incompleto** (Aula 6, exercício 6 dos avaliativos da Aula 5 já tocou informalmente), o passo 1 falha: B neutro não está numa "cesta interior" do mercado completo, e A não consegue se segurar em todos os 3 estados. Equilíbrio resultante (Radner) é constrained-PE mas genericamente Pareto-ineficiente (Hart 1975, [DOI 10.1016/0022-0531(75)90028-9](https://doi.org/10.1016/0022-0531(75)90028-9)). **Pré-M4 e M4 dia 13/06 trabalham isso.**

**5. Peer-review.** Calibre 🟡. **Distinto dos avaliativos** Aula 5 Ex 1 (que usa $S=2$, $\pi=(0{,}4; 0{,}6)$, agregado $\bar\omega=(100, 160)$) e Ex 5 (que usa $S=3$, $\pi=(0{,}3; 0{,}5; 0{,}2)$, $\omega^A=(10,30,20)$, $\omega^B=(20,10,30)$, $\bar c^A=22$). Aqui parâmetros novos: $\pi=(0{,}2; 0{,}5; 0{,}3)$, dotações $(20,50,80)$ e $(40,30,30)$, $\bar c^A = 53$. **Estrutura idêntica, números novos.** **Tradeoff de tempo:** ~10 min, alvo. **Risco residual:** baixo. **Variante AF:** mesma estrutura com $S=2$ ou $S=3$, parâmetros calibrados para $\bar c^A$ inteiro.

---

### Exercício M3-2 (10 min) — Lucas asset pricing CRRA $\gamma=2$ 🔴

#### Enunciado

Economia de troca pura, agente representativo. $t=0$: dotação determinística $c_0 = 50$. $t=1$: dotação contingente $c_1 \in \{c_L, c_H\} = \{40, 75\}$ com $\pi = (0{,}5; 0{,}5)$. Bernoulli CRRA $v(c) = c^{1-\gamma}/(1-\gamma)$ com $\gamma = 2$ (logo $v'(c) = c^{-2}$). Fator de desconto $\beta = 0{,}9$.

**Pede-se:**
1. Calcular SDF $m_L, m_H$.
2. Preço e taxa do bond livre de risco.
3. Preço da equity (claim sobre $c_1$) e equity premium.
4. Comparar com calibração Mehra-Prescott e discutir o puzzle.

#### Resolução guiada

**Passo 1 — SDF (2 min):**

\[
m_s = \beta \cdot \frac{v'(c_s)}{v'(c_0)} = \beta \cdot \left(\frac{c_0}{c_s}\right)^2.
\]

\[
m_L = 0{,}9 \cdot \left(\frac{50}{40}\right)^2 = 0{,}9 \cdot \left(\frac{5}{4}\right)^2 = 0{,}9 \cdot \frac{25}{16} = \frac{22{,}5}{16} = 1{,}40625.
\]

\[
m_H = 0{,}9 \cdot \left(\frac{50}{75}\right)^2 = 0{,}9 \cdot \left(\frac{2}{3}\right)^2 = 0{,}9 \cdot \frac{4}{9} = \frac{3{,}6}{9} = 0{,}40.
\]

**Verificação:** $m_L > m_H$ ✓ (utilidade marginal alta no estado de baixo consumo).

**Passo 2 — Bond livre de risco (2 min):**

\[
P_0^{rf} = E^\pi[m] = 0{,}5 \cdot 1{,}40625 + 0{,}5 \cdot 0{,}40 = 0{,}703125 + 0{,}20 = 0{,}903125.
\]

\[
R_f = \frac{1}{P_0^{rf}} = \frac{1}{0{,}903125} \approx 1{,}1073.
\]

**Taxa real líquida:** $R_f - 1 \approx 10{,}73\%$. Razoável (economia com $E[c_1] = 57{,}5 > c_0 = 50$ ⇒ crescimento esperado de $15\%$, motiva taxa positiva forte).

**Passo 3 — Equity (3 min):**

Equity paga $d_s = c_s$. Preço:

\[
P_0^{eq} = E^\pi[m \cdot c_1] = 0{,}5 \cdot 1{,}40625 \cdot 40 + 0{,}5 \cdot 0{,}40 \cdot 75 = 0{,}5 \cdot 56{,}25 + 0{,}5 \cdot 30 = 28{,}125 + 15 = 43{,}125.
\]

Retorno bruto esperado:

\[
E[R^{eq}] = \frac{E[c_1]}{P_0^{eq}} = \frac{57{,}5}{43{,}125} \approx 1{,}3333.
\]

**Equity premium:**

\[
\boxed{\;E[R^{eq}] - R_f \approx 1{,}3333 - 1{,}1073 = 0{,}2260 \approx 22{,}6\%.\;}
\]

> *"Prêmio enorme — mas o exemplo trapaceia com $\sigma(c_1) \approx 17{,}5$ em $E[c_1] = 57{,}5$, ou $\sigma(\ln c_1) \approx 0{,}33$. Empiricamente, $\sigma(\Delta\ln c)$ americano é $\approx 0{,}02$ — vinte vezes menor."*

**Passo 4 — Comparação com Mehra-Prescott (3 min):**

Quadro:

| Parâmetro | Hoje (M3-2) | Mehra-Prescott americano |
|---|---|---|
| $\gamma$ | 2 | 2 (típico baixo) |
| $\sigma(\ln c_1) - \ln c_0$ | $\approx 0{,}33$ | $\approx 0{,}02$ |
| Equity premium gerado | $\approx 22{,}6\%$ | $< 1\%$ |
| Empírico | — | $\approx 6\%$ |

**Fórmula log-normal aproximada** (citar, não derivar):

\[
\text{equity premium} \approx \gamma \cdot \sigma^2(\Delta\ln c).
\]

Com $\gamma = 2$, $\sigma = 0{,}02$: prêmio $\approx 2 \cdot 0{,}0004 = 0{,}0008 = 0{,}08\%$. **Para gerar 6% empírico:** $\gamma \approx 0{,}06/0{,}0004 = 150$. **Aversão absurda — daí "puzzle".**

> "**Mehra-Prescott (1985) é exatamente esse cálculo, em economia calibrada. O puzzle não é que o modelo erra direção — é que o modelo erra **magnitude por ordem de grandeza**."

#### Gabarito 5-passos

**1. Ponto-chave.** Lucas (1978) precifica ativos via $P_0 = E[m \cdot D]$ com $m$ derivado da CPO do agente representativo. Equity premium emerge de $\text{Cov}(m, R^{eq}) < 0$: equity paga mais no estado bom (SDF baixo). Mehra-Prescott (1985): com calibração americana $\sigma(\Delta\ln c) \approx 2\%$ e $\gamma$ razoável, modelo prevê $<1\%$, empírico é $6\%$.

**2. Derivação.** SDF: $m_s = \beta (c_0/c_s)^\gamma$. Com $\gamma=2$, $\beta=0{,}9$, $c_0=50$, $c_L=40$, $c_H=75$: $m_L = 1{,}40625$, $m_H = 0{,}40$. $P_0^{rf} = E[m] = 0{,}903$, $R_f \approx 1{,}107$. $P_0^{eq} = E[m c_1] = 43{,}125$, $E[R^{eq}] \approx 1{,}333$. Premium $\approx 22{,}6\%$.

**3. Armadilha.** Esquecer $\beta$ (não-trivial em modelos de 1 período). Confundir $\gamma$ (CRRA) com elasticidade intertemporal de substituição $1/\gamma$. Dividir por $v'(c_s)$ em vez de multiplicar — confusão de SDF vs. retorno marginal. Achar que $R_f$ alto é bug — não, $E[c_1]/c_0 > 1$ motiva. Tentar derivar covariância sem perceber que $\text{Cov}(m, R^{eq}) = E[m R^{eq}] - E[m]E[R^{eq}] = 1 - E[m]E[R^{eq}]$.

**4. Extensão.** Saídas para o puzzle:
- **Habit (Campbell-Cochrane 1999):** hábito $X$ que se ajusta lentamente eleva $\sigma(m)$.
- **Risco de desastres (Barro 2006, Rietz 1988):** queda profunda de baixa probabilidade.
- **Epstein-Zin (1989):** desacopla $\gamma$ (aversão) de $1/\psi$ (elasticidade intertemporal).
- **Hansen-Jagannathan bound (1991):** diagnóstico — $\sigma(m)/E[m] \ge |E[R^e]|/\sigma(R^e)$. SDF tem que ter volatilidade relativa ≥ Sharpe ratio. Sharpe S&P 500 $\approx 0{,}38$; CRRA com $\gamma \le 10$ não satisfaz. **M4 trabalha esse bound.**

**5. Peer-review.** Calibre 🔴. Cálculo cuidadoso de SDF + bond + equity + interpretação Mehra-Prescott. **Distinto** do exemplo do Bloco B (que usa $c_0=100, c_1=\{80, 120\}$, $\beta=0{,}96$, prêmio $\approx 7{,}7\%$). Aqui $c_0=50, c_1=\{40, 75\}, \beta=0{,}9$, prêmio $\approx 22{,}6\%$. **Estrutura idêntica, números novos.** **Tradeoff de tempo:** 10 min, com risco de 12 se a turma travar no SDF. **Risco residual:** moderado-alto. **Variante AF Parte II:** improvável aparecer com cálculo completo (3 min de cada questão típica). Mais provável aparecer pedindo apenas SDF + interpretação qualitativa, ou apenas $R_f$ + relação com $E[\Delta\ln c]$.

---

### Exercício M3-3 (10 min) — SDF com crenças heterogêneas + dotação assimétrica 🟡

#### Enunciado

Economia $L=1$, $S=2$, $I=2$. Bernoullis idênticas $v_A = v_B = \ln c$. **Crenças heterogêneas:** $\pi^A = (0{,}3; 0{,}7)$, $\pi^B = (0{,}6; 0{,}4)$. Dotações **assimétricas:** $\omega^A = (30, 70)$, $\omega^B = (70, 30)$. Total $\bar\omega = (100, 100)$ — agregado livre de risco.

**Pede-se:**
1. Razão de preço $p^*_1/p^*_2$ em equilíbrio (use Cobb-Douglas log + viabilidade).
2. Alocações $x^{A*}, x^{B*}$.
3. Verificar viabilidade nos dois estados.
4. Discutir: por que **não** $p^*_1/p^*_2 = 1$ apesar de agregado livre de risco?

#### Resolução guiada

**Passo 1 — Demanda log/CD (1 min):**

Como no Bloco A: $x^i_s = \pi^i_s m^i(p)/p_s$ onde $m^i(p) = p_1 \omega^i_1 + p_2 \omega^i_2$.

**Passo 2 — Equação de viabilidade do estado 1 (3 min):**

\[
x^A_1 + x^B_1 = \frac{\pi^A_1 m^A + \pi^B_1 m^B}{p_1} = 100.
\]

Substituindo:

\[
0{,}3 (30 p_1 + 70 p_2) + 0{,}6 (70 p_1 + 30 p_2) = 100 p_1.
\]

\[
9 p_1 + 21 p_2 + 42 p_1 + 18 p_2 = 100 p_1
\;\;\Longleftrightarrow\;\;
51 p_1 + 39 p_2 = 100 p_1
\;\;\Longleftrightarrow\;\;
39 p_2 = 49 p_1.
\]

\[
\boxed{\;\frac{p^*_1}{p^*_2} = \frac{39}{49} \approx 0{,}796.\;}
\]

**Passo 3 — Alocações (3 min):**

Normalize $p_2 = 1$, $p_1 = 39/49 \approx 0{,}796$.

- $m^A = 30 \cdot 39/49 + 70 = 1170/49 + 3430/49 = 4600/49 \approx 93{,}88$.
- $m^B = 70 \cdot 39/49 + 30 = 2730/49 + 1470/49 = 4200/49 \approx 85{,}71$.
- $x^A_1 = 0{,}3 \cdot (4600/49)/(39/49) = 0{,}3 \cdot 4600/39 = 1380/39 \approx 35{,}38$.
- $x^A_2 = 0{,}7 \cdot (4600/49)/1 = 3220/49 \approx 65{,}71$.
- $x^B_1 = 0{,}6 \cdot (4200/49)/(39/49) = 0{,}6 \cdot 4200/39 = 2520/39 \approx 64{,}62$.
- $x^B_2 = 0{,}4 \cdot (4200/49)/1 = 1680/49 \approx 34{,}29$.

**Verificação de viabilidade:**
- Estado 1: $35{,}38 + 64{,}62 = 100$ ✓.
- Estado 2: $65{,}71 + 34{,}29 = 100$ ✓.

**Passo 4 — Por que $p^*_1/p^*_2 \neq 1$ (3 min):**

Quadro com discussão:

> *"Agregado é livre de risco, mas crenças são heterogêneas. **$A$ acha estado 2 mais provável** (\(\pi^A_2 = 0{,}7\)); **$B$ acha estado 1 mais provável** (\(\pi^B_1 = 0{,}6\)). O preço relativo $p_1/p_2$ é **média ponderada** das crenças sobre estado 1, com pesos pelas rendas. Aqui:"*

\[
\frac{p^*_1}{p^*_2} = \frac{\pi^A_1 m^A + \pi^B_1 m^B}{\pi^A_2 m^A + \pi^B_2 m^B} = \frac{0{,}3 \cdot 93{,}88 + 0{,}6 \cdot 85{,}71}{0{,}7 \cdot 93{,}88 + 0{,}4 \cdot 85{,}71} = \frac{28{,}16 + 51{,}43}{65{,}71 + 34{,}29} = \frac{79{,}59}{100} \approx 0{,}796. \checkmark
\]

> *"**$p^*_1/p^*_2 = 1$ exigiria** (i) crenças idênticas + agregado livre de risco, ou (ii) probabilidades $\pi$ idênticas + Bernoullis com mesma forma. Aqui falha (i) — crenças divergem. **Mesmo com agregado livre de risco**, mercado precifica diferentemente os dois estados porque agentes discordam sobre quão provável cada um é."*

**Cuidado pedagógico (apontar no quadro):** $A$ tem dotação concentrada no estado 2 ($\omega^A_2 = 70$) E acha estado 2 mais provável. **Dupla "vantagem"** — mas em equilíbrio, $A$ paga preço (relativamente baixo $p_1$ ⇒ $A$ vendendo bilhete-estado-1 a $B$ não recebe muito em troca). Conta sai em $x^A_2 = 65{,}71$, ligeiramente menor que sua dotação inicial $\omega^A_2 = 70$ — **$A$ vende um pouco do estado 2 em troca de mais consumo no estado 1**, reduzindo exposição ao "estado favorito" (porque $B$ está disposto a comprar bilhete-estado-2 por preço bom $p_2 = 1$).

#### Gabarito 5-passos

**1. Ponto-chave.** Sob crenças heterogêneas + dotações assimétricas + Bernoullis log, demanda é Cobb-Douglas com pesos $\pi^i_s$, mas renda $m^i(p)$ não-cancela. Razão de preços resolve sistema linear; **$p^*_1/p^*_2 = (\sum_i \pi^i_1 m^i)/(\sum_i \pi^i_2 m^i)$** é média ponderada das crenças com pesos pelas rendas. Agregado livre de risco **não** implica $p_1 = p_2$ se crenças divergem.

**2. Derivação.** Demanda log-CD: $x^i_s = \pi^i_s m^i/p_s$. Viabilidade do estado 1: $\pi^A_1 m^A + \pi^B_1 m^B = 100 p_1$. Expandindo: $0{,}3(30 p_1 + 70 p_2) + 0{,}6(70 p_1 + 30 p_2) = 100 p_1$. Algebra: $51 p_1 + 39 p_2 = 100 p_1$ ⇒ $p^*_1/p^*_2 = 39/49 \approx 0{,}796$. Alocações: $x^A \approx (35{,}38; 65{,}71)$, $x^B \approx (64{,}62; 34{,}29)$. Verificação: $35{,}38+64{,}62=100$ ✓, $65{,}71+34{,}29=100$ ✓.

**3. Armadilha.** Aluno típico marca "$p^*_1/p^*_2 = 1$ porque agregado é livre de risco" — falso, isso só vale com crenças idênticas. Outro erro: usar fórmula "renda cancela" do Avaliativo Ex 2 (que vale só com $\omega$ idêntica) — aqui $\omega^A \neq \omega^B$. Terceiro erro: confundir Bernoullis com crenças — Bernoullis são idênticas ($\ln$), crenças que diferem.

**4. Extensão.** Quando $\pi^A = \pi^B$ (crenças idênticas) + agregado livre de risco + Bernoullis idênticas, **ambos atingem alocação livre de risco individualmente** $x^i_1 = x^i_2$ (como no Avaliativo Ex 3). Quando crenças divergem, sobrevive trade interno mesmo sem risco agregado. **Implicação institucional:** mercados de aposta sobre eventos públicos (futebol, eleições) têm volume positivo precisamente porque crenças exógenas heterogêneas — não há violação do no-trade theorem porque crenças não vêm de info privada. **Mercados financeiros**, sob versão pura de Milgrom-Stokey 1982, deveriam ter volume puro-especulativo zero — empíricamente não é o caso, motivando literatura comportamental.

**5. Peer-review.** Calibre 🟡. **Distinto do Bloco A** (que usa $\omega^A=(60,40), \omega^B=(40,60)$, $\pi^A=(0{,}4; 0{,}6), \pi^B=(0{,}7; 0{,}3)$, $p^*_1/p^*_2 = 29/24 \approx 1{,}208$) — aqui parâmetros invertidos numericamente: $\omega^A=(30,70), \omega^B=(70,30), \pi^A=(0{,}3; 0{,}7), \pi^B=(0{,}6; 0{,}4)$, $p^*_1/p^*_2 = 39/49 \approx 0{,}796$. **Estrutura idêntica, números novos.** **Distinto do Avaliativo Ex 2** (que usa $\omega$ simétrica). **Tradeoff de tempo:** 10 min, alvo. **Risco residual:** baixo. **Variante AF:** mesma estrutura com $S=2$ ou $S=3$, parâmetros calibrados.

---

### Síntese do Bloco 3

Quadro:

| Exercício | Conceito-âncora | Calibre |
|---|---|---|
| M3-1 (Seguro completo $S=3$) | Neutralidade ⇒ preços atuariais; avesso totalmente segurado em todos os estados | 🟡 |
| M3-2 (Lucas CRRA $\gamma=2$) | SDF $m_s = \beta(c_0/c_s)^\gamma$; equity premium via $\text{Cov}(m, R^{eq})$; Mehra-Prescott puzzle | 🔴 |
| M3-3 (SDF crenças heterogêneas + $\omega$ assimétrica) | Renda endógena na fórmula de preço; agregado livre de risco $\not\Rightarrow$ $p_1 = p_2$ | 🟡 |

> "Esses três cobrem o **espectro da Aula 5**: simétrico canônico, asset pricing dinâmico, heterogeneidade de crenças. Quem fechou os três aqui, está calibrado para Parte II da AF."

---

## Bloco 4 — Encerramento + ponte M4 + dúvidas finais (10 min)

**11:50–12:00.**

### Roteiro

#### B4.1 (3 min) — O que vocês têm que levar pra casa hoje

Quadro com lista enxuta:

1. **Equação SDF $p^*_s/p^*_{s'} = (\pi^i_s v'(x^{i*}_s))/(\pi^i_{s'} v'(x^{i*}_{s'}))$** vale para **todo agente** em equilíbrio. Em mercado completo, todos veem o mesmo preço ⇒ SDF **único** módulo normalização.
2. **Agente neutro** ⇒ preços atuarialmente justos ($p^*_s/\pi_s$ constante) ⇒ avesso **totalmente segurado** em todos os estados.
3. **Heterogeneidade de crenças** com Bernoullis log gera demanda Cobb-Douglas $x^i_s = \pi^i_s m^i/p_s$. Renda **endógena em preços** quando dotações divergem.
4. **Lucas (1978):** $P_0 = E[m \cdot D]$. Equity premium = $-\text{Cov}(m, R^{eq})/E[m]$.
5. **Mehra-Prescott puzzle:** CRRA com $\sigma(\Delta\ln c)$ empírico baixo + $\gamma$ razoável $\Rightarrow$ prêmio $<1\%$. Empírico americano $\approx 6\%$. Gap motiva habit, desastres, Epstein-Zin.

#### B4.2 (3 min) — Conexão com a AF Parte II

> "Quarta 24/06, 19:00, 3h, A4 frente-e-verso permitida. Aulas 4, 5 e 6 valem **30%** combinados (Parte II). **Calibre da AF para Aula 5:** próximo dos exercícios avaliativos da Aula 5 (1 🟢 + 3 🟡 + 2 🔴). Nada do que cobri hoje (Lagrangiano com renda endógena, Lucas CRRA $\gamma=2$, Mehra-Prescott puzzle) é prova direta; é **extensão**. **Mas saber a extensão calibra você para a aplicação na AF.**"

> "Erros típicos AF Parte II que vou descontar (já listados nos avaliativos):
> 1. Esquecer que viabilidade é **estado-a-estado** na prova do 1º TBE estendido.
> 2. Confundir $\bar c^A$ com média aritmética da dotação (é média ponderada pelos preços).
> 3. Usar fórmula 'renda cancela' do Avaliativo Ex 2 quando dotações são assimétricas.
> 4. Em SDF, esquecer $\pi$ na precificação ($P_0 = E^\pi[m \cdot D]$, não $\sum m_s D_s$ direto).
> 5. Em Lucas, aplicar $m_s = \beta v'(c_s)$ sem dividir por $v'(c_0)$ (esquece normalização)."

#### B4.3 (4 min) — Dúvidas finais + ponte M4

- 3 min para qualquer dúvida final, especialmente das reflexões `refl-claro` da Pré-M3 que não couberam.
- **Ponte M4 (1 min):** *"Sábado 13/06 é a Monitoria 4 — Aulas 6 (Arrow-Debreu II — Hart-GP, Radner sequencial, mercados incompletos) e 7 (Externalidades + Bens Públicos — Pigou, Coase, Lindahl, VCG, SBCE Lei 15.042/2024). **Pré-M4 abre hoje meio-dia (sábado 30/05 12:00) e fecha sexta 12/06 22:00.** Cobre Hart-GP numérico, equity premium puzzle + Hansen-Jagannathan bound (extensão direta do que vimos hoje), Weitzman 1974 imposto vs. cota, VCG e seus limites. Vejo todos lá, e na quarta 03/06 com a Aula 7."*

---

## Apêndice A — Banco de perguntas-disparo

Use conforme o ritmo da turma. **3–4 são suficientes para 2h.**

1. "Em mercado completo, por que SDF é único?"
2. "Como a equação SDF se reduz a 'preços atuariais' quando há agente neutro?"
3. "$A$ totalmente segurado significa $x^A$ = média da dotação? Sim ou não, e por quê?"
4. "Heterogeneidade de crenças sobrevive em equilíbrio? Como?"
5. "No-trade theorem (Milgrom-Stokey 1982) — quando aplica e quando não?"
6. "Por que demanda em log é Cobb-Douglas?"
7. "Em Lucas, por que $m_L > m_H$ quando $c_L < c_H$?"
8. "Como a covariância $\text{Cov}(m, R^{eq})$ entra no equity premium?"
9. "Mehra-Prescott — qual é o gap quantitativo, em uma frase?"
10. "Qual é o erro #1 que vou descontar na AF Parte II?"
11. "Diferença entre 'agregado livre de risco' e 'individuamente livre de risco'?"
12. "Em mercado incompleto, o que muda? (resposta-curta, sem invadir M4)"

---

## Apêndice B — Banco de exercícios extras (caso sobre tempo no Bloco 3)

Se Bloco 3 fechar adiantado, abrir um destes — **com gabarito 5-passos completo** abaixo.

### M3-extra-1 — 🟡 EG intertemporal $T=2$ + bens contingentes em $t=1$

**Enunciado.** Economia $L=1$, $T=2$ períodos. Em $t=1$ há $S=2$ estados (chuva/sol). Espaço de bens: $\mathbb{R}^3$ (consumo em $t=0$ + 2 estados em $t=1$). $I=2$ agentes EU com $v(c) = \ln c$, $\beta = 0{,}9$, $\pi=(0{,}5; 0{,}5)$. Dotações: $\omega^A = (50, 30, 50)$ ($t=0$, $t=1$ chuva, $t=1$ sol); $\omega^B = (50, 50, 30)$. Mercado completo (3 preços contingentes).

(a) Calcule (i) os preços contingentes Arrow $p_{1c}, p_{1s}$ (com $p_0 = 1$) e (ii) a taxa de juros bruta $R_f$ do bond livre de risco que paga 1 em ambos os estados de $t=1$.
(b) Calcule alocações de equilíbrio.
(c) Discuta o trade entre agentes (intertemporal × inter-estado).

**Gabarito 5-passos.**

1. **Ponto-chave.** Mercado completo intertemporal+contingente entrega 3 preços ($p_0, p_{1c}, p_{1s}$). Equilíbrio resolve via demanda log-CD com pesos: agente EU ⇒ $x_0 = (1/(1+\beta)) m$ no presente, $x_{1s} = (\beta \pi_s/(1+\beta)) m / p_{1s}$ no futuro contingente. Agregado livre de risco em $t=1$ ($\bar\omega_{1c} = \bar\omega_{1s} = 80$) ⇒ $p_{1c}/p_{1s} = 1$ (crenças comuns + agregado livre de risco). **Cuidado:** preço Arrow ($q = p_{1c} = p_{1s}$) **não** é taxa de juros bruta; o bond livre de risco paga 1 em **cada** estado, então seu preço é $2q$ e $R_f = 1/(2q)$.

2. **Derivação.** UMP de $i$: $\max \ln c_0 + \beta E[\ln c_1] = \ln c_0 + \beta(0{,}5 \ln c_{1c} + 0{,}5 \ln c_{1s})$ s.a. $p_0 c_0 + p_{1c} c_{1c} + p_{1s} c_{1s} = m^i$. Pesos da log-CD: $1, 0{,}5\beta, 0{,}5\beta$. Soma: $1 + \beta = 1{,}9$. Demanda: $c_0 = (1/1{,}9) m^i/p_0$, $c_{1s} = (0{,}5\beta/1{,}9) m^i/p_{1s}$. Em $p_0 = 1$ (numerário) e $p_{1c}/p_{1s} = 1$ (simetria), normalize $p_{1c} = p_{1s} = q$. Viabilidade $t=0$: $\sum_i c^i_0 = 100 \Rightarrow (m^A + m^B)/(1{,}9) = 100$. Viabilidade $t=1$ chuva: $\sum_i c^i_{1c} = 80 \Rightarrow (0{,}5\beta(m^A+m^B))/(1{,}9 q) = 80$. Razão: $80/100 = (0{,}5\beta)/q \Rightarrow q = 0{,}5\beta/0{,}8 = 0{,}45/0{,}8 = 0{,}5625$. **Preço de cada bilhete-Arrow-estado:** $q = 0{,}5625$. **Taxa de juros bruta do bond livre de risco** (que paga 1 em ambos os estados de $t=1$): $R_f = 1/P_{bond} = 1/(p_{1c}+p_{1s}) = 1/(2q) = 1/1{,}125 \approx 0{,}889$, ou seja, **taxa real líquida $\approx -11\%$** — consistente com economia decrescente $E[c_1]/c_0 = 80/100 = 0{,}8 < 1$. (O número $1/q = 1{,}778$ **não** é taxa de juros — é o retorno bruto de uma reivindicação Arrow específica que paga 1 em **um** estado e 0 no outro; comparar bond vs Arrow exige somar os dois preços contingentes.) Renda: $m^A = 50 + 0{,}5625(30+50) = 50 + 45 = 95$; $m^B = 50 + 0{,}5625(50+30) = 50 + 45 = 95$ (iguais por simetria). $c^A_0 = 95/1{,}9 = 50$ (= $\omega^A_0$); $c^A_{1c} = (0{,}5 \cdot 0{,}9/1{,}9)(95/0{,}5625) = (0{,}45/1{,}9)(168{,}89) = 0{,}2368 \cdot 168{,}89 \approx 40$; $c^A_{1s} = 40$; análogo para $B$: $c^B = (50, 40, 40)$. **Cada agente fica individualmente livre de risco em $t=1$.**

3. **Armadilha.** Aluno típico esquece $\beta$ na demanda log-CD intertemporal. Confunde "preço $p_{1s}$" com "probabilidade $\pi_s$" (são distintos: $p_{1s} = \beta \pi_s / (1+\beta) \cdot \text{algo}$). Tenta usar fórmula spot do Avaliativo Ex 4 (que tem $T=2$, $S=1$) ignorando o estado contingente. **Confusão grave:** identificar $1/q$ com taxa de juros bruta — falso, o bond paga 1 em **cada** estado de $t=1$, então preço bond $= p_{1c}+p_{1s} = 2q$ e $R_f = 1/(2q)$. No exercício, $R_f \approx 0{,}889 < 1$ (taxa real negativa, esperado em economia decrescente $E[c_1] < c_0$).

4. **Extensão.** Em **mercado incompleto** (só bond + 1 ativo contingente), agentes podem trocar consumo intertemporal mas não conseguem se segurar contra todos os estados $\Rightarrow$ Aula 6 / M4 com Hart-GP.

5. **Peer-review.** Calibre 🟡-quase-🔴. Mistura intertemporal com contingente — exige álgebra cuidadosa. **Tempo:** 12 min se aluno está afiado; 18 se trava na pesagem CD. **Variante AF:** improvável aparecer com $T=2$ + $S=2$ (3 preços é exigente para AF de 3h). Mais provável aparecer com $S=2$ apenas (2 preços, foco em SDF), ou $T=2$ apenas (2 preços, foco em taxa de juros). **Risco residual:** moderado.

### M3-extra-2 — 🔴 Hansen-Jagannathan bound aplicado ao Brasil

> **Disciplina temporal.** O HJ bound foi citado em sketch (Bloco B) e apenas referenciado em M3-2 (gabarito 5-passos). **O cálculo numérico completo é território da M4** (13/06, "M4 trabalha esse bound" — vide Bloco B.2). Este exercício existe aqui como **material de auto-estudo opcional para alunos que terminaram tudo cedo** — **não usar em sala** mesmo se o Bloco 3 fechar adiantado. Se houver tempo extra, prefira M3-extra-3 (CARA mutual fund) ou M3-extra-4 (intertemporal heterogêneo) — esses são extensões diretas da Aula 5, não invasão da Aula 6.

**Enunciado.** Suponha SDF $m$ com $E[m] = 0{,}96$, $\sigma(m) = 0{,}25$. Mercado brasileiro: Ibovespa retorno real bruto histórico $E[R^{Ibov}] \approx 1{,}10$, $\sigma(R^{Ibov}) \approx 0{,}30$. Tesouro IPCA+ longo retorno real bruto $R_f \approx 1{,}05$. Excesso de retorno $R^e = R^{Ibov} - R_f$.

(a) Calcule o lado direito do bound HJ: $|E[R^e]|/\sigma(R^e)$.
(b) Calcule o lado esquerdo: $\sigma(m)/E[m]$.
(c) Verifique se o SDF satisfaz HJ.
(d) Discuta: o que acontece se for CRRA com $\gamma = 2$, $\beta = 0{,}96$, $\sigma(\Delta\ln c_{BR}) \approx 0{,}03$ (volatilidade do consumo per capita brasileiro 2010–2025)?

**Gabarito 5-passos.**

1. **Ponto-chave.** HJ bound $\sigma(m)/E[m] \ge |E[R^e]|/\sigma(R^e)$ é necessário (não suficiente) para SDF reproduzir dados. CRRA padrão com volatilidade brasileira de consumo + $\gamma$ razoável **não satisfaz** o bound — equity premium puzzle aplicado ao Brasil.

2. **Derivação.**
   (a) $E[R^e] = 1{,}10 - 1{,}05 = 0{,}05$. $\sigma(R^e) \approx \sigma(R^{Ibov}) \approx 0{,}30$ (assumindo baixa correlação $R_f$ com $R^e$). RHS = $0{,}05/0{,}30 \approx 0{,}167$.
   (b) LHS = $0{,}25/0{,}96 \approx 0{,}260$.
   (c) $0{,}260 > 0{,}167$ — **satisfaz** HJ. SDF dado é consistente com mercado brasileiro.
   (d) CRRA: $m = \beta(c_t/c_{t+1})^\gamma$, $\ln m = \ln\beta - \gamma \Delta\ln c$, $\sigma(\ln m) = \gamma\sigma(\Delta\ln c) = 2 \cdot 0{,}03 = 0{,}06$. $\sigma(m)/E[m] \approx \sigma(\ln m) = 0{,}06$ (lognormal, vol pequena). RHS exigido: $0{,}167$. **CRRA com $\gamma = 2$ falha por fator $\approx 2{,}8$.** Para satisfazer HJ no Brasil: $\gamma \approx 0{,}167/0{,}03 \approx 5{,}6$ — **menor que nos EUA** (onde precisa $\gamma \approx 19$), mas ainda alto.

3. **Armadilha.** Confundir $\sigma(m)$ com $\sigma(\ln m)$. Aplicar HJ a retorno absoluto em vez de excesso. Esquecer módulo no numerador. Usar $E[m] = 1$ (errado — é o preço do bond, $\le 1$ se taxa positiva).

4. **Extensão.** O bound HJ é **diagnóstico**: aponta que o SDF candidato é insuficiente, mas não constrói o SDF correto. Saídas teóricas mencionadas no Bloco B aplicam — Brasil tem $\sigma(\Delta\ln c)$ maior que EUA (3% vs. 2%), o que **reduz** o gap relativo — daí o "puzzle brasileiro" é menor, mas ainda existe.

5. **Peer-review.** Calibre 🔴. Aplicação numérica de bound + extensão à literatura. **Tempo:** 12 min. **Risco residual:** moderado-alto. **Variante AF:** improvável aparecer com cálculo completo; mais provável aparecer pedindo apenas o bound + interpretação qualitativa em peso 🟡.

### M3-extra-3 — 🟡 CARA mutual fund (Wilson 1968) numérico

**Enunciado.** Economia $L=1$, $S=2$, $I=3$ agentes idênticos com Bernoulli CARA $v(c) = -e^{-c}$ (mesmo $\gamma=1$). Probabilidades $\pi=(0{,}5; 0{,}5)$. Dotações: $\omega^1 = (90, 30)$, $\omega^2 = (60, 60)$, $\omega^3 = (30, 90)$. Total $\bar\omega = (180, 180)$ — agregado livre de risco.

(a) Calcule alocações de equilíbrio aplicando o resultado mutual fund (Wilson 1968).
(b) Identifique transferências lump-sum $k^i$.
(c) Calcule preços de equilíbrio.

**Gabarito 5-passos.**

1. **Ponto-chave.** Wilson (1968): em economia AD com agentes idênticos CARA, equilíbrio implementa **mutual fund**: cada agente carrega fração igual ($1/I$) do risco agregado, mais transferência lump-sum $k^i$ que reflete dotação inicial. Formalmente: $x^{i*}_s = \bar\omega_s/I + k^i$ com $\sum_i k^i = 0$.

2. **Derivação.** Fração igual do risco: $\bar\omega_s/I = 180/3 = 60$ em ambos os estados. Logo $x^{i*}_s = 60 + k^i$ (constante em $s$ porque agregado é livre de risco). Transferência $k^i$ por orçamento: $k^i = (\omega^i_1 + \omega^i_2)/2 - 60 = $ (média da dotação) $- 60$. Aqui:
   - $k^1 = (90+30)/2 - 60 = 60 - 60 = 0$.
   - $k^2 = (60+60)/2 - 60 = 0$.
   - $k^3 = (30+90)/2 - 60 = 0$.
   **Todos $k^i = 0$**: alocação $x^{i*} = (60, 60)$ para todos. **Cada um totalmente segurado.**
   
   Preços: como $\bar\omega$ livre de risco + agentes idênticos + $\pi$ uniforme ⇒ $p^*_1 = p^*_2$ (preços iguais). Normalize $p_1 = p_2 = 1$.

3. **Armadilha.** Aluno típico aplica resultado log/CD ($x^i_s = \pi_s m^i/p_s$) — falso para CARA. CARA tem **demanda aditiva no risco**, não multiplicativa. Outro erro: aplicar $k^i$ proporcional à dotação inicial — falso, $k^i$ é o **desvio** da média.

4. **Extensão.** **Em CRRA homotético:** alocação $x^{i*}_s = \alpha^i \bar\omega_s$ (proporcional ao agregado, não aditiva). Cada classe de Bernoulli tem geometria diferente. **Aplicação operacional:** modelos de teoria do contrato (Holmström 1979, Aula 8) usam CARA porque a álgebra fecha bonita.

5. **Peer-review.** Calibre 🟡. Aplicação direta do resultado mutual fund Wilson 1968. **Tempo:** 8 min. **Risco residual:** baixo se aluno entende que CARA tem geometria distinta de log/CRRA. **Variante AF:** improvável em cálculo completo; possível como pergunta conceitual ("qual é o resultado mutual fund de Wilson 1968?"). **Citação canônica:** *Wilson (1968), Econometrica 36(1): 119–132, [DOI 10.2307/1909607](https://doi.org/10.2307/1909607)*.

### M3-extra-4 — 🟡 Equilíbrio AD intertemporal $T=2$ sem incerteza com $\beta$ heterogêneos (variante Avaliativo Ex 4)

**Enunciado.** Economia $L=1$, $T=2$, sem incerteza. $I=2$ agentes EU com $u^i(c_1, c_2) = \ln c_1 + \beta^i \ln c_2$. Agente $A$ paciente: $\beta^A = 0{,}95$. Agente $B$ impaciente: $\beta^B = 0{,}40$. Dotações $\omega^A = (40, 60)$, $\omega^B = (60, 40)$ (espelhadas).

(a) Quem oferece poupança? Quem demanda?
(b) Calcule preço relativo $p^*_1$ (com $p_2 = 1$) e taxa de juros bruta $1+r = p^*_1$.
(c) Calcule alocações.

**Gabarito 5-passos.**

1. **Ponto-chave.** Bens datados são caso particular de bens contingentes ($|S|=1$ por período). Taxa de juros é endógena: agente paciente vende presente, impaciente vende futuro; $p^*_1$ é a "média ponderada" das taxas individuais $1/\beta^i$, no intervalo $(1/\beta^A, 1/\beta^B) = (1{,}053, 2{,}5)$. Heterogeneidade de **dotação** complica a fórmula vs. Avaliativo Ex 4 (que usa $\omega^A = \omega^B$).

2. **Derivação.** UMP: $c^i_1 = (1/(1+\beta^i)) m^i/p_1$, $c^i_2 = (\beta^i/(1+\beta^i)) m^i/p_2$. Renda $m^i = p_1 \omega^i_1 + p_2 \omega^i_2$. Viabilidade $t=1$: $c^A_1 + c^B_1 = 100 \Rightarrow [m^A/(1+\beta^A) + m^B/(1+\beta^B)]/p_1 = 100$. Substituir $m^A = 40 p_1 + 60$, $m^B = 60 p_1 + 40$ (com $p_2=1$):
$(40 p_1 + 60)/1{,}95 + (60 p_1 + 40)/1{,}40 = 100 p_1$.
Algebra: $20{,}51 p_1 + 30{,}77 + 42{,}86 p_1 + 28{,}57 = 100 p_1 \Rightarrow 63{,}37 p_1 + 59{,}34 = 100 p_1 \Rightarrow 36{,}63 p_1 = 59{,}34 \Rightarrow p^*_1 \approx 1{,}620$. **Taxa de juros bruta $\approx 1{,}620$, dentro de $(1{,}053; 2{,}5)$ ✓.**

Alocações: $m^A = 40(1{,}62) + 60 = 124{,}8$; $m^B = 60(1{,}62) + 40 = 137{,}2$. $c^A_1 = 124{,}8/(1{,}95 \cdot 1{,}62) \approx 39{,}51$; $c^A_2 = 0{,}95 \cdot 124{,}8/1{,}95 \approx 60{,}80$. $c^B_1 = 137{,}2/(1{,}40 \cdot 1{,}62) \approx 60{,}49$; $c^B_2 = 0{,}40 \cdot 137{,}2/1{,}40 \approx 39{,}20$. Verificação: $39{,}51 + 60{,}49 = 100$ ✓; $60{,}80 + 39{,}20 = 100$ ✓.

**Quem oferece/demanda?** $A$ (paciente) tem dotação concentrada em $t=2$ ($\omega^A_2=60>\omega^A_1=40$) E é paciente — "naturalmente" prefere consumir mais em $t=2$. Em equilíbrio, $A$ consome $c^A_1 \approx 39{,}51 < \omega^A_1 = 40$ — **vende um pouco do $t=1$ para o $t=2$ adicional**. $B$ (impaciente) faz o oposto: consome $c^B_1 \approx 60{,}49 > \omega^B_1 = 60$ — compra presente do $A$.

3. **Armadilha.** Confundir $p_1 = 1+r$ (relação direta no caso $T=2$, $p_2=1$) com $p_1 = r$ (sem o $1+$). Aplicar fórmula do Avaliativo Ex 4 ($\omega$ idêntica) sem perceber que dotações divergem aqui ⇒ rendas divergem. Esquecer pesos $\beta^i/(1+\beta^i)$ na demanda CD log intertemporal.

4. **Extensão.** Em **economia com incerteza intertemporal** (Aula 6 Radner sequencial), o preço $p_1$ é substituído por **conjunto de preços contingentes datados**. Lucas (1978) é Radner com agente representativo; o equilíbrio precifica simultaneamente todos os ativos. **Brasil real:** Tesouro Direto IPCA+ longo opera com taxa real ~5–7% ao ano (maio/2026 IPCA+ 2032 ~5,1%, Renda+ longo ~6,7–7,1%). **Modelo de troca pura aqui sobreestima** porque ignora produção, dívida, etc.

5. **Peer-review.** Calibre 🟡. Distinto do Avaliativo Ex 4 (que usa $\omega^A = \omega^B$ e cancela rendas). Aqui dotações espelhadas obrigam ao Lagrangiano completo — extensão genuína. **Tempo:** 10 min. **Variante AF:** plausível em peso 🟡. **Risco residual:** baixo se aluno tem CD log intertemporal na ponta da língua.

---

## Apêndice C — FAQ (perguntas que aluno costuma fazer)

1. **"Em mercado completo, por que SDF é único?"** — Porque com $|S|$ ativos linearmente independentes (uma base de $\mathbb{R}^S$), arbitragem força $m$ único módulo normalização. Em mercado incompleto, qualquer $m$ que precifique os ativos transacionados serve — múltiplos $m$ admissíveis.

2. **"$A$ totalmente segurado significa $x^A_s = $ média da dotação?"** — Não. Significa $x^A_s = \bar c^A$ constante em $s$, mas o **nível** $\bar c^A$ é dado por **orçamento ponderado pelos preços**: $\bar c^A = (\sum_s p^*_s \omega^A_s)/(\sum_s p^*_s)$. Em geral $\neq$ média aritmética.

3. **"Por que demanda em log é Cobb-Douglas?"** — A função utilidade EU $\sum_s \pi_s \ln c_s$ é uma soma de logs com pesos $\pi_s$ — formato $\prod c_s^{\pi_s}$ por log. Demanda CD com pesos $\pi_s$: $x_s = \pi_s m/p_s$.

4. **"Heterogeneidade de crenças sobrevive em equilíbrio?"** — Sim, sob crenças exógenas (gosto/heurística). Não, sob informação privada + common knowledge de racionalidade (Milgrom-Stokey 1982).

5. **"Lucas (1978) é mercado completo ou incompleto?"** — Mercado **completo** (existe ação Arrow para cada estado), mas com **agente representativo** ⇒ não há comércio entre agentes. SDF emerge da CPO do agente representativo.

6. **"Qual a diferença entre $\sigma(m)$ e $\sigma(\ln m)$ em CRRA?"** — Para volatilidade pequena (regime log-normal), são aproximadamente iguais. Em geral, $\sigma(\ln m) \approx \sigma(m)/E[m]$ para pequena variação. Em Mehra-Prescott calibration, ambos são pequenos.

7. **"Mercado incompleto sempre gera Pareto-ineficiência?"** — Genericamente sim (Hart 1975), mas há exceções degenerados (e.g., quando agentes são idênticos, qualquer span suficiente para suportar autarquia entrega autarquia ⇒ Pareto-eficiente trivialmente). Aula 6 e M4 trabalham.

8. **"Por que CRRA é o cavalo-de-batalha?"** — Homotetia: escala individual se preserva ⇒ resultados de macro de longo prazo (Lucas, Kydland-Prescott) e finanças quantitativas. CARA tem aditividade — útil para contratos (Holmström). Cada classe tem aplicação canônica.

9. **"Mehra-Prescott (1985) é refutado pela teoria moderna?"** — Não — é **diagnóstico aceito**. As "saídas" (habit, desastres, Epstein-Zin) **complementam** o aparelho, não o substituem. CRRA simples continua útil pedagogicamente, mas modelagem aplicada inclui as extensões.

10. **"Black-Scholes é mercado completo?"** — Sim por construção: modelo binomial 1-período tem $|S|=2$ estados e 2 ativos (ação + bond) ⇒ completo. Black-Scholes contínuo é o limite quando $\Delta t \to 0$ — replicação dinâmica mantém completude.

11. **"AF Parte II vai cobrar Lucas?"** — Plausível em peso 🟡 ou 🔴. Esperar: SDF + bond + equity + interpretação. Cálculos numéricos exigentes (5+ passos algébricos) são improváveis em peso integral.

12. **"AF Parte II vai cobrar heterogeneidade de crenças?"** — Plausível em peso 🟡. Cálculo de equilíbrio com 2 agentes + 2 estados + Bernoullis log + crenças assimétricas (com renda cancelando ou não) é canônico.

---

## Apêndice D — Notas para o Alberto (calibração com o Darcio)

Pontos onde o Darcio gostaria que o Alberto **reforce** ou **mitigue** algum aspecto específico, com base na auditoria da Aula 5 (`revisao-pass5-referee2.md`) e da Pré-M3 (`auditoria-pre-monitoria-3.md`):

1. **Aula 5 / Bloco 4 (seguro completo) foi aterrissagem importante.** A turma deve estar com a equação SDF + caso $A$ avesso + $B$ neutro na ponta da língua. **Alberto: confirme isso no check-in (Bloco 0) — se 30%+ não consegue articular "preços atuariais" em uma frase, refaça em 3 min antes de iniciar Bloco A.**

2. **Avaliativo Ex 6 da Aula 5 (mercados incompletos teaser):** preview informal de Aula 6. **Alberto: NÃO entrar em Radner formal, NÃO derivar Hart-GP.** Se aluno perguntar, redireciona: *"Aula 6 cobriu, Pré-M4 abre hoje à tarde, M4 em 13/06 trabalha."*

3. **Convenção SDF (Cochrane: $\pi$ fora de $m$):** explicitamente declarada na Pré-M3 com aviso anti-mistura. **Alberto: use consistentemente $p_s = \pi_s m_s$ no quadro.** Não inverta para $m_s = \pi_s \cdot (\text{algo})$ no meio do cálculo — confunde.

4. **Aritmética crítica do Bloco A** (cálculo de $p^*_1/p^*_2 = 29/24$ no caso $\omega^A=(60,40), \omega^B=(40,60), \pi^A=(0{,}4;0{,}6), \pi^B=(0{,}7;0{,}3)$): **dupla-conferência**. A equação de viabilidade é $52 p_1 + 58 p_2 = 100 p_1 \Rightarrow 58 p_2 = 48 p_1 \Rightarrow p_1/p_2 = 58/48 = 29/24$. Não é $48/58$ (inverter dá razão menor que 1 — sinaliza erro). **Verificação cruzada** via viabilidade do estado 2: $48 p_1 + 42 p_2 = 100 p_2 \Rightarrow 48 p_1 = 58 p_2$ ⇒ idem ✓.

5. **Aritmética crítica do Bloco B** (Lucas CRRA $\gamma=2$ com $c_0=100, c_L=80, c_H=120, \beta=0{,}96$): $m_L = 0{,}96 (100/80)^2 = 0{,}96 \cdot 25/16 = 1{,}5$; $m_H = 0{,}96 (100/120)^2 = 0{,}96 \cdot 25/36 = 2/3 \approx 0{,}6667$. $E[m] = 0{,}5(1{,}5) + 0{,}5(0{,}6667) = 1{,}0833$. $R_f \approx 0{,}9231 < 1$ — **anomalia esperada** (sem crescimento médio). $P_0^{eq} = 0{,}5 \cdot 1{,}5 \cdot 80 + 0{,}5 \cdot 0{,}6667 \cdot 120 = 60 + 40 = 100$. $E[R^{eq}] = 100/100 = 1{,}0$. Premium $= 1{,}0 - 0{,}9231 \approx 7{,}7\%$. **Não pular casa.**

6. **Aritmética crítica do Exercício M3-2** (Lucas com $c_0=50, c_L=40, c_H=75, \beta=0{,}9$): $m_L = 0{,}9 (50/40)^2 = 0{,}9 \cdot 25/16 = 1{,}40625$; $m_H = 0{,}9 (50/75)^2 = 0{,}9 \cdot 4/9 = 0{,}40$. $E[m] = 0{,}903125$. $R_f \approx 1{,}107$. $P_0^{eq} = 0{,}5 \cdot 1{,}40625 \cdot 40 + 0{,}5 \cdot 0{,}40 \cdot 75 = 28{,}125 + 15 = 43{,}125$. $E[R^{eq}] = 57{,}5/43{,}125 \approx 1{,}333$. Premium $\approx 22{,}6\%$. **Premium alto sinaliza que economia "trapaceou" com $\sigma$ alta — use isso para cravar Mehra-Prescott qualitativamente.**

7. **Aritmética crítica do Exercício M3-3** (heterogeneidade + dotação assimétrica): $51 p_1 + 39 p_2 = 100 p_1 \Rightarrow 39 p_2 = 49 p_1 \Rightarrow p_1/p_2 = 39/49 \approx 0{,}796$. Verifique cruzado: viabilidade estado 2: $0{,}7(30 p_1 + 70 p_2) + 0{,}4(70 p_1 + 30 p_2) = 100 p_2 \Rightarrow 21 p_1 + 49 p_2 + 28 p_1 + 12 p_2 = 100 p_2 \Rightarrow 49 p_1 + 61 p_2 = 100 p_2 \Rightarrow 49 p_1 = 39 p_2$ ⇒ idem ✓.

8. **Item da auditoria das pré-monitorias (commit `4aaea6c` — "auditoria pré-monitorias — refazer Pré-M1 + fixes M2/M3/M4"):** Pré-M3 passou por revisão recente, status 10/10. **Alberto: confirme com o Darcio na sexta 29/05 se há ajuste de calibre que tenha sido feito após a publicação.** Algumas correções de notação ou parâmetro podem ter entrado.

9. **Casos brasileiros que valem citar (sem inventar números):**
   - **Tesouro Direto IPCA+** — citado no Bloco B (taxa real 5–7%). Confirme taxa do dia (sex 29/05) antes de levar ao quadro.
   - **Ibovespa** — citado no exercício extra HJ (volatilidade ~30%, retorno bruto ~10% real). Não é dado oficial; ordem de grandeza para a discussão.
   - **Proagro** — Aula 5 Bloco 4 já citou. **Alberto: pode mencionar de passagem.**

10. **O que NÃO entrar na monitoria:**
    - Mecanismos AGV/d'Aspremont-Gérard-Varet (extensão de VCG).
    - Hart-GP numérico formal (Aula 6 / Pré-M4).
    - Radner sequencial completo (Aula 6 / Pré-M4).
    - VNM como teoria (Aulas 8 / J-R §8 / MWG §6).
    - Black-Scholes contínuo (sketch binomial é o teto).
    - Crawford-Sobel cheap talk (Aula 9).
    - Habit / Epstein-Zin / Barro desastres em forma técnica (citação 30s máximo).

    Para qualquer um desses, dizer: "Fora do escopo. Cochrane *Asset Pricing* 2005 Cap. X ou MWG capítulo Y detalha." e seguir.

11. **Calibre dos exercícios M3-extra (Apêndice B):** 4 exercícios com gabarito completo. Use **somente** se Bloco 3 fechar adiantado. Senão, ficam como **material de estudo opcional** que o aluno pode consumir após a monitoria — **avise** isso no encerramento se sobrou tempo curto.

12. **Despedida sóbria:** monitoria 3 não fecha o curso (M4 e M5 vêm). **Não force ar de finalização.** Próxima semana é Aula 7 (quarta 03/06); M4 é 13/06.

---

## Apêndice E — Referências citadas (DOIs verificados)

| Citação | Veículo | DOI |
|---|---|---|
| Lucas (1978) | Econometrica 46(6): 1429–1445, "Asset Prices in an Exchange Economy" | [10.2307/1913837](https://doi.org/10.2307/1913837) |
| Mehra & Prescott (1985) | J. Monetary Economics 15(2): 145–161, "The Equity Premium: A Puzzle" | [10.1016/0304-3932(85)90061-3](https://doi.org/10.1016/0304-3932(85)90061-3) |
| Hansen & Jagannathan (1991) | J. Political Economy 99(2): 225–262, "Implications of Security Market Data..." | [10.1086/261749](https://doi.org/10.1086/261749) |
| Black & Scholes (1973) | J. Political Economy 81(3): 637–654, "The Pricing of Options..." | [10.1086/260062](https://doi.org/10.1086/260062) |
| Milgrom & Stokey (1982) | J. Economic Theory 26(1): 17–27, "Information, Trade and Common Knowledge" | [10.1016/0022-0531(82)90046-1](https://doi.org/10.1016/0022-0531(82)90046-1) |
| Wilson (1968) | Econometrica 36(1): 119–132, "The Theory of Syndicates" | [10.2307/1909607](https://doi.org/10.2307/1909607) |
| Hart (1975) | J. Economic Theory 11(3): 418–443, "On the Optimality of Equilibrium when the Market Structure is Incomplete" | [10.1016/0022-0531(75)90028-9](https://doi.org/10.1016/0022-0531(75)90028-9) |
| Holmström (1979) | Bell J. Economics 10(1): 74–91, "Moral Hazard and Observability" | [10.2307/3003320](https://doi.org/10.2307/3003320) |

> **Disciplina Referee 2.** DOIs canônicos validados em 2026-05-07 (vide `aula_5/auditoria-pre-monitoria-3.md`). Em sala, mencione apenas autor+ano+veículo (manter denso); DOI explícito só se aluno pedir.

---

> **Encerramento operacional para o Alberto:** este roteiro tem ~6 horas de material em 2 horas de monitoria. **Não tente cobrir tudo.** A ordem de prioridade é:
> 1. Bloco A (heterogeneidade de crenças + Lagrangiano explícito) — sempre.
> 2. Bloco B até B.2 (Lucas CRRA + Mehra-Prescott qualitativo) — sempre.
> 3. Exercício M3-1 (Seguro completo $S=3$) — sempre.
> 4. Exercício M3-2 (Lucas) — se sobra tempo.
> 5. Exercício M3-3 (Heterogeneidade + $\omega$ assimétrica) — se sobra tempo.
> 6. Bloco B.3 (Black-Scholes sketch) e Bloco 4 (encerramento) — sempre, mas comprima.
>
> **Verifique reflexões `refl-claro` e `refl-alberto` na Pré-M3 na sexta 29/05** e ajuste a ordem se necessário.
