# Exercícios e ANPEC — Capítulo 21

## Perguntas de Revisão

??? question "1. Por que bens de informação têm custo marginal próximo de zero?"
    Bens de informação (software, música, dados, algoritmos) concentram seus custos na **primeira cópia** — o desenvolvimento é caro, mas a reprodução e distribuição digital são essencialmente gratuitas. A estrutura de custos é \(C(q) = F + cq\) com \(F \gg 0\) e \(c \approx 0\). Isso gera economias de escala extremas e mercados que tendem ao monopólio natural (Seção 21.1).

??? question "2. Qual a diferença entre efeitos de rede diretos e indiretos?"
    **Diretos**: o valor do produto para um usuário aumenta com o número de outros usuários do *mesmo* produto (WhatsApp: mais contatos = mais valor). **Indiretos** (cruzados): o valor para usuários de um lado aumenta com participantes do *outro* lado (iPhone: mais desenvolvedores = mais apps = mais valor para consumidores). Efeitos indiretos são a base dos mercados bilaterais (Seção 21.2).

??? question "3. Explique por que plataformas como Google oferecem serviços gratuitos."
    Plataformas bilaterais seguem a lógica do **subsídio cruzado** (Rochet e Tirole, 2003): subsidiam o lado que gera maior externalidade para o outro lado e/ou que tem maior elasticidade-preço. O Google é gratuito para usuários (lado subsidiado) porque a presença de bilhões de buscas torna a plataforma irresistivelmente valiosa para anunciantes (lado pagante), que pagam pelo acesso à atenção dos usuários (Seções 21.3 e 21.5).

??? question "4. O que é tipping e por que ocorre em mercados digitais?"
    **Tipping** (tombamento) é o processo pelo qual uma plataforma que obtém uma pequena vantagem inicial (em número de usuários) amplia essa vantagem via feedback positivo dos efeitos de rede, até dominar completamente o mercado. Ocorre porque efeitos de rede criam **complementaridades estratégicas**: a decisão de cada usuário depende de quantos outros já aderiram. Uma vez ultrapassada a massa crítica, a adoção se torna autossustentável (Seção 21.2).

??? question "5. Como a externalidade de privacidade justifica regulação de dados?"
    Os dados que um indivíduo compartilha revelam informações sobre seus contatos e pessoas demograficamente semelhantes — uma **externalidade negativa** informacional (\(\partial U_j / \partial d_i < 0\)). Mesmo que cada indivíduo compartilhe "racionalmente", o nível agregado será **socialmente excessivo** — a mesma lógica de qualquer externalidade negativa (Capítulo 20). A LGPD, o GDPR e regulações similares impõem custos de conformidade que funcionam como uma "taxa pigouviana" sobre o compartilhamento excessivo (Seção 21.6).

---

## Resumo do Capítulo

- Bens de informação têm custo fixo elevado e custo marginal próximo de zero, gerando economias de escala extremas e tendência ao monopólio natural.
- Efeitos de rede (diretos e indiretos) criam complementaridades estratégicas, múltiplos equilíbrios, massa crítica e dinâmicas de tipping.
- Mercados bilaterais (Rochet e Tirole, 2003) conectam dois ou mais grupos via plataformas; a **estrutura** de preços importa, não apenas o nível — a plataforma ótima subsidia um lado e extrai lucro do outro.
- A competição entre plataformas depende de single-homing vs. multi-homing; o winner-take-all não é universal, mas plataformas tendem à concentração.
- A economia da atenção modela plataformas ad-supported: o "preço" pago pelo usuário é atenção e dados pessoais.
- Dados geram economias de escala e escopo que reforçam vantagens incumbentes; privacidade é uma externalidade que justifica regulação (LGPD, GDPR).
- Leilões digitais (GSP, RTB) são mecanismos sofisticados que alocam atenção em milissegundos; precificação algorítmica levanta riscos de colusão tácita.

---

## Conceitos-Chave

**Tabela 21.1 — Conceitos centrais do Capítulo 21**

| Conceito | Definição | Seção |
|:---------|:----------|:------|
| Bem de informação | Bem com custo fixo elevado e custo marginal de reprodução próximo de zero | 21.1 |
| Efeito de rede direto | Valor do produto cresce com o número de usuários do mesmo produto | 21.2 |
| Efeito de rede indireto | Valor para um lado cresce com participantes do outro lado | 21.2 |
| Massa crítica | Número mínimo de adotantes acima do qual a adoção se torna autossustentável | 21.2 |
| Tipping | Processo de tombamento em favor de uma plataforma dominante | 21.2 |
| Lock-in | Custos de troca que aprisionam usuários em uma plataforma | 21.2 |
| Mercado bilateral | Mercado em que plataforma conecta dois grupos com externalidades cruzadas | 21.3 |
| Subsídio cruzado | Estratégia de precificar abaixo do custo para um lado e extrair lucro do outro | 21.3 |
| Economia da atenção | Mercado em que plataformas competem por atenção e a revendem a anunciantes | 21.5 |
| GSP (Generalized Second Price) | Mecanismo de leilão de anúncios usado pelo Google | 21.7 |

---

## Exercícios

!!! exercicio-proposto "Exercício 21.1 — Plataforma de streaming: custo fixo, monopólio e discriminação de preços" {#ex-21-1}
    Uma plataforma de streaming tem custo fixo \(F = 10.000\) e custo marginal \(c = 0{,}01\) por usuário. A demanda é \(q = 500 - 100p\).

    (a) Calcule a quantidade socialmente ótima e o excedente total.

    (b) Calcule a quantidade e o preço de monopólio. Qual o peso morto?

    (c) Calcule o lucro do monopolista. O resultado é viável?

    (d) Suponha que a plataforma pode oferecer dois planos (básico a R$ 1 e premium a R$ 4). Calcule a receita total e compare com o monopólio uniforme.

    [Ver solução](../solucoes/cap21.md#ex-21-1)

!!! exercicio-proposto "Exercício 21.2 — Rede de comunicação com efeitos de rede" {#ex-21-2}
    Uma rede de comunicação tem \(N = 200\) usuários potenciais com valores intrínsecos \(v_i\) distribuídos uniformemente em \([0, 8]\). O benefício de rede é \(f(n) = 0{,}02n\) e o preço é \(p = 2\).

    (a) Encontre todos os equilíbrios de adoção.

    (b) Determine a massa crítica.

    (c) Qual o preço máximo que garante adoção universal?

    (d) Compare a receita com \(p = 4\) e \(p = 5\). O que o resultado revela?

    [Ver solução](../solucoes/cap21.md#ex-21-2)

!!! exercicio-proposto "Exercício 21.3 — Plataforma bilateral: preços e bem-estar" {#ex-21-3}
    Uma plataforma bilateral tem demandas \(n_B = 100 - 2p_B + n_S\) e \(n_S = 100 - 2p_S + 0{,}5n_B\). Custos marginais: \(c_B = c_S = 5\).

    (a) Resolva o sistema de demandas para expressar \(n_B\) e \(n_S\) como funções de \(p_B\) e \(p_S\).

    (b) Determine os preços de monopólio \(p_B^*\) e \(p_S^*\).

    (c) Qual lado é subsidiado? Por quê?

    (d) Calcule o peso morto do monopólio bilateral comparado ao ótimo social.

    [Ver solução](../solucoes/cap21.md#ex-21-3)

!!! exercicio-proposto "Exercício 21.4 — Competição entre redes sociais com single-homing" {#ex-21-4}
    Duas redes sociais (A e B) competem por \(N = 100\) usuários homogêneos. A utilidade de estar na rede \(k\) é \(u_k = v + 0{,}1n_k - p_k\), com \(v = 3\) e \(p_A = p_B = 1\).

    (a) Encontre todos os equilíbrios de Nash.

    (b) Qual divisão de mercado é instável? Por quê?

    (c) Suponha que A tem vantagem de qualidade (\(v_A = 3{,}5\)). Como muda o ponto de tipping?

    (d) Discuta a eficiência dos equilíbrios e o papel da interoperabilidade.

    [Ver solução](../solucoes/cap21.md#ex-21-4)

!!! exercicio-proposto "Exercício 21.5 — Plataforma de mídia: ad-supported vs. assinatura" {#ex-21-5}
    Uma plataforma de conteúdo tem utilidade do usuário \(u = 10 - 2a - p_U\), onde \(a\) é a quantidade de publicidade. O número de usuários é \(n = 200(10 - 2a - p_U)\). A receita de anúncio por impressão é \(0{,}05n\).

    (a) No modelo ad-supported (\(p_U = 0\)), determine a quantidade ótima de publicidade e o lucro.

    (b) No modelo de assinatura (\(a = 0\)), determine o preço ótimo e o lucro.

    (c) Compare os modelos. Qual é mais lucrativo?

    (d) Compare o excedente do consumidor nos dois modelos e discuta implicações de equidade.

    [Ver solução](../solucoes/cap21.md#ex-21-5)

!!! exercicio-proposto "Exercício 21.6 — Discriminação de preços com big data" {#ex-21-6}
    Um monopolista pode identificar dois grupos: sensíveis (\(D_S: q_S = 100 - 4p\), 60% do mercado) e insensíveis (\(D_I: q_I = 100 - p\), 40%). Custo marginal \(c = 10\).

    (a) Calcule preço e lucro com preço uniforme.

    (b) Calcule preços e lucro com discriminação de terceiro grau.

    (c) Compare o excedente do consumidor de cada grupo nos dois cenários.

    (d) Discuta as implicações para a regulação de privacidade (LGPD).

    [Ver solução](../solucoes/cap21.md#ex-21-6)

!!! exercicio-proposto "Exercício 21.7 — Envelopment de plataforma" {#ex-21-7}
    Uma plataforma de e-commerce com \(n_0 = 50\) milhões de usuários avalia entrar no mercado de pagamentos digitais. Custo fixo: \(F_P = 500\) milhões. Benefício adicional por usuário convertido: \(\Delta v = 5\) R$/ano. Taxa de conversão: 60%.

    (a) Calcule o benefício total anual do serviço de pagamentos.

    (b) Se cada usuário convertido gera receita de transação de R$ 2 por transação (10 transações/mês), em quanto tempo o investimento se paga?

    (c) Qual a barreira à entrada para um concorrente sem base de usuários?

    (d) Discuta as implicações antitruste do envelopment.

    [Ver solução](../solucoes/cap21.md#ex-21-7)

!!! exercicio-proposto "Exercício 21.8 — Externalidade de privacidade" {#ex-21-8}
    Numa rede com 100 usuários, cada um decide se compartilha dados pessoais. Benefício privado: \(b = 5\). Custo externo por pessoa afetada: \(e(n) = 0{,}02n\), onde \(n\) é o número de compartilhadores.

    (a) Qual o equilíbrio sem regulação?

    (b) Qual o nível socialmente ótimo de compartilhamento?

    (c) Calcule a taxa pigouviana que internalizaria a externalidade.

    (d) Relacione com a LGPD e o conceito de "consentimento informado".

    [Ver solução](../solucoes/cap21.md#ex-21-8)

!!! exercicio-proposto "Exercício 21.9 — Leilão GSP com quality scores" {#ex-21-9}
    Três anunciantes (X, Y, Z) disputam duas posições. Valores por clique: \(v_X = 8\), \(v_Y = 5\), \(v_Z = 3\). Cliques por posição: \(\theta_1 = 300\), \(\theta_2 = 150\). Quality scores: \(q_X = 1{,}2\), \(q_Y = 1{,}0\), \(q_Z = 0{,}8\).

    (a) Determine a alocação no GSP com quality scores.

    (b) Calcule o preço por clique de cada anunciante.

    (c) Calcule a receita total do buscador.

    (d) Compare com a receita sem quality scores. Por que o Google os utiliza?

    [Ver solução](../solucoes/cap21.md#ex-21-9)

!!! exercicio-proposto "Exercício 21.10 — Precificação intertemporal com efeitos de rede" {#ex-21-10}
    Uma plataforma opera por dois períodos. Custo marginal \(c = 10\). Benefício de rede no período 2: \(f(n_1) = 0{,}1n_1\). Demanda: \(n_t = 100 - 5p_t + f(n_{t-1})\), com \(f(n_0) = 0\).

    (a) Calcule a demanda no período 1 se \(p_1 = 5\) (abaixo do custo).

    (b) Calcule o lucro (prejuízo) no período 1.

    (c) Determine o preço ótimo e o lucro no período 2.

    (d) Compare com a estratégia míope (maximizar lucro separadamente em cada período). Quando a "queima de caixa" se justifica?

    [Ver solução](../solucoes/cap21.md#ex-21-10)

---

## Questões Estilo ANPEC

??? question "ANPEC — Mercados bilaterais e economia digital"
    Julgue as afirmativas como Verdadeiras (V) ou Falsas (F):

    **(0)** Em um mercado bilateral, a estrutura de preços (quanto cada lado paga) é irrelevante — apenas o nível total de preços (soma dos preços cobrados de ambos os lados) afeta as quantidades de equilíbrio.

    **(1)** A regra de precificação ótima de uma plataforma bilateral envolve subsidiar o lado que gera maior externalidade cruzada para o outro lado.

    **(2)** Em mercados com efeitos de rede fortes e single-homing de ambos os lados, a tendência é de winner-take-all: o mercado converge para uma única plataforma dominante.

    **(3)** A precificação abaixo do custo marginal por uma plataforma digital é sempre evidência de prática predatória anticompetitiva.

    **(4)** A externalidade de privacidade implica que o nível de compartilhamento de dados no equilíbrio de mercado tende a ser socialmente excessivo, justificando intervenção regulatória como a LGPD.

    ??? note "Gabarito"
        **(0) F.** A não-neutralidade da estrutura de preços é a assinatura econômica dos mercados bilaterais (Rochet e Tirole, 2003). Cobrar R$ 10 de um lado e R$ 0 do outro gera resultado diferente de R$ 5 de cada.

        **(1) V.** A plataforma reduz o preço para o lado cuja participação gera maior benefício ao outro lado — internalizando a externalidade cruzada (equação 21.12).

        **(2) V.** Com single-homing bilateral, os efeitos de rede são maximais, e a dinâmica de tipping leva a um único vencedor (Seção 21.4).

        **(3) F.** Em mercados bilaterais, preço abaixo do custo marginal para um lado é a estratégia ótima — e pode ser socialmente eficiente — porque internaliza a externalidade cruzada. A lógica predatória do Capítulo 15 não se aplica diretamente.

        **(4) V.** A decisão individual de compartilhar dados impõe externalidade negativa sobre terceiros (equação 21.17), gerando compartilhamento socialmente excessivo — lógica análoga à de qualquer externalidade negativa (Capítulo 20).

??? question "ANPEC — Efeitos de rede e competição"
    Julgue as afirmativas:

    **(0)** Efeitos de rede diretos ocorrem quando o valor do produto para um usuário depende do número de usuários do mesmo produto; efeitos indiretos ocorrem quando o valor depende do número de participantes de outro grupo.

    **(1)** No modelo de adoção com efeitos de rede, a existência de múltiplos equilíbrios é possível, incluindo um equilíbrio de adoção nula que é autorrealizável.

    **(2)** O multi-homing de pelo menos um lado do mercado tende a reduzir a tendência ao winner-take-all e a disciplinar o poder de mercado das plataformas.

    **(3)** O mecanismo GSP (Generalized Second Price) é formalmente equivalente ao mecanismo VCG quando há múltiplas posições de anúncio com taxas de clique diferentes.

    **(4)** Algoritmos de precificação podem convergir para preços supracompetitivos (acima do equilíbrio de Nash) sem programação explícita de colusão, conforme demonstrado por Calvano et al. (2020).

    ??? note "Gabarito"
        **(0) V.** Definição correta (Seção 21.2).

        **(1) V.** A complementaridade estratégica na adoção gera múltiplos equilíbrios. O equilíbrio \(n^* = 0\) existe quando \(v_{\max} < p\) — ninguém adota porque ninguém adota (Seção 21.2.3).

        **(2) V.** Armstrong (2006) demonstra que o multi-homing reduz o poder da plataforma sobre o lado que faz multi-homing (Seção 21.4.2).

        **(3) F.** O GSP não é formalmente equivalente ao VCG com múltiplas posições. Edelman, Ostrovsky e Schwarz (2007) mostram que o equilíbrio do GSP se situa entre o VCG e o leilão de primeiro preço (Seção 21.7.1).

        **(4) V.** Resultado de Calvano et al. (2020): algoritmos de Q-learning descobrem estratégias de punição implícitas que sustentam preços elevados (Seção 21.7.3).
