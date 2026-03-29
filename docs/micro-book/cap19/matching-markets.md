# 19.9 Quem Casa com Quem? Matching Markets e o Design de Mercado {#199}

Nos modelos de informação assimétrica estudados neste capítulo, o problema central era a *qualidade* da transação: como distinguir tipos bons de ruins, como alinhar incentivos, como revelar informação privada. Mas há uma classe de problemas econômicos em que o mecanismo de preços simplesmente *não funciona* — não por falha de informação, mas porque o próprio ato de usar preços seria considerado repugnante, ilegal ou impraticável. Como alocar residentes médicos a hospitais? Estudantes a universidades? Órgãos a pacientes? Esses são problemas de **matching** — e sua solução exigiu uma das mais elegantes contribuições da teoria econômica do século XX.

O campo do **market design** (design de mercados) trata exatamente disso: quando o mercado espontâneo falha ou não existe, o economista assume o papel de engenheiro e *projeta* o mecanismo de alocação. O Prêmio Nobel de 2012, concedido a **Alvin Roth** e **Lloyd Shapley**, reconheceu essa contribuição — e, o que é mais raro, premiou trabalhos com impacto prático imediato e mensurável sobre milhões de pessoas.

---

## O problema: alocação bilateral sem preços

Considere o problema de alocar formandos de medicina a programas de residência em hospitais. Cada formando tem uma lista de hospitais preferidos; cada hospital tem uma lista de candidatos preferidos. Não existe um "preço" que equilibre oferta e demanda — os residentes não leiloam vagas, e os hospitais não vendem posições. A alocação é feita por um **mecanismo centralizado** que coleta preferências e produz uma atribuição.

A pergunta central é: existe um mecanismo que produza alocações **estáveis** — isto é, em que nenhum par hospital-residente prefira estar junto a ficar com seus parceiros atribuídos?

!!! definition "Matching estável"
    Um matching é **estável** se não existe nenhum par $(h, r)$ — hospital $h$ e residente $r$ — tal que:

    1. $r$ prefere $h$ ao hospital que lhe foi atribuído, **e**
    2. $h$ prefere $r$ ao residente que lhe foi atribuído.

    Se tal par existisse, $h$ e $r$ teriam incentivo para abandonar suas alocações e se juntar — uma **blocking pair**. A estabilidade garante que ninguém tem incentivo para desviar, exatamente como no equilíbrio de Nash (Capítulo 9a), mas aplicado a um contexto de matching bilateral.

---

## O algoritmo de Gale-Shapley (Deferred Acceptance)

David Gale e Lloyd Shapley resolveram o problema em 1962 com um algoritmo de elegância notável — o **Deferred Acceptance** (aceitação diferida):

**Protocolo (versão "proponente = residente"):**

1. **Rodada 1:** Cada residente "propõe" ao hospital que mais prefere. Cada hospital que recebeu mais propostas do que tem vagas rejeita os excedentes (mantendo os melhores "em espera") e aceita provisoriamente os demais.
2. **Rodada $k$:** Cada residente rejeitado na rodada anterior propõe ao próximo hospital em sua lista. Cada hospital compara os novos proponentes com os que mantém em espera, retém os melhores e rejeita o restante.
3. **Término:** O algoritmo para quando não há mais rejeições. As alocações provisórias se tornam definitivas.

!!! theorem "Teorema de Gale-Shapley (1962)"
    O algoritmo de aceitação diferida sempre termina em um número finito de rodadas e produz um matching **estável**. Além disso:

    1. O matching resultante é **ótimo para o lado proponente**: nenhum proponente pode estar melhor em qualquer outro matching estável.
    2. O matching é **strategy-proof para o lado proponente**: nenhum proponente pode obter um resultado melhor mentindo sobre suas preferências (revelar a ordem verdadeira é estratégia dominante).
    3. O matching resultante é **fracamente Pareto-eficiente** dentro do conjunto de matchings estáveis.

!!! idea "Intuição Econômica"
    **Em uma frase:** O algoritmo de Gale-Shapley encontra um "casamento" em que ninguém quer fugir com outra pessoa — estabilidade é a versão matching do equilíbrio de Nash.

    **Pense assim:** Imagine um baile de formatura. Na primeira música, cada pessoa convida quem mais quer dançar. Quem recebe múltiplos convites segura o melhor e diz "talvez" aos outros. Os rejeitados convidam a segunda opção. O processo continua até que todos tenham par. No final, ninguém quer trocar — porque quem preferisse outro parceiro já foi rejeitado por esse parceiro em alguma rodada anterior.

    **Por que a estratégia importa:** Se os residentes são os proponentes, eles não ganham nada mentindo sobre suas preferências — o mecanismo é à prova de manipulação para esse lado. Mas os hospitais *podem*, em tese, beneficiar-se de manipulação (o mecanismo não é strategy-proof para o lado receptor). Na prática, Roth (1982) mostrou que nenhum mecanismo estável pode ser strategy-proof para ambos os lados — um resultado de impossibilidade análogo ao Teorema de Arrow (Seção 14.12).

---

## Contribuição de Roth: do quadro-negro ao mundo real

Se Shapley forneceu a teoria, Alvin Roth forneceu a engenharia. Roth (1984) descobriu que o **National Resident Matching Program** (NRMP) dos EUA — criado em 1952, antes do artigo de Gale-Shapley — já utilizava, sem saber, um algoritmo equivalente ao Deferred Acceptance. A partir dessa descoberta, Roth redesenhou o mecanismo do NRMP para acomodar casais (que precisam ser alocados conjuntamente) e expandiu a abordagem para outros mercados:

- **Doação de órgãos (kidney exchange):** Roth, Sönmez e Ünver (2004) projetaram mecanismos de troca de rins entre pares incompatíveis — paciente A é incompatível com seu doador, paciente B também, mas o doador de A é compatível com B e vice-versa. O mecanismo de troca, adotado em vários centros médicos nos EUA e no Reino Unido, salva vidas sem envolver pagamento monetário.
- **Alocação de alunos a escolas públicas:** Abdulkadiroğlu e Sönmez (2003) mostraram que o mecanismo usado em Boston para alocar crianças a escolas públicas era manipulável e ineficiente, e propuseram a adoção do Deferred Acceptance. Nova York e Boston adotaram a reforma.

!!! info "Prêmio Nobel — Alvin E. Roth e Lloyd S. Shapley (2012)"

    **Lloyd Shapley** (1923–2016) foi um matemático e economista americano, professor na UCLA, com contribuições fundamentais à teoria dos jogos cooperativos. **Alvin Roth** (1951–presente) é economista na Stanford University, pioneiro do market design e da economia experimental.

    **Por que ganharam o Nobel:**
    Premiados pela teoria de alocações estáveis e a prática do design de mercados. Shapley, com Gale, provou que matchings estáveis sempre existem e podem ser encontrados por um algoritmo simples (1962). Roth transformou essa teoria em aplicações práticas que redesenharam mercados reais — de residência médica a doação de órgãos e alocação escolar.

    **Conexão com este capítulo:**
    O matching é a face construtiva da economia da informação: em vez de diagnosticar falhas (seleção adversa, moral hazard), o market design *projeta* mecanismos que funcionam mesmo quando preços não podem ser usados. É o desenho de mecanismos (Seção 9c.5) aplicado a mercados bilaterais sem transferências monetárias.

---

## Aplicações brasileiras

!!! example "Caso Real: Matching Markets no Brasil"

    **Residência médica (CNRM).** A Comissão Nacional de Residência Médica coordena a alocação de mais de 40.000 vagas anuais de residência a formandos de medicina no Brasil. Historicamente, o processo é descentralizado — cada instituição conduz seleção própria, com provas e entrevistas independentes. Isso gera ineficiências clássicas documentadas por Roth (1991) em outros mercados descentralizados: *unraveling* (ofertas cada vez mais precoces, antes mesmo da formatura), *exploding offers* (ofertas com prazo de resposta curtíssimo) e congestionamento. A adoção de um mecanismo centralizado tipo Deferred Acceptance — como o NRMP americano — seria uma aplicação direta da teoria de Gale-Shapley ao contexto brasileiro, e há discussões em andamento sobre reformas nessa direção.

    **Sisu/Enem.** O Sistema de Seleção Unificada (Sisu) é o maior mecanismo de matching educacional do Brasil, alocando centenas de milhares de candidatos a vagas em universidades públicas com base na nota do Enem. O Sisu opera em rodadas com "notas de corte" atualizadas em tempo real — um mecanismo que, embora não seja formalmente um Deferred Acceptance, compartilha a lógica de ajuste iterativo. Contudo, o design do Sisu apresenta problemas documentados na literatura: a possibilidade de múltiplas inscrições simultâneas e a revelação de notas de corte em tempo real incentivam comportamento estratégico (os candidatos ajustam suas escolhas durante o período de inscrição para maximizar a probabilidade de admissão), violando a propriedade de strategy-proofness. Reformas baseadas na teoria de matching poderiam reduzir essas distorções — por exemplo, adotando um Deferred Acceptance puro em que os candidatos submetem uma lista ordenada de preferências e o algoritmo faz a alocação sem informação em tempo real.

    **Doação de órgãos.** O Sistema Nacional de Transplantes (SNT), coordenado pelo Ministério da Saúde, gerencia a fila de transplantes no Brasil — um dos maiores programas públicos de transplante do mundo. A alocação segue critérios médicos (compatibilidade, urgência, tempo em lista), mas mecanismos de kidney exchange à la Roth ainda não foram implementados em escala no Brasil. A teoria prevê que a introdução de trocas pareadas — em que pacientes com doadores vivos incompatíveis trocam doadores entre si — poderia aumentar significativamente o número de transplantes renais realizados, como demonstrado empiricamente nos EUA e no Reino Unido.

---

## Propriedades formais: o que o matching garante (e o que não garante)

| Propriedade | Deferred Acceptance (proponente) | Significado |
|:------------|:--------------------------------:|:------------|
| **Estabilidade** | Sim | Nenhum par bloqueador existe |
| **Strategy-proofness (proponente)** | Sim | Revelar preferências verdadeiras é ótimo para quem propõe |
| **Strategy-proofness (receptor)** | Não | O lado receptor pode, em tese, beneficiar-se de manipulação |
| **Pareto-eficiência (entre matchings estáveis)** | Sim (ótimo para proponente) | Nenhum matching estável é melhor para todos os proponentes |
| **Pareto-eficiência (irrestrita)** | Não necessariamente | Podem existir matchings instáveis que Pareto-dominem o estável |

A impossibilidade de obter strategy-proofness para ambos os lados é um resultado de Roth (1982) análogo ao Teorema da Impossibilidade de Arrow (Seção 14.12): não existe mecanismo estável em que seja ótimo para *todos* os agentes revelarem suas preferências verdadeiras. Esse trade-off entre estabilidade e incentivos é uma instância do princípio geral do desenho de mecanismos (Seção 9c.5): toda propriedade desejável tem um custo em outra dimensão.

!!! tip "Conexão"
    A teoria de matching complementa o desenho de mecanismos com transferências monetárias estudado na Seção 9c.5 (VCG, Myerson). Enquanto lá o mecanismo usa pagamentos para alinhar incentivos, aqui a estabilidade substitui os preços como disciplinador do comportamento. Para a fundamentação em teoria dos jogos — equilíbrio de Nash, EPS e desenho de mecanismos —, ver Capítulos 9a–9c.

---

## Referências

- Abdulkadiroğlu, Atila, e Tayfun Sönmez. 2003. "School Choice: A Mechanism Design Approach." *American Economic Review* 93 (3): 729–747.
- Gale, David, e Lloyd S. Shapley. 1962. "College Admissions and the Stability of Marriage." *American Mathematical Monthly* 69 (1): 9–15.
- Roth, Alvin E. 1982. "The Economics of Matching: Stability and Incentives." *Mathematics of Operations Research* 7 (4): 617–628.
- Roth, Alvin E. 1984. "The Evolution of the Labor Market for Medical Interns and Residents: A Case Study in Game Theory." *Journal of Political Economy* 92 (6): 991–1016.
- Roth, Alvin E. 1991. "A Natural Experiment in the Organization of Entry-Level Labor Markets: Regional Markets for New Physicians and Surgeons in the United Kingdom." *American Economic Review* 81 (3): 415–440.
- Roth, Alvin E., Tayfun Sönmez, e M. Utku Ünver. 2004. "Kidney Exchange." *Quarterly Journal of Economics* 119 (2): 457–488.
