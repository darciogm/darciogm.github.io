# 17.4–17.6 Equilíbrio e Diferenciais Salariais

## 17.4 De Milhões de Despertadores a Uma Curva Só: Oferta Agregada {#174}

Até aqui, analisamos a oferta de trabalho do ponto de vista individual. Mas o mercado de trabalho é composto por milhões de trabalhadores heterogêneos, cada um com suas preferências, sua renda não salarial e seu salário de reserva. Como passamos da oferta individual — que pode ser backward-bending — para a oferta de mercado? A agregação produz uma curva com propriedades distintas, em grande parte porque incorpora não apenas a decisão de quantas horas trabalhar (margem intensiva), mas também a decisão de participar ou não da força de trabalho (margem extensiva).

A oferta de trabalho do mercado é obtida pela **agregação horizontal** das ofertas individuais. Se existem \(n\) trabalhadores, cada um com oferta \(h_i^*(w)\), a oferta agregada é:

\[
H^s(w) = \sum_{i=1}^{n} h_i^*(w)
\label{eq:17.10} \tag{17.10} \]

Mesmo que curvas individuais sejam backward-bending, a curva de mercado tende a ser **positivamente inclinada** por duas razões:

1. **Margem extensiva**: salários mais altos atraem novos trabalhadores ao mercado (pessoas que estavam fora da força de trabalho);
2. **Heterogeneidade**: diferentes trabalhadores atingem o ponto de inflexão em salários diferentes, de modo que a agregação suaviza o efeito.

!!! note "Margem intensiva vs. extensiva"
    A **margem intensiva** refere-se à decisão de quantas horas trabalhar (dado que se está empregado). A **margem extensiva** refere-se à decisão de participar ou não da força de trabalho. A análise do modelo trabalho-lazer captura primariamente a margem intensiva, mas a curva de mercado incorpora ambas.

### A decisão de participação (margem extensiva)

A margem extensiva merece atenção especial porque é quantitativamente tão importante quanto a margem intensiva — e, para certos grupos demográficos, é ainda mais relevante. O conceito central aqui é o **salário de reserva** \(w_R\): o salário mínimo que induz o indivíduo a ofertar pelo menos uma hora de trabalho. Formalmente, \(w_R\) é a taxa marginal de substituição entre lazer e consumo avaliada no ponto de não participação (\(h = 0\)):

\[
w_R = \frac{U_L(V, T)}{U_C(V, T)} \label{eq:17.10b} \tag{17.10b}
\]

Se o salário de mercado \(w < w_R\), o indivíduo não participa da força de trabalho. Se \(w \geq w_R\), ele oferece horas positivas. A **taxa de participação** da economia é a fração de indivíduos em idade ativa para os quais \(w \geq w_R\).

A taxa de participação varia enormemente entre grupos demográficos e países, e suas mudanças ao longo do tempo revelam transformações sociais profundas. No Brasil, segundo a PNAD Contínua/IBGE (2024), a taxa de participação na força de trabalho apresenta diferenças marcantes por gênero:

- **Homens:** taxa de participação de aproximadamente 73%, relativamente estável nas últimas décadas;
- **Mulheres:** taxa de participação de aproximadamente 53%, tendo crescido expressivamente desde os anos 1970 (quando era inferior a 30%), mas ainda significativamente abaixo da masculina.

Essa diferença de 20 pontos percentuais reflete uma combinação de fatores: divisão desigual do trabalho doméstico e de cuidados (que eleva o salário de reserva feminino), normas culturais, barreiras à participação (como a insuficiência de creches e escolas em tempo integral) e discriminação no mercado de trabalho. Políticas públicas que reduzem o custo do cuidado infantil — como a universalização de creches — podem reduzir o salário de reserva feminino e elevar a participação, com efeitos positivos sobre o PIB e a igualdade de gênero.

Internacionalmente, os países nórdicos apresentam as menores diferenças de participação por gênero (5–7 pontos percentuais), graças a políticas abrangentes de licença parental compartilhada, creches públicas universais e incentivos fiscais à participação feminina. Já em países do Oriente Médio e do Norte da África, a diferença pode superar 50 pontos percentuais, refletindo barreiras institucionais e culturais mais severas.

Do ponto de vista empírico, a maior parte da variação na oferta de trabalho agregada — tanto entre países quanto ao longo do tempo — advém de mudanças na **margem extensiva**, não na intensiva. É por isso que modelos que ignoram a decisão de participação subestimam a elasticidade da oferta de trabalho agregada: mesmo que cada indivíduo empregado ajuste pouco suas horas, a entrada e saída de trabalhadores do mercado gera grande variação no total de horas ofertadas.

---

## 17.5 Onde Oferta e Demanda se Encontram: Equilíbrio no Mercado de Trabalho {#175}

Hora de juntar as duas metades da história. Até aqui, olhamos o mercado de trabalho pelo lado do trabalhador, que decide quantas horas vender. Mas ninguém vende horas para o vazio — do outro lado do balcão está a firma, que compra trabalho porque precisa produzir. O mecanismo é análogo ao de qualquer mercado competitivo, com uma particularidade saborosa: a demanda por trabalho é uma demanda *derivada*, que não surge do desejo de "ter" trabalhadores, mas da necessidade de transformar horas de esforço em produto vendável.

### Determinação do salário competitivo

No modelo competitivo, o mercado de trabalho funciona como qualquer outro mercado. O salário de equilíbrio \(w^*\) é determinado pela interseção da curva de oferta agregada \(H^s(w)\) com a curva de demanda agregada por trabalho \(H^d(w)\).

A **demanda por trabalho** da firma advém da maximização de lucros. No curto prazo, com capital fixo, a firma contrata trabalho até que:

\[
w = p \cdot PMg_L = VPMg_L \label{eq:17.11} \tag{17.11}
\]

onde \(PMg_L\) é o produto marginal do trabalho e \(VPMg_L\) é o **valor do produto marginal do trabalho**. A equação \(\eqref{eq:17.11}\) mostra que a curva de demanda por trabalho é a curva de \(VPMg_L\), que é decrescente (devido à lei dos rendimentos decrescentes).

!!! definition "Equilíbrio competitivo no mercado de trabalho"
    O equilíbrio competitivo ocorre no par \((w^*, H^*)\) tal que:

    \[
    H^s(w^*) = H^d(w^*) = H^*
    \label{eq:17.12} \tag{17.12} \]

    Nesse equilíbrio, todo trabalhador que deseja trabalhar ao salário \(w^*\) encontra emprego, e toda firma que deseja contratar ao salário \(w^*\) encontra trabalhadores.

### Demanda por trabalho no longo prazo e as regras de Marshall

A equação \(\eqref{eq:17.11}\) descreve a demanda por trabalho no **curto prazo**, quando o capital é fixo. No **longo prazo**, a firma pode ajustar todos os fatores de produção, e a demanda por trabalho torna-se mais elástica. A intuição é que, quando o salário sobe, a firma não apenas reduz a produção (efeito-escala), mas também substitui trabalho por capital (efeito-substituição entre fatores). Ambos os efeitos reduzem a quantidade demandada de trabalho, tornando a curva de demanda de longo prazo mais plana que a de curto prazo.

Alfred Marshall (1890) formulou quatro regras — conhecidas como as **regras de Marshall da demanda derivada** — que determinam a elasticidade da demanda por um fator de produção. A demanda por trabalho será **mais elástica** quando:

1. **A elasticidade de substituição entre trabalho e capital for alta.** Se for fácil substituir trabalhadores por máquinas, um pequeno aumento salarial levará a uma grande substituição.

2. **A demanda pelo produto final for mais elástica.** Se os consumidores são sensíveis ao preço do produto, um aumento nos custos trabalhistas (repassado aos preços) reduz muito a quantidade vendida — e, portanto, o emprego.

3. **A participação do trabalho no custo total for grande.** Quando os salários representam uma fração elevada do custo de produção, variações salariais têm impacto proporcionalmente maior sobre o custo total e o preço do produto.

4. **A oferta dos outros fatores (capital) for mais elástica.** Se o capital é abundante e barato, a firma pode facilmente substituir trabalho por capital quando o salário sobe.

Essas regras são extremamente úteis para prever os efeitos de políticas salariais e trabalhistas em diferentes setores. Por exemplo, no setor de serviços pessoais (restaurantes, cuidados), onde a substituição por capital é difícil e o trabalho é uma fração elevada dos custos, a demanda por trabalho tende a ser relativamente inelástica no curto prazo, mas a regra 2 pode torná-la mais elástica no longo prazo se os consumidores tiverem alternativas. Já na indústria manufatureira, onde a substituição por automação é viável (regra 1), a demanda por trabalho tende a ser bastante elástica no longo prazo.

!!! idea "Intuição Econômica"
    **Em uma frase:** A demanda por trabalho é uma demanda "derivada" — depende não apenas da produtividade do trabalhador, mas também de quanto os consumidores querem o produto e de quão fácil é substituir trabalhadores por máquinas.

    **Pense assim:** Um restaurante que paga seus garçons por hora enfrenta um aumento do salário mínimo. No curto prazo, demite poucos garçons (é difícil substituí-los por robôs — por enquanto). Mas uma fábrica de autopeças, nas mesmas condições, pode instalar braços robóticos e demitir metade da linha de produção. A mesma variação salarial gera respostas de emprego muito diferentes, porque a elasticidade de substituição entre trabalho e capital é diferente.

    **Por que isso importa:** As regras de Marshall explicam por que os efeitos de políticas como o salário mínimo, encargos trabalhistas ou desonerações fiscais variam dramaticamente entre setores — e por que uma análise "tamanho único" pode ser enganosa.

### Deslocamentos das curvas

A [Tabela 17.1](#tabela-17-1) apresenta os principais fatores que deslocam as curvas de oferta e demanda de trabalho.

<a id="tabela-17-1"></a>

| Fator | Efeito sobre a oferta | Efeito sobre a demanda | Impacto no salário |
|:------|:---------------------|:----------------------|:-------------------|
| Aumento da produtividade | — | Desloca \(H^d\) para a direita | \(w^*\) sobe |
| Imigração | Desloca \(H^s\) para a direita | — | \(w^*\) cai |
| Aumento da renda não salarial | Desloca \(H^s\) para a esquerda | — | \(w^*\) sobe |
| Progresso tecnológico poupador de trabalho | — | Desloca \(H^d\) para a esquerda | \(w^*\) cai |

<div class="caption-obj" markdown>
**Tabela 17.1 — Deslocamentos das curvas de oferta e demanda de trabalho.**
</div>

!!! box-mundo "Box Mundo 17.3 — O declínio global da participação do trabalho na renda"

    **Contexto:** Um dos fatos macroeconômicos mais marcantes das últimas décadas é a queda sustentada da parcela do trabalho na renda nacional (*labor share*) em praticamente todos os países. Enquanto a divisão funcional da renda entre trabalho e capital era tradicionalmente considerada uma das "grandes constantes" da economia (Kaldor, 1961), evidências recentes mostram que essa constância se desfez.

    **Dados:** Karabarbounis e Neiman (2014), em estudo influente publicado no *Quarterly Journal of Economics*, documentaram que a participação do trabalho na renda caiu em 42 dos 59 países analisados entre 1975 e 2012:

    | Região/País | Labor share (anos 1970) | Labor share (anos 2010) | Variação |
    |:------------|:----------------------|:----------------------|:---------|
    | Países avançados (média) | ~65% | ~58% | −7 p.p. |
    | Estados Unidos | 66% | 58% | −8 p.p. |
    | Alemanha | 67% | 61% | −6 p.p. |
    | Japão | 72% | 60% | −12 p.p. |
    | China | 60% | 47% | −13 p.p. |

    *Fonte: Karabarbounis, L.; Neiman, B. (2014). "The Global Decline of the Labor Share." Quarterly Journal of Economics, 129(1), 61–103; Penn World Tables; AMECO.*

    **Análise:** Os autores argumentam que a principal causa é o barateamento dos bens de capital (computadores, robôs, software), que incentivou as firmas a substituírem trabalho por capital. Quando a elasticidade de substituição entre capital e trabalho é superior a 1 (ou seja, capital e trabalho são substitutos brutos), o barateamento do capital reduz a participação do trabalho na renda. Explicações complementares incluem: a globalização (que aumentou a oferta efetiva de trabalho via offshoring), o enfraquecimento dos sindicatos, o aumento do poder de mercado das firmas (superstar firms) e mudanças tecnológicas enviesadas contra o trabalho. O fenômeno conecta-se diretamente às regras de Marshall da demanda derivada: a elasticidade de substituição entre fatores (regra 1) determina como o barateamento do capital afeta a demanda relativa por trabalho.

    **Para refletir:** Se a tendência de queda do labor share continuar, quais são as implicações para a distribuição de renda e para a política tributária? Devemos tributar mais o capital e menos o trabalho? A ideia de uma renda básica universal, financiada pela tributação do capital e de recursos naturais, ganha relevância em um mundo onde a participação do trabalho na renda diminui sistematicamente?

---

## 17.6 Por Que o Médico Ganha Mais Que o Professor: Diferenciais Salariais {#176}

O modelo competitivo da seção anterior prevê um único salário de equilíbrio para trabalhadores homogêneos em um mercado sem fricções. Na prática, porém, observamos diferenças salariais enormes: médicos ganham mais que professores, engenheiros em plataformas de petróleo ganham mais que engenheiros em escritórios, e persistem hiatos significativos de gênero e raça mesmo entre profissionais com qualificações similares. O que explica essa dispersão? A teoria econômica oferece diversas explicações, que podem ser agrupadas em três grandes categorias.

### Capital humano

!!! definition "Capital humano"
    **Capital humano** é o estoque de habilidades, conhecimentos e experiência que um trabalhador acumula ao longo da vida, principalmente por meio da educação formal e do treinamento no trabalho (*on-the-job training*). O conceito foi formalizado por Gary Becker (1964) e Theodore Schultz (1961).

!!! info "Prêmio Nobel — Gary S. Becker (1992) e Theodore W. Schultz (1979)"
    **Gary Stanley Becker** (1930–2014) foi um economista americano. Obteve o PhD na Universidade de Chicago sob orientação de Milton Friedman e foi professor em Chicago por mais de cinco décadas.

    **Theodore William Schultz** (1902–1998) foi um economista americano. Obteve o PhD na Universidade de Wisconsin e foi professor na Universidade de Chicago. Dividiu o Nobel de 1979 com Arthur Lewis.

    **Por que ganharam o Nobel:**
    Schultz foi premiado por sua pesquisa pioneira em desenvolvimento econômico, com atenção especial ao papel da educação e do investimento em capital humano como motor do crescimento. Becker estendeu a análise econômica a domínios tradicionalmente não econômicos — discriminação racial, crime, família — e formalizou a teoria do capital humano, mostrando que a decisão de investir em educação segue a mesma lógica de custo-benefício intertemporal de qualquer investimento em capital físico.

    **Conexão com este capítulo:**
    A teoria do capital humano — que interpreta educação, treinamento e saúde como investimentos que aumentam a produtividade futura do trabalhador — é apresentada neste capítulo como extensão da teoria da demanda por fatores. A análise de Becker sobre discriminação no mercado de trabalho e a contribuição de Schultz sobre o papel da educação no desenvolvimento conectam diretamente a microeconomia dos mercados de trabalho às questões de desigualdade e crescimento.

O modelo de capital humano prevê que trabalhadores mais educados recebem salários mais altos porque são mais produtivos. A decisão de investir em educação segue a mesma lógica de qualquer investimento: comparam-se os custos (mensalidades, custo de oportunidade do tempo) com os benefícios (salários futuros mais altos).

A **equação de Mincer** relaciona o logaritmo do salário ao nível de educação e à experiência:

\[
\ln w = \beta_0 + \beta_1 S + \beta_2 X + \beta_3 X^2 + \varepsilon
\label{eq:17.13} \tag{17.13} \]

onde \(S\) é anos de escolaridade, \(X\) é experiência (ou idade − escolaridade − 6), e \(\beta_1\) é interpretado como a **taxa de retorno da educação**.

### Diferenciais compensatórios

Adam Smith já observava que trabalhos mais desagradáveis, perigosos ou insalubres tendem a pagar salários mais altos. No equilíbrio, diferenças salariais refletem diferenças nas **características não pecuniárias** dos empregos: risco de acidente, condições ambientais, horário, localização, estabilidade etc.

### Discriminação

Diferenças salariais também podem refletir **discriminação** por gênero, raça, etnia ou outras características. A teoria econômica distingue duas formas principais de discriminação no mercado de trabalho:

**Discriminação baseada em preferências (Becker, 1957).** No modelo de Becker, alguns empregadores, trabalhadores ou consumidores têm "gosto por discriminação" — uma desutilidade ao interagir com membros de certos grupos. Empregadores discriminadores estão dispostos a pagar um prêmio para contratar trabalhadores do grupo preferido, mesmo que a produtividade seja idêntica. Formalmente, o empregador discriminador age como se o custo de contratar um trabalhador do grupo discriminado fosse \(w(1 + d)\), onde \(d > 0\) é o **coeficiente de discriminação**. Uma implicação importante do modelo de Becker é que, em mercados competitivos, a discriminação tende a ser eliminada no longo prazo: firmas que não discriminam têm custos menores e obtêm lucros maiores, expulsando as firmas discriminadoras do mercado. A persistência da discriminação, portanto, requer alguma imperfeição de mercado — poder de mercado, barreiras à entrada ou custos de informação.

**Discriminação estatística (Phelps, 1972; Arrow, 1973).** Neste modelo, empregadores racionais e não preconceituosos utilizam características observáveis do grupo (gênero, raça, idade) como proxies para produtividade individual quando a informação sobre o trabalhador é imperfeita. Se, por exemplo, um empregador acredita (correta ou incorretamente) que a variância de produtividade é maior em certo grupo, pode preferir candidatos do grupo com menor variância percebida, mesmo que a produtividade média seja igual. A discriminação estatística é particularmente insidiosa porque: (i) pode ser praticada por agentes perfeitamente racionais e sem preconceito; (ii) pode se auto-confirmar — se mulheres ou negros sabem que serão discriminados, podem investir menos em capital humano, confirmando a crença original (profecia autorrealizável); (iii) não é eliminada pela competição, pois é uma resposta ótima a informação imperfeita.

**Decomposição de Oaxaca-Blinder.** Para medir a magnitude da discriminação salarial, economistas utilizam a técnica de **decomposição de Oaxaca-Blinder** (Oaxaca, 1973; Blinder, 1973). Suponha que estimamos equações de salário separadas para dois grupos (por exemplo, homens e mulheres):

\[
\ln w_H = X_H \hat{\beta}_H, \qquad \ln w_M = X_M \hat{\beta}_M
\]

onde \(X\) denota as características observáveis (educação, experiência, ocupação) e \(\hat{\beta}\) os retornos estimados. A diferença salarial média pode ser decomposta como:

\[
\underbrace{\overline{\ln w_H} - \overline{\ln w_M}}_{\text{diferencial total}} = \underbrace{(\bar{X}_H - \bar{X}_M)\hat{\beta}_H}_{\text{parte explicada}} + \underbrace{\bar{X}_M(\hat{\beta}_H - \hat{\beta}_M)}_{\text{parte não explicada}}
\label{eq:17.13b} \tag{17.13b}
\]

A **parte explicada** reflete diferenças nas características dos trabalhadores (mulheres podem ter menos experiência por interrupções de carreira, por exemplo). A **parte não explicada** — frequentemente interpretada como uma medida superior de discriminação — reflete diferenças nos retornos a características iguais: o fato de que homens e mulheres com a mesma educação e experiência recebem remunerações diferentes.

Aplicações da decomposição de Oaxaca-Blinder ao Brasil (por exemplo, Giuberti e Menezes-Filho, 2005) mostram que a parte não explicada do diferencial de gênero responde por 60–70% do hiato total, sugerindo que a discriminação (no sentido amplo, incluindo barreiras à promoção e segregação ocupacional) é responsável pela maior parte do diferencial salarial de gênero no país.

!!! idea "Intuição Econômica"
    **Em uma frase:** Nem toda diferença salarial é discriminação — mas a parte que sobra depois de controlar por educação, experiência e ocupação é um sinal forte de que o mercado não está tratando todos igualmente.

    **Pense assim:** Duas colegas de turma na faculdade de engenharia, uma branca e outra negra, se formam com notas idênticas, fazem estágio na mesma empresa e têm a mesma experiência. Dez anos depois, a primeira ganha 30% a mais. A decomposição de Oaxaca-Blinder separa essa diferença: quanto se deve a fatores observáveis (como tipo de empresa, setor, cidade) e quanto é "inexplicado" — a parte que, na ausência de melhor explicação, atribuímos à discriminação.

    **Por que isso importa:** A decomposição não é apenas um exercício econométrico: ela informa políticas públicas. Se a maior parte do hiato é explicada por diferenças de educação, a política correta é ampliar o acesso à educação. Se a parte não explicada é grande, medidas como fiscalização de igualdade salarial, cotas e transparência remuneratória tornam-se necessárias.

---

!!! box-brasil "O prêmio salarial da educação e os hiatos de gênero e raça"

    A equação de Mincer aplicada ao Brasil revela um dos maiores retornos à educação do mundo — e, ao mesmo tempo, uma desigualdade que persiste mesmo após o controle por escolaridade.

    **Prêmio salarial do ensino superior:**

    Segundo a PNAD Contínua/[IBGE](https://www.ibge.gov.br) (2.º trimestre de 2024), trabalhadores com ensino superior completo recebem, em média, **126% a mais** do que aqueles com ensino médio completo ou superior incompleto. Esse diferencial, embora ainda elevado, caiu 26 pontos percentuais em 12 anos, refletindo a expansão do acesso ao ensino superior.

    **Desigualdade por gênero:**

    O 3.º Relatório de Transparência Salarial do [MTE](https://www.gov.br/trabalho) (2025) mostra que as mulheres recebem, em média, **20,7% a menos** que os homens. Quando se adiciona o recorte racial, o hiato se amplia: mulheres negras ganham **53% a menos** que homens brancos.

    **Desigualdade por raça:**

    Mesmo entre trabalhadores com diploma universitário, o rendimento médio de negros (R$ 4.798) é **32% inferior** ao de não negros (R$ 7.030), segundo a PNAD Contínua 2024. Essa diferença sugere que fatores além do capital humano — como discriminação no mercado de trabalho e segregação ocupacional — desempenham papel relevante.

    **Conexão com a teoria:**

    A teoria do capital humano (seção 17.6) explica parte substancial dos diferenciais salariais observados: mais educação → maior produtividade → salário mais alto. Contudo, os hiatos persistentes de gênero e raça, mesmo controlando por escolaridade, apontam para a relevância dos modelos de discriminação (Becker, 1957) e de barreiras estruturais no acesso a ocupações de alta remuneração.

    *Fonte: PNAD Contínua/IBGE, 2.º tri 2024; MTE, 3.º Relatório de Transparência Salarial, 2025.*
