---
title: "Soluções — Capítulo 23"
---

# Soluções dos Exercícios — Capítulo 23

[← Voltar ao Capítulo 23](../cap23/exercicios.md)

---

## ✏️ Exercício 23.1 {#ex-23-1}

**Seguro de saúde com aversão ao risco.**

Riqueza \(W = 100.000\), probabilidade de doença \(\pi = 0{,}1\), custo \(m = 50.000\), utilidade \(u(x) = \sqrt{x}\).

---

**(a) Utilidade esperada sem seguro**

\[
EU = 0{,}9 \cdot \sqrt{100.000} + 0{,}1 \cdot \sqrt{50.000}
\]

\[
EU = 0{,}9 \times 316{,}23 + 0{,}1 \times 223{,}61 = 284{,}61 + 22{,}36 = 306{,}97
\]

---

**(b) Prêmio atuarialmente justo e utilidade com seguro**

\[
P = \pi \cdot m = 0{,}1 \times 50.000 = \text{R\$}\;5.000
\]

Com seguro justo, a riqueza é certa: \(W - P = 100.000 - 5.000 = 95.000\).

\[
U_{\text{seguro}} = \sqrt{95.000} = 308{,}22
\]

Como \(308{,}22 > 306{,}97\), o indivíduo prefere o seguro justo. A diferença reflete a aversão ao risco.

---

**(c) Prêmio máximo**

O prêmio máximo \(P_{\max}\) torna o indivíduo indiferente entre seguro e não seguro:

\[
\sqrt{100.000 - P_{\max}} = 306{,}97
\]

\[
100.000 - P_{\max} = (306{,}97)^2 = 94.230{,}58
\]

\[
P_{\max} = 100.000 - 94.230{,}58 = \text{R\$}\;5.769{,}42
\]

---

**(d) Conexão com o Capítulo 7**

O prêmio máximo (R\$ 5.769) excede o prêmio justo (R\$ 5.000) em R\$ 769,42. Essa diferença é o **prêmio de risco** — o valor que o indivíduo avesso ao risco está disposto a pagar *acima* do valor esperado da perda para eliminar a incerteza. Como \(u(x) = \sqrt{x}\) é côncava (aversão ao risco, Capítulo 7), a desigualdade de Jensen garante que \(E[u(X)] < u(E[X])\), e o indivíduo prefere a certeza ao valor esperado.

---

## ✏️ Exercício 23.2 {#ex-23-2}

**Dinâmica do estoque de saúde no modelo de Grossman.**

\(H_0 = 100\), \(\delta = 0{,}05\), \(I = 8\).

---

**(a) Estado estacionário**

Em estado estacionário: \(H^* = H^*(1 - \delta) + I \implies \delta H^* = I\).

\[
H^* = \frac{I}{\delta} = \frac{8}{0{,}05} = 160
\]

---

**(b) Trajetória de \(H_t\)**

\(H_{t+1} = 0{,}95 H_t + 8\):

| \(t\) | \(H_t\) |
|:------|:--------|
| 0 | 100,00 |
| 1 | 103,00 |
| 2 | 105,85 |
| 3 | 108,56 |
| 4 | 111,13 |
| 5 | 113,57 |
| 6 | 115,89 |
| 7 | 118,10 |
| 8 | 120,19 |
| 9 | 122,18 |
| 10 | 124,07 |

O estoque converge gradualmente para \(H^* = 160\), mas ainda está distante em \(t = 10\).

---

**(c) Se \(\delta' = 0{,}10\) a partir de \(t = 5\)**

Novo estado estacionário: \(H^{**} = 8/0{,}10 = 80\). A partir de \(t = 5\) (\(H_5 = 113{,}57\)):

\(H_{t+1} = 0{,}90 H_t + 8\):

| \(t\) | \(H_t\) |
|:------|:--------|
| 5 | 113,57 |
| 6 | 110,21 |
| 7 | 107,19 |
| 8 | 104,47 |
| 9 | 102,02 |
| 10 | 99,82 |

O estoque agora *diminui*, convergindo para o novo estado estacionário de 80.

---

**(d) Interpretação**

Um aumento de \(\delta\) representa envelhecimento ou deterioração das condições de saúde: o corpo "consome" saúde mais rapidamente. Com o mesmo nível de investimento \(I\), o estado estacionário cai de 160 para 80. Para manter o estoque anterior, seria necessário duplicar o investimento para \(I' = \delta' H^* = 0{,}10 \times 160 = 16\). Isso explica por que o gasto em saúde cresce com a idade: manter a mesma saúde requer cada vez mais investimento à medida que \(\delta\) aumenta.

---

## ✏️ Exercício 23.3 {#ex-23-3}

**Seleção adversa e espiral da morte.**

Tipo L: \(\pi_L = 0{,}1\), Tipo H: \(\pi_H = 0{,}4\). Perda: \(L = 20.000\). Proporção: 60% L, 40% H. Disposição a pagar: 1,1× valor atuarial.

---

**(a) Prêmios atuarialmente justos**

- Tipo L: \(P_L = 0{,}1 \times 20.000 = \text{R\$}\;2.000\)
- Tipo H: \(P_H = 0{,}4 \times 20.000 = \text{R\$}\;8.000\)
- Pool: \(\bar{P} = 0{,}6 \times 2.000 + 0{,}4 \times 8.000 = 1.200 + 3.200 = \text{R\$}\;4.400\)

---

**(b) Quem sai com prêmio do pool?**

Disposição a pagar do tipo L: \(1{,}1 \times 2.000 = 2.200\). Como \(\bar{P} = 4.400 > 2.200\), o tipo L **não compra** seguro ao prêmio do pool.

Disposição a pagar do tipo H: \(1{,}1 \times 8.000 = 8.800\). Como \(\bar{P} = 4.400 < 8.800\), o tipo H compra.

---

**(c) Prêmio de equilíbrio**

Com apenas tipo H no pool: \(P^* = \pi_H \times L = 0{,}4 \times 20.000 = \text{R\$}\;8.000\).

A disposição a pagar do tipo H é 8.800 > 8.000, então o tipo H permanece segurado. O equilíbrio tem apenas tipo H segurado, ao prêmio de R\$ 8.000.

---

**(d) Diagrama da espiral**

Iteração 1: \(\bar{P} = 4.400\). Tipo L sai (\(V_L = 2.200 < 4.400\)). Tipo H fica.

Iteração 2: Pool = 100% tipo H. \(P = 8.000\). Tipo H fica (\(V_H = 8.800 > 8.000\)). Equilíbrio.

Resultado: 60% da população fica sem seguro. Se os tipo-L pudessem obter seguro a R\$ 2.000, ambos os tipos estariam melhor — mas a informação assimétrica impede esse resultado.

---

## ✏️ Exercício 23.4 {#ex-23-4}

**Demanda induzida pelo ofertante.**

Fee-for-service: R\$ 200/procedimento. \(n^* = 5\). \(U = 200n - 50(n-5)^2\) para \(n \geq 5\).

---

**(a) Número ótimo de procedimentos**

\[
\frac{dU}{dn} = 200 - 100(n - 5) = 0 \implies n - 5 = 2 \implies n = 7
\]

Verificação (segunda ordem): \(\frac{d^2U}{dn^2} = -100 < 0\). Máximo.

---

**(b) Excesso de procedimentos**

\[
\text{SID} = n - n^* = 7 - 5 = 2 \text{ procedimentos}
\]

O custo adicional: \(2 \times 200 = \text{R\$}\;400\).

---

**(c) Com capitation**

Sob capitation, a renda é fixa (R\$ 1.000) independentemente de \(n\). A utilidade torna-se:

\[
U = 1.000 - 50(n - 5)^2
\]

Maximizar: \(\frac{dU}{dn} = -100(n - 5) = 0 \implies n = 5\).

O médico escolhe exatamente o número clinicamente adequado — eliminando a demanda induzida.

---

**(d) Trade-off**

O fee-for-service incentiva o sobretratamento (SID), mas garante produtividade — o médico tem incentivo para atender pacientes. A capitation elimina o SID, mas cria risco de *subtratamento*: como a renda não depende do número de procedimentos, o médico pode minimizar o esforço. Na prática, muitos sistemas usam pagamento misto (base fixa + bônus por desempenho) para equilibrar os incentivos.

---

## ✏️ Exercício 23.5 {#ex-23-5}

**Vacinação como externalidade positiva.**

\(R_0 = 4\), custo = R\$ 100, benefício privado = R\$ 80, benefício externo = R\$ 60.

---

**(a) Decisão privada**

\(B_p = 80 < c = 100\). **Não**, o indivíduo não se vacina voluntariamente. O benefício privado não cobre o custo.

---

**(b) Ótimo social**

Benefício social total: \(B_p + B_e = 80 + 60 = 140 > 100 = c\).

Benefício social líquido: \(140 - 100 = \text{R\$}\;40\) por pessoa vacinada. **Sim**, é socialmente ótimo vacinar.

---

**(c) Limiar de imunidade de rebanho**

\[
\text{Limiar} = 1 - \frac{1}{R_0} = 1 - \frac{1}{4} = 0{,}75 = 75\%
\]

---

**(d) Política pigouviana**

Um subsídio pigouviano de R\$ 60 (igual ao benefício externo) por vacina: o custo efetivo para o indivíduo cai para \(100 - 60 = 40 < 80 = B_p\). Agora o indivíduo se vacina voluntariamente. Alternativamente, vacinação gratuita (subsídio de R\$ 100) ou obrigatória.

---

## ✏️ Exercício 23.6 {#ex-23-6}

**Comparação de sistemas de saúde.**

---

**(a) Índice de eficiência simples**

- País A: \(82/10 = 8{,}2\) anos de vida por % do PIB
- País B: \(77/17 = 4{,}5\) anos de vida por % do PIB

---

**(b) Eficiência e equidade**

- **Mais eficiente**: País A (índice 8,2 vs. 4,5 — mais saúde por unidade de gasto).
- **Mais equitativo**: País A (0% sem seguro vs. 8%; mortalidade infantil menor).

País B tem vantagem apenas no tempo de espera (2 vs. 12 semanas).

---

**(c) Complexidade da comparação**

O índice simples ignora: (i) composição da população (idade, renda, comportamento); (ii) qualidade de vida (não apenas duração); (iii) inovação tecnológica produzida; (iv) satisfação do paciente e escolha; (v) fatores não médicos que afetam a expectativa de vida (violência, dieta, desigualdade). Além disso, a expectativa de vida nos EUA é afetada por epidemia de opioides, homicídios e obesidade — fatores parcialmente independentes do sistema de saúde.

---

**(d) Métrica mais adequada**

QALYs produzidos por unidade de gasto, ajustados por fatores de risco da população (idade, tabagismo, obesidade, pobreza). Ou: mortalidade evitável (*amenable mortality*) — mortes que não teriam ocorrido com cuidados médicos oportunos e efetivos — que isola melhor a contribuição do sistema de saúde.

---

## ✏️ Exercício 23.7 {#ex-23-7}

**Análise custo-efetividade de duas intervenções.**

A: R\$ 30.000/paciente, 5 QALYs. B: R\$ 500/paciente, 0,5 QALYs. Orçamento: R\$ 300.000.

---

**(a) ICER de cada intervenção**

\[
ICER_A = \frac{30.000}{5} = \text{R\$}\;6.000/\text{QALY}
\]

\[
ICER_B = \frac{500}{0{,}5} = \text{R\$}\;1.000/\text{QALY}
\]

---

**(b) Número de pacientes com orçamento total**

- Só A: \(300.000/30.000 = 10\) pacientes → \(10 \times 5 = 50\) QALYs.
- Só B: \(300.000/500 = 600\) pacientes → \(600 \times 0{,}5 = 300\) QALYs.

---

**(c) Alocação que maximiza QALYs**

A intervenção B tem ICER menor (mais custo-efetiva). Investir tudo em B gera 300 QALYs vs. 50 QALYs em A. Logo, alocar os R\$ 300.000 integralmente em B maximiza os QALYs totais.

Alocação mista (exemplo: R\$ 30.000 em A + R\$ 270.000 em B): 5 + 270 = 275 QALYs < 300.

---

**(d) Implicações éticas**

A alocação por custo-efetividade puro (tudo em B) significa que nenhum paciente com obesidade mórbida recebe cirurgia bariátrica. Questões éticas: (i) **severidade**: pacientes com condições mais graves podem ter direito a tratamento mesmo se menos custo-efetivo; (ii) **equidade**: se os pacientes de bariátrica são de baixa renda e os de hipertensão de alta renda, a alocação pode agravar desigualdades; (iii) **regra de resgate**: a sociedade pode considerar moralmente imperativo tratar condições que ameaçam a vida, independentemente do ICER. Na prática, as decisões combinam custo-efetividade com critérios de equidade e severidade.

---

## ✏️ Exercício 23.8 {#ex-23-8}

**SUS e sistema privado: dupla porta e gasto per capita.**

75% no SUS (4% PIB), 25% no privado (5% PIB). PIB per capita: R\$ 50.000. População: 200 milhões.

---

**(a) Gasto per capita relativo**

PIB total: \(200 \times 10^6 \times 50.000 = \text{R\$}\;10 \times 10^{12} = \text{R\$}\;10\) trilhões.

- SUS: 4% × R\$ 10 tri = R\$ 400 bilhões para 150 milhões de pessoas → **R\$ 2.667/pessoa**.
- Privado: 5% × R\$ 10 tri = R\$ 500 bilhões para 50 milhões de pessoas → **R\$ 10.000/pessoa**.

O gasto per capita no sistema privado é **3,75 vezes** maior que no SUS.

---

**(b) Gasto absoluto**

- SUS: R\$ 400 bilhões/ano
- Privado: R\$ 500 bilhões/ano
- Total: R\$ 900 bilhões/ano (9% do PIB)

---

**(c) A "dupla porta"**

Pacientes com plano privado usam o SUS para: (i) procedimentos de alta complexidade (transplantes, HIV/AIDS, oncologia complexa) que são referência no SUS; (ii) vacinação e vigilância epidemiológica (funções exclusivas do SUS); (iii) medicamentos de alto custo distribuídos pelo SUS; (iv) emergências quando distantes de hospitais conveniados ao plano. Isso configura um subsídio cruzado: o contribuinte financia serviços usados por quem também tem plano privado.

---

**(d) Mecanismo de ressarcimento**

A ANS já prevê o ressarcimento ao SUS por atendimentos a beneficiários de planos privados, mas a cobrança é lenta e subestimada. Uma proposta seria: (i) identificação automática via CPF de beneficiários de planos que usam o SUS; (ii) cobrança direta à operadora pelo valor da tabela SUS acrescido de margem administrativa; (iii) publicação anual dos valores de ressarcimento por operadora, incentivando concorrência reputacional. O valor estimado não ressarcido ultrapassa R\$ 5 bilhões/ano.

---

## ✏️ Exercício 23.9 {#ex-23-9}

**Ajuste de risco em seguros de saúde.**

---

**(a) Pagamento de ajuste de risco**

O ajuste de risco transfere com base nos custos *previstos* pelo modelo, não nos observados:

\[
AR_{\text{grupo}} = (\hat{m}_{\text{grupo}} - \bar{m}) \times N_{\text{grupo}}
\]

- Jovens homens: \((2.500 - 5.000) \times 250 = -625.000\) (paga R\$ 625.000)
- Jovens mulheres: \((3.200 - 5.000) \times 250 = -450.000\) (paga R\$ 450.000)
- Idosos homens: \((7.500 - 5.000) \times 250 = +625.000\) (recebe R\$ 625.000)
- Idosas mulheres: \((6.800 - 5.000) \times 250 = +450.000\) (recebe R\$ 450.000)

Soma: \(-625 - 450 + 625 + 450 = 0\) (balanceado).

---

**(b) Quem recebe transferências?**

Seguradoras que atendem predominantemente idosos recebem transferências; seguradoras com carteira de jovens pagam. Isso reduz o incentivo para *cream-skimming* (atrair jovens saudáveis).

---

**(c) Adequação do modelo**

Comparando custos previstos com observados:

- Jovens homens: previsto 2.500 vs. observado 2.000 → modelo **superestima** (+25%)
- Jovens mulheres: previsto 3.200 vs. observado 3.000 → modelo superestima (+7%)
- Idosos homens: previsto 7.500 vs. observado 8.000 → modelo **subestima** (−6%)
- Idosas mulheres: previsto 6.800 vs. observado 7.000 → modelo subestima (−3%)

O modelo subestima custos dos idosos e superestima dos jovens — compensando insuficientemente as seguradoras de idosos.

---

**(d) Fatores adicionais**

Diagnósticos prévios (HCC — Hierarchical Condition Categories), uso de medicamentos, hospitalizações anteriores, indicadores socioeconômicos (renda, região). Modelos mais sofisticados (como o usado pelo Medicare Advantage nos EUA) explicam 10–15% da variância individual dos custos — melhor que idade/sexo sozinhos (5%), mas ainda longe do ideal.

---

## ✏️ Exercício 23.10 {#ex-23-10}

**Valor de uma vida estatística e políticas públicas.**

VSL = R\$ 5 milhões. Política X: 500 mortes evitadas, custo R\$ 400 mi. Política Y: 200 mortes evitadas, custo R\$ 800 mi.

---

**(a) Benefício monetário**

- Política X: \(500 \times 5.000.000 = \text{R\$}\;2{,}5\) bilhões
- Política Y: \(200 \times 5.000.000 = \text{R\$}\;1{,}0\) bilhão

---

**(b) Benefício líquido**

- Política X: \(2.500 - 400 = \text{R\$}\;2{,}1\) bilhões (positivo)
- Política Y: \(1.000 - 800 = \text{R\$}\;200\) milhões (positivo)

---

**(c) Escolha com orçamento limitado**

Política X tem maior benefício líquido (R\$ 2,1 bi vs. R\$ 200 mi) e maior razão benefício-custo (2.500/400 = 6,25 vs. 1.000/800 = 1,25). Escolher **Política X**.

Alternativamente: custo por morte evitada: X = 400/500 = R\$ 800 mil; Y = 800/200 = R\$ 4 milhões. X é 5 vezes mais custo-efetiva.

---

**(d) Limitações éticas do VSL**

(i) **Equidade**: o VSL é estimado a partir de decisões de mercado (diferenciais salariais), refletindo a disposição a pagar — que depende da renda. O VSL dos ricos é maior que o dos pobres, mas isso não significa que suas vidas "valem mais". (ii) **Identifiabilidade**: o VSL aplica-se a vidas *estatísticas* (anônimas), não a indivíduos identificados — a sociedade valoriza diferentemente "salvar 1 de 100.000 pessoas anônimas" vs. "salvar João que está morrendo no hospital". (iii) **Incomensurabilidade**: alguns filósofos argumentam que a vida humana não pode ser comparada com bens materiais — o que tornaria a monetização fundamental ilegítima. (iv) Na prática, o VSL é uma ferramenta imperfeita mas útil: sem ele, as decisões ainda são tomadas — mas implicitamente e sem transparência.
