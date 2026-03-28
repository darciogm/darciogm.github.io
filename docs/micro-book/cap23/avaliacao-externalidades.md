## 23.6 Avaliação econômica em saúde {#236}

### 23.6.1 Tipos de avaliação econômica

Recursos em saúde são escassos — sempre. Mesmo países ricos não podem oferecer tudo a todos. A **avaliação econômica em saúde** fornece as ferramentas para alocar recursos de forma racional, respondendo à pergunta: "Dado que não podemos financiar tudo, onde cada real adicional gera mais saúde?"

Existem quatro tipos principais de avaliação econômica:

| Tipo | Custos medidos em | Resultados medidos em | Quando usar |
|:-----|:------------------|:---------------------|:------------|
| **Custo-minimização** | Reais (R\$) | Assume iguais | Intervenções com mesma eficácia |
| **Custo-efetividade (ACE)** | Reais (R\$) | Unidades naturais (anos de vida, casos evitados) | Comparar intervenções na mesma área |
| **Custo-utilidade (ACU)** | Reais (R\$) | QALYs | Comparar intervenções entre áreas diferentes |
| **Custo-benefício (ACB)** | Reais (R\$) | Reais (R\$) | Comparar intervenções em saúde com investimentos fora da saúde |

### 23.6.2 QALYs e DALYs: medindo saúde além da sobrevivência

Viver mais não é o mesmo que viver bem. Um ano de vida com dor crônica severa não equivale a um ano com saúde plena. O **QALY** (*Quality-Adjusted Life Year*) captura essa distinção:

\[
\text{QALYs} = \sum_{t=1}^{T} q_t \cdot \beta^{t-1} \tag{23.16}
\]

onde \(q_t \in [0,1]\) é a qualidade de vida no ano \(t\) (1 = saúde perfeita, 0 = morte) e \(\beta\) é o fator de desconto. Uma intervenção que gera 5 anos de vida com qualidade 0,8 produz \(5 \times 0{,}8 = 4\) QALYs.

O **DALY** (*Disability-Adjusted Life Year*), usado pela OMS, mede o oposto: anos de vida perdidos por morte prematura ou vividos com incapacidade. Uma doença que causa 3 anos de incapacidade com peso 0,5 gera \(3 \times 0{,}5 = 1{,}5\) DALYs.

A razão de custo-efetividade incremental (**ICER**) compara duas intervenções:

\[
ICER = \frac{C_A - C_B}{\text{QALYs}_A - \text{QALYs}_B} = \frac{\Delta C}{\Delta E} \tag{23.17}
\]

Se o ICER é menor que um limiar de disposição a pagar por QALY (tipicamente 1–3× PIB per capita, segundo a OMS), a intervenção é considerada custo-efetiva.

!!! idea "Intuição Econômica"
    **Em uma frase:** QALYs permitem comparar intervenções completamente diferentes — vacinar crianças vs. tratar câncer de pulmão — usando uma métrica comum de "saúde produzida".

    **Pense assim:** Suponha que você é ministro da Saúde com R$ 100 milhões para gastar. A opção A salva 100 vidas por 10 anos cada (1.000 anos de vida). A opção B salva 500 vidas por 5 anos cada, mas com qualidade 0,6 (1.500 QALYs). Sem QALYs, a comparação é impossível — com QALYs, B é melhor (1.500 > 1.000). Claro, isso assume que você aceita a premissa de que qualidade de vida pode ser quantificada numa escala de 0 a 1 — premissa controversa, mas operacionalmente útil.

    **Por que isso importa:** O NICE (National Institute for Health and Care Excellence) do Reino Unido usa um limiar de ~£20.000–30.000 por QALY para decidir quais medicamentos o NHS financia. Medicamentos acima desse limiar são rejeitados — uma decisão que explicita o custo de oportunidade de cada tratamento.

### 23.6.3 Valor de uma vida estatística (VSL)

A análise custo-benefício em saúde requer, em última instância, atribuir um valor monetário à vida humana — ou, mais precisamente, a reduções marginais no risco de morte. O **valor de uma vida estatística** (VSL, *Value of a Statistical Life*) é derivado da disposição a pagar por reduções de risco:

\[
VSL = \frac{\Delta WTP}{\Delta \text{risco}} \tag{23.18}
\]

Se trabalhadores aceitam um emprego com risco de morte 1/10.000 maior por um adicional salarial de R$ 500/ano, o VSL implícito é:

\[
VSL = \frac{500}{1/10.000} = \text{R\$}\;5.000.000
\]

A literatura empírica estima VSL entre US$ 4–10 milhões em países de alta renda (Viscusi & Aldy, 2003). Em países de renda média como o Brasil, estimativas variam entre US$ 1–3 milhões.

!!! warning "Cuidado"
    O VSL **não** significa que "uma vida vale X reais". Significa que, *na margem*, as pessoas revelam estar dispostas a pagar X para reduzir em 1 unidade o risco estatístico de morte. É uma medida de preferências reveladas, não uma declaração ética sobre o valor intrínseco da vida. Mas como depende da renda (ricos podem pagar mais por segurança), o VSL levanta questões sérias de equidade — o VSL dos ricos é maior, mas suas vidas não "valem mais".

!!! exercicio-resolvido "ER 23.3 — QALYs e decisão de investimento"
    **Problema:** O governo avalia duas campanhas de saúde pública:

    - **Campanha A** (rastreamento de câncer): custa R$ 50 milhões e gera 5.000 QALYs.
    - **Campanha B** (vacinação infantil): custa R$ 10 milhões e gera 8.000 QALYs.

    (a) Calcule o ICER de cada campanha em relação a "não fazer nada".

    (b) Se o limiar de custo-efetividade é R$ 50.000/QALY, quais campanhas são custo-efetivas?

    (c) Com orçamento de R$ 50 milhões, qual a alocação que maximiza QALYs?

    **Solução:**

    **(a)** Em relação a "não fazer nada" (custo = 0, QALYs = 0):

    \[
    ICER_A = \frac{50.000.000}{5.000} = \text{R\$}\;10.000/\text{QALY}
    \]

    \[
    ICER_B = \frac{10.000.000}{8.000} = \text{R\$}\;1.250/\text{QALY}
    \]

    **(b)** Ambas estão abaixo do limiar de R$ 50.000/QALY: A (R$ 10.000) e B (R$ 1.250). Ambas são custo-efetivas.

    **(c)** Com R$ 50 milhões:

    - Só A: 5.000 QALYs (gasta tudo).
    - Só B: \(50.000.000/10.000.000 = 5\) campanhas B = 40.000 QALYs.
    - B primeiro + A com o resto: 1 campanha B (R$ 10 mi, 8.000 QALYs) + A (R$ 40 mi... mas A custa R$ 50 mi). Não cabe.
    - Alocar tudo em B: R$ 50 mi → 5 × B = 40.000 QALYs. **Maximiza QALYs.**

    **Lição:** Mesmo com ambas as campanhas sendo custo-efetivas, com orçamento limitado a alocação ótima prioriza a intervenção com *menor* ICER — exatamente como a regra de razão benefício-custo na análise de projetos (Capítulo 20).

### 23.6.4 Externalidades em saúde: vacinação e doenças contagiosas

A vacinação é o caso mais limpo de **externalidade positiva** em economia da saúde — e, convenientemente, o mais quantificável. Quando um indivíduo se vacina, ele se protege (benefício privado) *e* reduz a probabilidade de transmitir a doença para outros (benefício externo).

O **número básico de reprodução** \(R_0\) de uma doença é o número médio de pessoas que um infectado contagia numa população totalmente suscetível. Se a fração vacinada (e efetivamente imunizada) é \(v\), o número efetivo de reprodução é:

\[
R_e = R_0 \cdot (1 - v) \tag{23.19}
\]

A epidemia é controlada quando \(R_e < 1\), ou seja:

\[
v > 1 - \frac{1}{R_0} \equiv v^* \tag{23.20}
\]

O limiar \(v^*\) é a **fração de imunidade de rebanho**. Para sarampo (\(R_0 \approx 12\!-\!18\)), \(v^* \approx 92\!-\!94\%\). Para COVID-19 com a variante original (\(R_0 \approx 2{,}5\)), \(v^* \approx 60\%\).

O problema de ação coletiva é claro: o indivíduo compara benefício privado com custo privado, ignorando o benefício externo. Se o custo da vacina \(c\) excede o benefício privado \(B_p\), mas é menor que o benefício social \(B_p + B_e\), o mercado subproduz vacinação:

\[
B_p < c < B_p + B_e \tag{23.21}
\]

A solução pigouviana (Capítulo 20) é um subsídio igual ao benefício externo:

\[
s^* = B_e \tag{23.22}
\]

Com o subsídio, o custo efetivo para o indivíduo cai para \(c - s^* = c - B_e < B_p\), e a vacinação voluntária atinge o nível socialmente ótimo. Na prática, muitos países vão além do subsídio e tornam a vacinação obrigatória — uma solução mais simples administrativamente, embora mais controversa em termos de liberdade individual.

!!! box-brasil "Box Brasil 23.3 — O PNI e a hesitação vacinal"
    O **Programa Nacional de Imunizações** (PNI), criado em 1973, é uma das histórias de sucesso mais impressionantes da saúde pública brasileira. O Brasil erradicou a varíola (1971), a poliomielite (1989) e eliminou o sarampo endêmico (2016 — reintroduzido em 2018 por queda da cobertura).

    Mas a cobertura vacinal caiu dramaticamente na década de 2020: a cobertura da tríplice viral (sarampo/caxumba/rubéola) despencou de ~96% em 2015 para ~80% em 2021 — abaixo do limiar de imunidade de rebanho. As causas são múltiplas: desinformação em redes sociais, crise de confiança institucional, dificuldade de acesso em áreas remotas e "fadiga vacinal" após décadas de sucesso (que fez as doenças parecerem irrelevantes).

    A análise econômica é direta: a vacinação tem ICER extremamente favorável (frequentemente *cost-saving* — economiza mais do que custa, ao evitar tratamentos caros). O retorno sobre investimento do PNI é estimado em 10:1 a 44:1, dependendo da vacina (Ministério da Saúde, 2024). A queda da cobertura é, em termos microeconômicos, um caso de **free-riding** em bens públicos (Capítulo 20): quando a maioria está vacinada, o benefício privado marginal da vacina cai (a doença é rara), mas o benefício social permanece alto.
