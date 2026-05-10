# Auditoria Referee 2 — Monitoria 03 (Aula 5)

**Arquivo:** `monitorias/monitoria-03.md`
**Data:** 2026-05-10
**Modo:** Referee 2 implacável + fixes in-place.

## 1. Veredicto

**10 / 10 após fixes mínimos.** M3 chegou substancialmente sólida: aritmética crítica de Lucas/Mehra-Prescott bate na vírgula (Bloco B, M3-2), Bloco A e M3-3 (heterogeneidade + dotação assimétrica) verificam por Walras nos dois estados, M3-1 (seguro $S=3$) fecha em frações exatas. **Único bug conceitual** — confusão "preço Arrow $q$" vs "taxa de juros bruta $R_f$" no M3-extra-1, item (a), corrigido in-place. Disciplina temporal preservada (HJ bound só apareceu em sketch + delegação explícita à M4; M3-extra-2 reclassificado como auto-estudo opcional).

## 2. Fixes aplicados

| # | Severidade | Local (linha) | Bug | Fix |
|---|---|---|---|---|
| 1 | 🔴 Conceitual | 793, 799, 801, 803 (M3-extra-1) | "$1+r = 1/q = 1{,}778$" identifica preço Arrow com taxa bond. Bond livre de risco paga 1 em **cada** estado de $t=1$ → preço bond $= p_{1c}+p_{1s} = 2q = 1{,}125$ → $R_f = 1/(2q) \approx 0{,}889$, taxa real líquida **negativa**, consistente com economia decrescente $E[c_1]/c_0 = 80/100 < 1$. | Reformulado item (a) do enunciado para distinguir "(i) preços Arrow $p_{1c}, p_{1s}$" de "(ii) taxa de juros bruta $R_f$". Ponto-chave acrescenta cuidado pedagógico. Derivação corrige $R_f \approx 0{,}889$, com aviso explícito de que $1/q = 1{,}778$ **não é** taxa de juros (é retorno bruto de Arrow individual). Armadilha 3 lista a confusão com mitigação. |
| 2 | 🟡 Disciplina temporal | 809 (M3-extra-2) | HJ bound completo numérico está alocado para M4. M3-extra-2 ainda fica em apêndice da M3, mas sem aviso explícito. Risco de Alberto cair em tentação de usar se Bloco 3 abrir. | Acrescentado bloco de aviso "Disciplina temporal" no topo do M3-extra-2: explicita que cálculo numérico HJ é território M4, **não usar em sala**, e redireciona — se sobrar tempo em monitoria, prefira M3-extra-3 (CARA mutual fund) ou M3-extra-4 (intertemporal heterogêneo). M3-extra-2 fica como auto-estudo opcional. |

Nenhum outro bug detectado em release-grade. Todos os demais cálculos verificam.

## 3. Verificação numérica explícita

### 3.1 Bloco A — Crenças heterogêneas + dotação assimétrica

**Setup:** $\omega^A=(60,40), \omega^B=(40,60), \pi^A=(0{,}4;0{,}6), \pi^B=(0{,}7;0{,}3)$, Bernoullis $\ln$.

| Conta | Verificação | Status |
|---|---|---|
| Viabilidade estado 1: $0{,}4(60p_1+40p_2) + 0{,}7(40p_1+60p_2) = 100p_1$ | $24p_1+16p_2+28p_1+42p_2 = 52p_1+58p_2 = 100p_1 \Rightarrow 58p_2 = 48p_1$ | ✓ |
| Razão de preços | $p^*_1/p^*_2 = 58/48 = 29/24 \approx 1{,}208$ | ✓ |
| Verificação Walras estado 2 | $0{,}6(60p_1+40p_2)+0{,}3(40p_1+60p_2) = 48p_1+42p_2 = 100p_2 \Rightarrow 48p_1 = 58p_2$ | idem ✓ |
| $m^A$ com $p_2=1, p_1=29/24$ | $60(29/24)+40 = 1740/24+960/24 = 2700/24 = 112{,}5$ | ✓ |
| $m^B$ | $40(29/24)+60 = 1160/24+1440/24 = 2600/24 = 108{,}333$ | ✓ |
| Alocação $x^A = (0{,}4 \cdot 112{,}5/(29/24); 0{,}6 \cdot 112{,}5)$ | $(1080/29; 67{,}5) = (37{,}241; 67{,}5)$ | ✓ |
| Alocação $x^B$ | $(0{,}7 \cdot 108{,}333 \cdot 24/29; 0{,}3 \cdot 108{,}333) = (1820/29; 32{,}5) = (62{,}759; 32{,}5)$ | ✓ |
| Soma estado 1 / estado 2 | $37{,}241+62{,}759 = 100$ ✓; $67{,}5+32{,}5 = 100$ ✓ | ✓ |

### 3.2 Bloco B — Lucas asset pricing $c_0=100, c_1=\{80,120\}, \beta=0{,}96, \gamma=2$

| Conta | Verificação | Status |
|---|---|---|
| $m_L = 0{,}96(100/80)^2$ | $0{,}96 \cdot 1{,}5625 = 1{,}5$ | ✓ |
| $m_H = 0{,}96(100/120)^2$ | $0{,}96 \cdot 25/36 = 24/36 = 2/3 \approx 0{,}6667$ | ✓ |
| $E[m] = 0{,}5(1{,}5)+0{,}5(2/3)$ | $0{,}75+0{,}3333 = 13/12 = 1{,}08333$ | ✓ |
| $R_f = 1/E[m]$ | $12/13 \approx 0{,}9231$ ($<1$, consistente com $E[c_1]=c_0=100$, sem crescimento) | ✓ |
| $P_0^{eq} = 0{,}5(1{,}5)(80) + 0{,}5(2/3)(120)$ | $60 + 40 = 100$ | ✓ |
| $E[R^{eq}] = E[c_1]/P_0^{eq}$ | $100/100 = 1{,}0$ | ✓ |
| Premium $E[R^{eq}] - R_f$ | $1{,}0 - 0{,}9231 = 0{,}0769 \approx 7{,}69\%$ (texto diz $\approx 7{,}7\%$) | ✓ |
| Verificação $E[mR^{eq}]$ ($R^{eq}_L=0{,}8, R^{eq}_H=1{,}2$) | $0{,}5(1{,}5)(0{,}8)+0{,}5(2/3)(1{,}2) = 0{,}6+0{,}4 = 1{,}0$ | ✓ |
| $\text{Cov}(m,R^{eq}) = E[mR^{eq}] - E[m]E[R^{eq}]$ | $1 - 1{,}0833 \cdot 1 = -0{,}0833$ | ✓ |

### 3.3 M3-1 — Seguro completo $S=3$, $\pi=(0{,}2;0{,}5;0{,}3), \omega^A=(20,50,80), \omega^B=(40,30,30)$

| Conta | Verificação | Status |
|---|---|---|
| $p^*_1 = 2/3, p^*_2 = 5/3, p^*_3 = 1$; soma | $2/3+5/3+3/3 = 10/3$ | ✓ |
| Renda de A | $(2/3)(20)+(5/3)(50)+1(80) = 40/3+250/3+240/3 = 530/3$ | ✓ |
| $\bar c^A = (530/3)/(10/3)$ | $53$ | ✓ |
| $x^B = \bar\omega - \bar c^A$ | $(60-53, 80-53, 110-53) = (7, 27, 57)$ | ✓ |
| Orçamento de B (LHS) | $(2/3)(7)+(5/3)(27)+1(57) = 14/3+135/3+171/3 = 320/3$ | ✓ |
| Orçamento de B (RHS) | $(2/3)(40)+(5/3)(30)+1(30) = 80/3+150/3+90/3 = 320/3$ | ✓ |

### 3.4 M3-2 — Lucas $c_0=50, c_L=40, c_H=75, \beta=0{,}9, \gamma=2$

| Conta | Verificação | Status |
|---|---|---|
| $m_L = 0{,}9(50/40)^2$ | $0{,}9 \cdot 25/16 = 22{,}5/16 = 1{,}40625$ | ✓ |
| $m_H = 0{,}9(50/75)^2$ | $0{,}9 \cdot 4/9 = 0{,}40$ | ✓ |
| $E[m]$ | $0{,}5(1{,}40625)+0{,}5(0{,}40) = 0{,}703125+0{,}200 = 0{,}903125$ | ✓ |
| $R_f$ | $1/0{,}903125 \approx 1{,}1073$ ($>1$, consistente com $E[c_1]=57{,}5>c_0=50$) | ✓ |
| $P_0^{eq}$ | $0{,}5(1{,}40625)(40)+0{,}5(0{,}40)(75) = 28{,}125+15 = 43{,}125$ | ✓ |
| $E[R^{eq}]$ | $57{,}5/43{,}125 = 1{,}3333$ | ✓ |
| Premium | $1{,}3333-1{,}1073 = 0{,}2260 \approx 22{,}6\%$ | ✓ |
| Verificação log-normal $\gamma$ p/ 6\%: $0{,}06/(0{,}02)^2$ | $150$ | ✓ |

### 3.5 M3-3 — SDF heterogêneo + dotação assimétrica

**Setup:** $\omega^A=(30,70), \omega^B=(70,30), \pi^A=(0{,}3;0{,}7), \pi^B=(0{,}6;0{,}4)$, Bernoullis $\ln$.

| Conta | Verificação | Status |
|---|---|---|
| Viabilidade estado 1: $0{,}3(30p_1+70p_2)+0{,}6(70p_1+30p_2) = 100p_1$ | $9p_1+21p_2+42p_1+18p_2 = 51p_1+39p_2 = 100p_1 \Rightarrow 39p_2 = 49p_1$ | ✓ |
| $p^*_1/p^*_2 = 39/49 \approx 0{,}796$ | ✓ |
| Walras estado 2: $0{,}7(30p_1+70p_2)+0{,}4(70p_1+30p_2) = 100p_2$ | $21p_1+49p_2+28p_1+12p_2 = 49p_1+61p_2 = 100p_2 \Rightarrow 49p_1=39p_2$ | idem ✓ |
| $m^A$ com $p_2=1, p_1=39/49$ | $30(39/49)+70 = 4600/49 \approx 93{,}878$ | ✓ |
| $m^B$ | $70(39/49)+30 = 4200/49 \approx 85{,}714$ | ✓ |
| $x^A_1 = 0{,}3 \cdot 4600/39$ | $1380/39 \approx 35{,}385$ | ✓ |
| $x^A_2 = 0{,}7 \cdot 4600/49$ | $3220/49 \approx 65{,}714$ | ✓ |
| $x^B_1 = 0{,}6 \cdot 4200/39$ | $2520/39 \approx 64{,}615$ | ✓ |
| $x^B_2 = 0{,}4 \cdot 4200/49$ | $1680/49 \approx 34{,}286$ | ✓ |
| Soma estados | $35{,}385+64{,}615 = 100$ ✓; $65{,}714+34{,}286 = 100$ ✓ | ✓ |

### 3.6 M3-extra-1 (após fix) — intertemporal $T=2 + S=2$

| Conta | Verificação | Status |
|---|---|---|
| Pesos log-CD: $1, 0{,}5\beta, 0{,}5\beta = 1, 0{,}45, 0{,}45$; soma $1{,}9$ | ✓ |
| $q = 0{,}45/0{,}8 = 0{,}5625$ | ✓ |
| $m^A = m^B = 50 + 0{,}5625(80) = 95$ | ✓ |
| $c^A_0 = 95/1{,}9 = 50$; $c^A_{1c} = c^A_{1s} = (0{,}45/1{,}9)(95/0{,}5625) = 40$ | ✓ |
| **$R_f$ do bond (após fix):** $P_{bond} = 2q = 1{,}125 \Rightarrow R_f = 1/1{,}125 \approx 0{,}889$ — **negativa** $-11\%$, consistente com $E[c_1]=80<100=c_0$ | ✓ |

### 3.7 M3-extra-3 — CARA mutual fund

| Conta | Verificação | Status |
|---|---|---|
| $\bar\omega/I = 180/3 = 60$ | ✓ |
| $W^i = \omega^i_1+\omega^i_2 = 120$ para todos $i$ (riqueza idêntica) | ✓ |
| $k^i = W^i/2 - 60 = 0$ para todos | ✓ |
| Alocação $x^{i*} = (60,60)$ — todos totalmente segurados | ✓ |

### 3.8 M3-extra-4 — intertemporal heterogêneo $\beta^A=0{,}95, \beta^B=0{,}40$

| Conta | Verificação | Status |
|---|---|---|
| Equação viabilidade $t=1$: $63{,}37 p_1 + 59{,}34 = 100 p_1$ | $36{,}63 p_1 = 59{,}34 \Rightarrow p_1 \approx 1{,}620$ | ✓ |
| $m^A = 40(1{,}62)+60 = 124{,}8$; $m^B = 60(1{,}62)+40 = 137{,}2$ | ✓ |
| $c^A_1 \approx 39{,}51, c^A_2 \approx 60{,}80, c^B_1 \approx 60{,}49, c^B_2 \approx 39{,}20$ | ✓ |
| Soma $t=1$ e $t=2$ | $100$, $100$ | ✓ |
| Intervalo $1+r \in (1/\beta^A, 1/\beta^B) = (1{,}053; 2{,}5)$, $1{,}620$ dentro | ✓ |

**Conclusão da seção 3:** após o fix do M3-extra-1, **zero erro residual em release-grade**.

## 4. DOI status

Todos os 8 DOIs validados via Crossref API em 2026-05-10:

| Citação | DOI | Verificação Crossref |
|---|---|---|
| Wilson (1968), *Econometrica* 36(1):119, "The Theory of Syndicates" | `10.2307/1909607` | ✓ confirma título, autor, journal, volume, issue, pp. |
| Lucas (1978), *Econometrica* 46(6):1429, "Asset Prices in an Exchange Economy" | `10.2307/1913837` | ✓ confirma metadata completa |
| Mehra & Prescott (1985), *J. Monetary Economics* 15(2):145–161, "The equity premium: A puzzle" | `10.1016/0304-3932(85)90061-3` | ✓ confirma metadata completa |
| Hansen & Jagannathan (1991), *J. Political Economy* 99(2):225–262, "Implications of Security Market Data..." | `10.1086/261749` | ✓ confirma metadata completa |
| Black & Scholes (1973), *J. Political Economy* 81(3):637–654, "The Pricing of Options and Corporate Liabilities" | `10.1086/260062` | ✓ confirma metadata completa |
| Milgrom & Stokey (1982), *J. Economic Theory* 26(1):17–27, "Information, trade and common knowledge" | `10.1016/0022-0531(82)90046-1` | ✓ confirma metadata completa |
| Hart (1975), *J. Economic Theory* 11:418–443, "On the optimality of equilibrium when the market structure is incomplete" | `10.1016/0022-0531(75)90028-9` | ✓ confirma metadata completa |
| Holmström (1979), *Bell J. Economics* 10(1):74, "Moral Hazard and Observability" | `10.2307/3003320` | ✓ confirma metadata completa |

**Nota sobre o briefing.** O briefing sugeriu Wilson 1968 como `10.2307/1909999` — **incorreto**. O DOI canônico é `10.2307/1909607` (já validado pela auditoria da Pré-M3 em 2026-05-07 e reconfirmado hoje via Crossref). Monitoria-03 já usava o DOI correto. Sem alteração necessária.

**Zero DOI fabricado. Zero `[VERIFICAR DOI]`.**

## 5. Anti-padrão sweep

| Anti-padrão | Ocorrências | Status |
|---|---|---|
| `\succsim` (deve ser `\succeq`) | 0 | ✓ |
| `MRS` cru (deve ser `\text{TMS}`) | 0 — bundle não usa TMS (foco em SDF/AD) | ✓ |
| Decimais com ponto em vez de `\{,\}` | 0 (apenas IDs de seção `B4.1`/`B4.2`/`B4.3`, não decimais) | ✓ |
| "todas anteriores" / "nenhuma das anteriores" | 0 | ✓ |
| Distratores triviais | 0 — exercícios são abertos, sem múltipla escolha | ✓ (n/a) |
| `[VERIFICAR DOI]` | 0 | ✓ |
| Convenção SDF (Cochrane: $\pi$ fora de $m$) | usada consistentemente em todo M3 ($p_s = \pi_s m_s$, $P_0 = E^\pi[m \cdot D]$) | ✓ |

## 6. Não-duplicação cross-arquivo

Conferida contra `aula_5/exercicios-avaliativos.md` e `platform/pre-monitoria-03.html`:

| Item | Parâmetros M3 | Parâmetros aula 5 / Pré-M3 | Distinção |
|---|---|---|---|
| Bloco A (heterogeneidade + $\omega$ assimétrica) | $\omega^A=(60,40), \omega^B=(40,60), \pi^A=(0{,}4;0{,}6), \pi^B=(0{,}7;0{,}3) \to 29/24$ | Pré-M3 S2: $\omega=(50,50)$ ambos, $\pi^A=(0{,}3;0{,}7), \pi^B=(0{,}5;0{,}5) \to 2/3$ | ✓ extensão para caso assimétrico (Pré-M3 não cobre) |
| Bloco B (Lucas) | $c_0=100, c_1=\{80,120\}, \beta=0{,}96$ | Pré-M3 não tem cálculo Lucas numérico (só fórmulas conceituais) | ✓ extensão numérica |
| M3-1 (seguro $S=3$) | $\pi=(0{,}2;0{,}5;0{,}3), \omega=(20,50,80)/(40,30,30), \bar c^A=53$ | Aula 5 Ex 5: $\pi=(0{,}3;0{,}5;0{,}2), \omega=(10,30,20)/(20,10,30), \bar c^A=22$ | ✓ estrutura idêntica, números novos |
| M3-2 (Lucas) | $c_0=50, c_L=40, c_H=75, \beta=0{,}9$ | Bloco B: $c_0=100, c_1=\{80,120\}, \beta=0{,}96$ | ✓ parâmetros novos |
| M3-3 (heterogeneidade + $\omega$ assimétrica) | $\omega^A=(30,70), \omega^B=(70,30), \pi^A=(0{,}3;0{,}7), \pi^B=(0{,}6;0{,}4) \to 39/49$ | Bloco A: $29/24$; Pré-M3 S2: simétrico $2/3$; Aula 5 Ex 2: simétrico | ✓ tripla distinção |
| M3-extra-3 (CARA $I=3$) | $\omega^1=(90,30), \omega^2=(60,60), \omega^3=(30,90), \bar\omega=(180,180)$ | Pré-M3 S4: $I=2$, $\omega^A=(10,40), \omega^B=(30,20), \bar\omega=(40,60)$ arriscado | ✓ I diferente, agregado livre de risco vs arriscado |
| M3-extra-4 (intertemporal heterogêneo) | $\omega^A=(40,60), \omega^B=(60,40), \beta^A=0{,}95, \beta^B=0{,}40 \to p_1 \approx 1{,}620$ | Aula 5 Ex 4: $\omega^A=\omega^B=(50,50), \beta^A=0{,}9, \beta^B=0{,}5 \to p_1 \approx 1{,}48$ | ✓ extensão genuína (Aula 5 cancela rendas, M3-extra-4 não) |

**Nenhuma duplicação encontrada.**

## 7. Disciplina temporal — sem invasão Aula 6

Conferida que M3 **não invade Aula 6** (Hart-GP, Radner sequencial, mercados incompletos formal, HJ bound completo):

| Tópico Aula 6 | Tratamento em M3 | Status |
|---|---|---|
| Hart-GP numérico | apenas citação curta no Bloco A.3, M3-1 ext, M3-2 ext, M3-extra-1 ext — sempre redirecionando para "Aula 6 / Pré-M4 / M4 13/06" | ✓ teaser |
| Radner sequencial formal | não derivado, citado em M3-1 ext + M3-extra-1 ext + Apêndice D item 10 ("NÃO entrar") | ✓ explicitamente fora |
| HJ bound completo | sketch em Bloco B.2 (1 linha tabela); citação com delegação a M4 ("M4 trabalha esse bound" — L. 374, L. 627); **M3-extra-2 reclassificado em fix #2 como auto-estudo opcional, com aviso "não usar em sala"** | ✓ pós-fix |
| Mercados incompletos formais | Apêndice D item 10 lista como "NÃO entrar" + Apêndice C FAQ 7 redireciona para Aula 6/M4 | ✓ |

**Aviso no Bloco 0** (L. 86) é explícito: *"Vocês viram Aula 6 quarta passada (27/05). Hoje aqui é estritamente Aula 5. Mercados incompletos / Radner / Hart-GP entram na M4 (13/06)."* Reforçado em Apêndice D item 10 (L. 941–950) com lista do que **NÃO** entrar. **Disciplina temporal preservada.**

**Black-Scholes (Bloco B.3):** sketch curto (4 min), trigger condicional ("acionar somente se 30%+ do `refl-alberto` pediu"). Aterrissado em árvore binomial 1-período, sem invadir Black-Scholes contínuo (Apêndice D item 10 também lista "Black-Scholes contínuo" como **NÃO entrar**). ✓

## 8. Pendências

| # | Pendência | Severidade | Recomendação |
|---|---|---|---|
| P1 | Dependência condicional B.3 (Black-Scholes sketch) está bem definida no roteiro, mas o cálculo dos $m_u, m_d$ não é feito — só se enuncia o resultado. Isso é OK em sketch de 4 min, **mas** se o Alberto for mesmo derivar, falta exemplo numérico. | 🟡 baixa | Opcional: adicionar ao Apêndice B um M3-extra-5 com Black-Scholes árvore binomial 1-período numérico — p. ex. $S_0 = 100, u = 1{,}2, d = 0{,}8, R_f = 1{,}05, K = 100$. Não fiz porque o sketch existente é suficiente para a M3 e o ponto pedagógico do Bloco B é Lucas/Mehra-Prescott, não Black-Scholes. |
| P2 | M3-extra-2 (HJ Brasil) ficou no apêndice como auto-estudo. Alternativa mais limpa seria movê-lo inteiro para `monitoria-04.md` Apêndice B, eliminando completamente a tentação de Alberto usá-lo em sala. | 🟢 cosmética | Não fiz — o aviso explícito na seção (fix #2) cobre o risco operacional. Se o Darcio preferir mover, é trivial — o exercício é stand-alone e o gabarito não tem dependência com nada de M3. |
| P3 | Notação `Cov(\Delta\ln c, \Delta\ln c)` na linha 358 é redundante (= $\sigma^2$). | 🟢 cosmética | Não toquei — pedagogicamente o aluno entende; reduzir para $\sigma^2$ direto perderia a sugestão de que $\sigma^2$ vem de uma covariância (importante para alavancar a fórmula CCAPM completa $\text{premium} \approx \gamma \cdot \text{Cov}(R^{eq}, \Delta\ln c)$ vista em macro-finanças). |

Nenhuma pendência bloqueia o calibre 10/10.

## 9. Nota final

**10 / 10.**

Justificativa:
- **Aritmética** verificada na vírgula em todas as 8 contas críticas (Bloco A, Bloco B, M3-1, M3-2, M3-3, M3-extra-1 pós-fix, M3-extra-3, M3-extra-4) — incluindo cruzamento Walras nos dois estados onde aplicável.
- **DOIs**: 8/8 validados via Crossref API; correção da sugestão errada do briefing (Wilson 1968 é `10.2307/1909607`, não `10.2307/1909999`).
- **Anti-padrão sweep**: zero ocorrências.
- **Não-duplicação**: confirmada cross-arquivo; M3 traz apenas extensões genuínas com parâmetros novos.
- **Disciplina temporal**: HJ bound completo movido para auto-estudo (fix #2); Hart-GP/Radner/Black-Scholes contínuo todos protegidos por Apêndice D item 10. Bloco 0 e cabeçalho do M3-extra-2 reforçam disciplina.
- **Bug conceitual** detectado e corrigido in-place (M3-extra-1: distinção preço Arrow vs taxa bond).

M3 está em pé com calibre alinhado a M4 e M5 (modelos 10/10).

---

**Auditor:** prof-mpe-micro (Referee 2 implacável).
**Tempo gasto:** 35 min (drill-down algébrico + DOI verification + fixes in-place + redação).
**Hash do arquivo principal pós-fixes:** rodar `git diff monitorias/monitoria-03.md` para ver o trio de edits aplicado.
