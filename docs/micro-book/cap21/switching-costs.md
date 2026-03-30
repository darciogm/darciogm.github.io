# Switching Costs e Lock-in

## 21.8 Trocar Custa Caro — E Quem Sabe Disso É Quem Cobra {#218}

Você já tentou trocar de banco? Se a resposta é sim, sabe que o processo envolve reconfigurar débitos automáticos, avisar empregadores, transferir histórico de crédito e aprender uma interface nova. Se a resposta é "nem pensei nisso", parabéns — você acabou de demonstrar o conceito central desta seção. O custo de trocar de fornecedor — o **switching cost** — não precisa ser monetário para ser real. Basta ser *incômodo* o suficiente para que o consumidor prefira ficar onde está, mesmo quando a alternativa é objetivamente melhor.

A análise dos custos de troca complementa os efeitos de rede (Seção 21.2) e os mercados bilaterais (Seção 21.3) ao formalizar um mecanismo adicional de poder de mercado em economias digitais: o **lock-in**. Enquanto os efeitos de rede geram poder de mercado pelo lado da *demanda* (mais usuários tornam o produto mais valioso), os custos de troca geram poder de mercado pelo lado da *oferta* (uma vez adotado, trocar é caro). Frequentemente, ambos os mecanismos operam simultaneamente — e essa combinação é o que torna plataformas digitais tão difíceis de contestar.

O modelo seminal de Klemperer (1987) demonstra que custos de troca, mesmo pequenos, podem ter efeitos dramáticos sobre preços e bem-estar. A formalização conecta-se diretamente com a teoria de oligopólio do [Capítulos 16a–16b](../cap16a/index.md) e com a análise de barreiras à entrada do [Capítulo 15](../cap15/index.md).

---

### 21.8.1 Tipologia dos custos de troca

Os custos de troca podem ser classificados em seis categorias (Klemperer, 1995):

!!! definition "Custos de troca (*switching costs*)"
    Custos incorridos pelo consumidor ao migrar de um fornecedor para outro que **não** seriam incorridos caso permanecesse com o fornecedor atual. Incluem custos monetários diretos (multas contratuais), custos de transação (tempo, burocracia), custos de aprendizado (adaptar-se a nova interface), custos de compatibilidade (perda de complementos), custos psicológicos (incerteza, apego) e custos de dados (perda de histórico, personalização).

| Tipo | Descrição | Exemplo digital |
|:-----|:----------|:----------------|
| **Contratual** | Multas, períodos de carência, fidelidade | Multa de cancelamento da operadora de celular |
| **Transacional** | Tempo e esforço de migração | Reconfigurar débitos automáticos ao trocar de banco |
| **Aprendizado** | Curva de adaptação à nova interface | Migrar do Excel para Google Sheets |
| **Compatibilidade** | Perda de complementos e integrações | Apps comprados na App Store não funcionam no Android |
| **Dados** | Perda de histórico, personalização, reputação | Perder avaliações de vendedor ao sair do Mercado Livre |
| **Psicológico** | Apego à marca, incerteza sobre qualidade | Resistência a trocar de operadora mesmo com oferta melhor |

!!! definition "Lock-in (aprisionamento tecnológico)"
    Situação em que os custos de troca acumulados pelo consumidor são suficientemente altos para que a migração para um concorrente seja economicamente irracional, mesmo quando o concorrente oferece produto superior ou preço menor. O lock-in transforma poder de mercado *ex post* (após a adoção) em capacidade de cobrar acima do custo marginal.

### 21.8.2 Modelo de Klemperer (1987): duopólio com custos de troca

Considere dois períodos e duas firmas (\(A\) e \(B\)) que vendem produtos homogêneos. No **período 1**, as firmas competem por consumidores "livres" (sem switching cost). No **período 2**, cada consumidor enfrenta um custo de troca \(s > 0\) para migrar de fornecedor.

**Período 2 (resolvendo de trás para frente — [indução retroativa](../cap09b/backward-induction.md)).**

Suponha que, após o período 1, a firma \(A\) tem uma fração \(\lambda\) dos consumidores e a firma \(B\) tem \(1 - \lambda\). Cada consumidor do tipo \(A\) só troca para \(B\) se:

$$
p_B + s < p_A \implies p_A - p_B > s
$$

Se os consumidores são homogêneos no switching cost, a demanda da firma \(A\) no período 2 é:

$$
D_A(p_A, p_B) = \begin{cases} \lambda & \text{se } p_A \leq p_B + s \\ 0 & \text{se } p_A > p_B + s \end{cases}
\label{eq:21.18} \tag{21.18}
$$

A firma \(A\) pode cobrar até \(p_B + s\) sem perder seus clientes. No equilíbrio simétrico (\(\lambda = 1/2\)), ambas as firmas cobram:

$$
p^*_2 = c + s
\label{eq:21.19} \tag{21.19}
$$

onde \(c\) é o custo marginal. O resultado é poderoso: **mesmo com produtos homogêneos e duas firmas, o preço de equilíbrio excede o custo marginal por exatamente \(s\)**. Compare com o resultado de Bertrand sem custos de troca ([Seção 16a.2](../cap16a/fundamentos.md#16a2)), onde \(p^* = c\). O switching cost transforma um mercado Bertrand-competitivo em um mercado com poder de mercado.

!!! theorem "Proposição 21.1 — Custos de troca e markup de equilíbrio (Klemperer, 1987)"
    Em um duopólio com produtos homogêneos e custos de troca simétricos \(s > 0\), o preço de equilíbrio do período 2 é \(p^* = c + s\). O markup sobre o custo marginal é exatamente igual ao custo de troca. A perda de peso morto é crescente em \(s\).

**Período 1 (competição pela base instalada).**

Antecipando o lucro de lock-in no período 2, as firmas competem agressivamente no período 1 para conquistar consumidores. Se \(\delta\) é o fator de desconto, a firma \(A\) está disposta a reduzir o preço no período 1 até:

$$
p_1^* = c - \delta \cdot s \cdot \lambda
\label{eq:21.20} \tag{21.20}
$$

O preço no período 1 pode ser **abaixo do custo marginal** — uma estratégia de "investimento em base instalada". Isso explica por que:

- Operadoras de celular oferecem aparelhos subsidiados em troca de fidelidade;
- Bancos digitais oferecem cashback e isenção de tarifas para novos clientes;
- Plataformas de streaming oferecem períodos gratuitos de teste.

!!! idea "Intuição Econômica"
    **Em uma frase:** Custos de troca dividem a vida do consumidor em duas fases: antes de entrar (quando as firmas brigam por você) e depois de entrar (quando a firma relaxa porque você está preso).

    **Pense assim:** É como um contrato de academia. Em janeiro, todas as academias oferecem promoções agressivas — descontos, isenção de matrícula, primeira mensalidade grátis. Por quê? Porque sabem que, uma vez inscrito, o custo de trocar (transferir plano, adaptar horário, reaprender equipamentos) é alto o suficiente para que você fique — mesmo quando a academia do quarteirão ao lado é melhor. O desconto de janeiro *é* o investimento em lock-in de fevereiro a dezembro.

    **Por que isso importa:** A dinâmica de "preço baixo para capturar → preço alto para explorar" é central na economia digital: gratuidade inicial (Gmail, iCloud, Nubank) seguida de lock-in (dados, contatos, histórico de crédito) é a estratégia dominante em plataformas.

### 21.8.3 Heterogeneidade e o modelo com distribuição contínua

Na prática, consumidores diferem em seus custos de troca. Considere \(s_i\) distribuído uniformemente em \([0, \bar{s}]\). A demanda da firma incumbente \(A\) quando cobra \(p_A\) contra uma entrante com preço \(p_B\) é:

$$
D_A = \Pr(s_i > p_A - p_B) = \begin{cases} 1 & \text{se } p_A \leq p_B \\ 1 - \frac{p_A - p_B}{\bar{s}} & \text{se } p_B < p_A < p_B + \bar{s} \\ 0 & \text{se } p_A \geq p_B + \bar{s} \end{cases}
\label{eq:21.21} \tag{21.21}
$$

A incumbente maximiza \(\pi_A = (p_A - c) \cdot D_A\). A CPO gera:

$$
p_A^* = \frac{c + p_B + \bar{s}}{2}
\label{eq:21.22} \tag{21.22}
$$

No equilíbrio simétrico (\(p_A = p_B = p^*\)):

$$
p^* = c + \bar{s}
\label{eq:21.23} \tag{21.23}
$$

O markup é igual ao switching cost máximo — e consumidores com \(s_i\) alto pagam um "prêmio de aprisionamento" que excede o benefício do produto.

---

### 21.8.4 Interoperabilidade e portabilidade como remédios

Se os custos de troca geram poder de mercado, a política pública pode atuar sobre \(s\) diretamente — reduzindo-o por regulação. Duas intervenções principais:

**Portabilidade:** Obrigar que dados, histórico e ativos do consumidor sejam transferíveis entre fornecedores. Exemplos:

- **Portabilidade numérica** (Anatel, 2008): o consumidor mantém seu número ao trocar de operadora, eliminando \(c_{\text{rede}}\).
- **Open Banking** (BCB, 2021): bancos são obrigados a compartilhar dados de clientes (com consentimento), reduzindo \(c_{\text{dados}}\).
- **GDPR/LGPD — direito à portabilidade:** o consumidor pode solicitar seus dados em formato legível por máquina.

**Interoperabilidade:** Obrigar que produtos de diferentes fornecedores se comuniquem entre si. Exemplo: o DMA europeu exige que o WhatsApp aceite mensagens de outros aplicativos — atacando diretamente o efeito de rede que reforça o lock-in.

!!! box-brasil "Brasil na Prática — Portabilidade bancária e o PIX como antídoto ao lock-in"

    **Contexto:** O sistema financeiro brasileiro ilustra como regulação pode reduzir custos de troca e estimular competição. Historicamente, os cinco maiores bancos (Itaú, Bradesco, Banco do Brasil, Santander, Caixa) concentravam mais de 80% dos depósitos — um oligopólio sustentado por altos switching costs (agências, conta-salário, relacionamento com gerente).

    **Dados:** A portabilidade de conta-salário (2006) permitiu que trabalhadores direcionassem o salário para qualquer banco, reduzindo \(c_{\text{contratual}}\). A portabilidade de crédito (2013) permitiu transferir empréstimos com condições melhores. O Open Banking (Fase 1 em 2021, Fase 4 em 2023) reduziu \(c_{\text{dados}}\) ao permitir compartilhamento de histórico financeiro. E o PIX (2020), ao criar um padrão aberto e interoperável de pagamentos, atacou simultaneamente \(c_{\text{rede}}\) e \(c_{\text{compatibilidade}}\).

    **Resultado:** A participação de fintechs e bancos digitais no mercado de crédito pessoal saltou de menos de 5% em 2018 para mais de 20% em 2024 (BCB, Relatório de Economia Bancária 2024). O Nubank atingiu mais de 100 milhões de clientes no Brasil, tornando-se o quinto maior banco do país — um feito impensável sem a redução regulatória dos custos de troca. A estratégia do BCB é um caso textbook de regulação que atua sobre \(s\) na equação \(\eqref{eq:21.19}\): ao reduzir o switching cost, o regulador aproxima o equilíbrio do resultado de Bertrand sem lock-in (\(p = c\)).

    **Fonte:** BCB (2024). Relatório de Economia Bancária. Disponível em [bcb.gov.br](https://www.bcb.gov.br).

!!! box-brasil "Brasil na Prática — iFood, Rappi e a batalha pelo lock-in no delivery"

    **Contexto:** O mercado brasileiro de delivery por aplicativo é um caso de competição entre plataformas com custos de troca assimétricos. O iFood domina com cerca de 80% de market share (2024), mas enfrenta concorrência de Rappi, Uber Eats (que saiu do Brasil em 2022) e 99Food.

    **Dados:** Do lado do consumidor, os custos de troca são baixos — multi-homing é fácil (instalar dois apps custa zero). Do lado dos restaurantes, porém, os custos de troca são significativos: integração com sistema de gestão, treinamento de equipe, perda de avaliações e histórico de vendas, dependência do tráfego orgânico da plataforma. Em 2023, o CADE investigou cláusulas de exclusividade do iFood com restaurantes — um mecanismo contratual que elevava artificialmente \(c_{\text{contratual}}\) no lado do vendedor.

    **Análise:** A dinâmica ilustra a teoria de Armstrong (2006): a plataforma extrai margens maiores do lado que faz single-homing (restaurantes) e compete mais agressivamente pelo lado que faz multi-homing (consumidores, via cupons e promoções). A investigação do CADE sobre exclusividade é, na linguagem deste capítulo, uma intervenção sobre \(s\): proibir cláusulas de exclusividade reduz \(c_{\text{contratual}}\) para restaurantes, permitindo multi-homing e aumentando a contestabilidade do mercado.

    **Fonte:** CADE (2023). Inquérito Administrativo n.º 08700.004588/2020-47 — iFood.

---

### 21.8.5 Switching costs e inovação

Custos de troca elevados podem tanto **estimular** quanto **inibir** a inovação — e o efeito depende de quem inova.

**Inovação pelo incumbente:** Se os clientes estão presos, o incumbente tem **menor incentivo** para inovar — o chamado "efeito Arrow" adaptado para lock-in. Por que investir em melhorias se os clientes não vão sair? Essa é a crítica central ao lock-in: ele pode gerar **inércia tecnológica**.

**Inovação pelo entrante:** Para superar o switching cost, o entrante precisa oferecer um produto **suficientemente superior** para que o benefício da troca exceda \(s\). Formalmente, o entrante investe em inovação até que:

$$
\Delta v \geq s \implies v_{\text{entrante}} - v_{\text{incumbente}} \geq s
$$

Se \(s\) é alto, o entrante precisa de uma inovação **radical** (não incremental) para contestar o mercado — o que pode ser socialmente custoso. A história da tecnologia está repleta de exemplos: o iPhone precisou ser *dramaticamente* melhor que os smartphones existentes para superar o lock-in dos usuários de Nokia/BlackBerry.

!!! idea "Intuição Econômica"
    **Em uma frase:** Lock-in é a versão digital do "custo de mudança" — e quem domina a base instalada pode relaxar enquanto o concorrente precisa ser excepcional só para empatar.

    **Pense assim:** Trocar de ecossistema (de iOS para Android, de Google Workspace para Microsoft 365) é como mudar de país: tecnicamente possível, mas envolve perder contatos, reaprender idioma (interface), abandonar propriedades (apps comprados) e reconstruir reputação (histórico). A maioria das pessoas fica onde está — e as plataformas sabem disso.

    **Por que isso importa:** A combinação de efeitos de rede + lock-in é o motor do poder de mercado digital. Reguladores como o CADE, a FTC e a Comissão Europeia reconhecem que reduzir switching costs (via portabilidade, interoperabilidade, proibição de exclusividade) é frequentemente mais eficaz do que tentar fragmentar plataformas dominantes.

---

### 21.8.6 Exercícios

!!! example "Exercício Resolvido 21.4 — Duopólio com switching costs"
    **Enunciado.** Duas firmas (\(A\) e \(B\)) competem em preços em dois períodos. Custo marginal: \(c = 10\). Switching cost: \(s = 6\). Fator de desconto: \(\delta = 1\). No período 1, cada firma captura metade do mercado (\(\lambda = 1/2\)). O mercado tem 100 consumidores, cada um comprando 1 unidade por período.

    (a) Qual o preço de equilíbrio no período 2?

    (b) Qual o lucro de cada firma no período 2?

    (c) No período 1, até que preço as firmas estão dispostas a baixar para capturar clientes?

    (d) Qual o excedente do consumidor total nos dois períodos, comparado com Bertrand sem switching costs?

    **Solução.**

    **(a)** Pela equação $\eqref{eq:21.19}$: $p_2^* = c + s = 10 + 6 = 16$.

    **(b)** Cada firma atende 50 consumidores: $\pi_2 = (16 - 10) \times 50 = 300$.

    **(c)** No período 1, cada cliente conquistado gera lucro futuro de $\delta \cdot s = 1 \times 6 = 6$. A firma está disposta a cobrar até $p_1^* = c - \delta \cdot s \cdot \lambda = 10 - 1 \times 6 \times 0{,}5 = 7$. O preço pode ficar **abaixo do custo marginal**.

    **(d)** Sem switching costs (Bertrand): $p = c = 10$ em ambos os períodos. EC por consumidor = $(v - 10) \times 2$ (sendo $v$ a disposição a pagar).

    Com switching costs: período 1 a $p = 7$ (ganho), período 2 a $p = 16$ (perda). EC por consumidor = $(v - 7) + (v - 16) = 2v - 23$. Sem SC: $2v - 20$. Diferença: $-3$ por consumidor. O consumidor **perde** no agregado: o desconto inicial não compensa o markup futuro.

    **Intuição:** O lock-in funciona como um "empréstimo involuntário" — o consumidor recebe desconto hoje e paga com juros amanhã. A soma é negativa porque parte do valor é dissipada em custos de troca que não beneficiam ninguém.

!!! example "Exercício Resolvido 21.5 — Efeito da portabilidade sobre preços"
    **Enunciado.** Considere o modelo anterior. O regulador implementa portabilidade que reduz o switching cost de $s = 6$ para $s = 2$.

    (a) Qual o novo preço de equilíbrio no período 2?

    (b) Quanto o excedente do consumidor aumenta no período 2?

    (c) O que acontece com o incentivo das firmas para investir em inovação?

    **Solução.**

    **(a)** $p_2^* = c + s = 10 + 2 = 12$.

    **(b)** Redução de preço: $16 - 12 = 4$ por unidade. Com 100 consumidores: $\Delta EC = 4 \times 100 = 400$.

    **(c)** Efeito ambíguo. Para o **incumbente**, a redução de lock-in aumenta o incentivo a inovar (precisa reter clientes por qualidade, não por aprisionamento). Para o **entrante**, a redução de switching costs facilita a entrada — agora uma inovação incremental ($\Delta v > 2$ em vez de $\Delta v > 6$) basta para contestar. No agregado, a literatura empírica sugere que a redução de switching costs **estimula** a inovação (Farrell e Klemperer, 2007).
