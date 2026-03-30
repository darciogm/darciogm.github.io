# Capítulo 18 — A Paciência Tem Preço

Você já parcelou uma compra e sentiu aquele aperto ao ver o total com juros? Ou deixou dinheiro na poupança "para o futuro" sem saber exatamente quando esse futuro chegaria? Parabéns: você já fez economia intertemporal — só faltava o jargão. A verdade é que a economia não se resume a decisões instantâneas. Agentes econômicos constantemente fazem escolhas que envolvem o **tempo**: poupar hoje para consumir amanhã, investir em uma fábrica cujos retornos virão ao longo de anos, extrair um recurso natural agora ou preservá-lo para o futuro. Neste capítulo, estudamos a teoria do capital e dos juros, que fornece o arcabouço analítico para compreender essas decisões — e para entender por que, no Brasil, a paciência custa particularmente caro.[^holy-hand-grenade-juros]

**Conexões com outros capítulos.** O leitor que estudou o Capítulo 3 (preferências e utilidade) reconhecerá aqui a mesma lógica de otimização sob restrição — agora aplicada a consumo em diferentes períodos de tempo. O Capítulo 7 (incerteza) fornece a base para a precificação de ativos arriscados e o fator de desconto estocástico. O Capítulo 8 (economia comportamental) introduziu o desconto hiperbólico e a inconsistência temporal, que contrastam com o desconto exponencial do modelo de Fisher. Os capítulos de equilíbrio geral (14–15) estenderam a análise para múltiplos mercados simultâneos; aqui, focamos na dimensão temporal dessa interação. Finalmente, o Capítulo 17 (mercados de fatores) analisou a remuneração do trabalho e da terra — este capítulo completa a análise dos mercados de fatores examinando a remuneração do capital.

---

## Roteiro do Capítulo

<div class="chapter-roadmap" markdown>

| Seção | Pergunta-guia | O que você vai aprender | Página |
|:---:|---|---|:---:|
| 18.1 | De onde vêm as máquinas — e quanto rendem? | Capital físico, taxa de retorno | [Capital](capital-juros.md#181) |
| 18.2 | O que determina o preço da impaciência? | Determinação da taxa de juros | [Juros](capital-juros.md#182) |
| 18.3 | Gastar agora ou guardar para janeiro? | Modelo de Fisher, escolha intertemporal | [Fisher](fisher-inflacao.md#183) |
| 18.4 | Qual é a diferença entre o juro que você vê e o que você sente? | Juro nominal vs. real, efeito Fisher | [Inflação](fisher-inflacao.md#184) |
| 18.5 | Quanto vale uma promessa incerta de pagamento futuro? | Precificação de ativos, valor presente | [Ativos](ativos-investimento.md#185) |
| 18.6 | O forno novo compensa mais que o CDB? | Valor presente líquido (VPL) | [VPL](ativos-investimento.md#186) |
| 18.7 | O projeto rende quanto por cento ao ano? | Taxa interna de retorno (TIR) | [TIR](ativos-investimento.md#187) |
| 18.8 | Mais um caminhão ou deixa o dinheiro no banco? | Demanda por capital, custo de uso | [Demanda K](demanda-capital.md#188) |
| 18.9 | Por que Einstein chamou juros compostos de oitava maravilha? | Juros compostos e tempo contínuo | [Compostos](demanda-capital.md#189) |
| 18.10 | Como colocar todos os números na mesa para decidir? | VPL aplicado, taxa de desconto | [Decisão](hotelling.md#1810) |
| 18.11 | Extrair petróleo hoje ou deixar no solo para amanhã? | Regra de Hotelling, recursos exauríveis | [Hotelling](hotelling.md#1811) |
| 🧪🧠🎯✏️🏆 | Teste, pratique, resolva | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
| 🔬 | O que a pesquisa recente diz? | Artigos seminais e fronteira empírica | [Pesquisa](pesquisa.md) |

</div>

---

!!! classroom "Atividade em Sala: O Leilão do Futuro — Desconto Intertemporal e Viés pelo Presente"

    **Objetivo pedagógico:** Revelar experimentalmente o desconto hiperbólico e o viés pelo presente, contrastando decisões intertemporais com o modelo exponencial de Fisher.

    **Materiais:** Cartões de decisão impressos (um por aluno), planilha projetada para registrar respostas, cronômetro.

    **Formato:** 3 rodadas × 8 min cada + 12 min debrief = 36 min

    ---

    **Rodada 1 — Desconto puro (8 min)**

    - Cada aluno recebe um cartão com 5 pares de escolhas intertemporais:
        - R$ 100 hoje **ou** R$ 110 em 1 mês
        - R$ 100 hoje **ou** R$ 120 em 1 mês
        - R$ 100 hoje **ou** R$ 150 em 1 mês
        - R$ 100 hoje **ou** R$ 200 em 1 mês
        - R$ 100 hoje **ou** R$ 500 em 1 mês
    - Alunos marcam suas escolhas individualmente (sem discussão).
    - **Previsão:** A maioria troca a partir de algum valor — revelando sua taxa de desconto implícita.

    **Rodada 2 — Teste de consistência temporal (8 min)**

    - Agora os mesmos pares, mas deslocados no tempo:
        - R$ 100 **em 12 meses** ou R$ 110 **em 13 meses**
        - R$ 100 **em 12 meses** ou R$ 120 **em 13 meses**
        - (mesma estrutura)
    - **Previsão:** Muitos alunos que preferiram R$ 100 hoje a R$ 110 em 1 mês agora preferem esperar R$ 110 em 13 meses a receber R$ 100 em 12 meses. Isso é **inconsistência temporal** — o modelo exponencial de Fisher prevê escolhas idênticas.

    **Rodada 3 — Leilão de projetos de investimento (8 min)**

    - O professor apresenta 3 "projetos" com fluxos de caixa diferentes (curto prazo vs. longo prazo). Grupos de 4 alunos negociam qual projeto "comprar" dado um orçamento limitado.
    - Projete a tabela de VPL para diferentes taxas de desconto.
    - **Previsão:** Grupos com viés pelo presente escolhem projetos de retorno rápido; grupos mais pacientes investem no longo prazo.

    ---

    **Debrief (12 min)**

    1. Projete o histograma de taxas de desconto implícitas da Rodada 1.
    2. Compare respostas das Rodadas 1 e 2: "Quantos de vocês mudaram de opinião?" → isso é desconto hiperbólico.
    3. "O modelo de Fisher assume consistência temporal. Vocês foram consistentes? O que isso implica para políticas como previdência obrigatória?"
    4. Conecte com Laibson (1997) e o design de *nudges* (opt-in vs. opt-out em planos de previdência).

---

[^holy-hand-grenade-juros]: A Santa Granada de Mão de Antioquia, em *Monty Python e o Santo Graal*, vem com instruções precisas: "Primeiro, tirarás o pino sagrado. Então, contarás até três. Nem mais, nem menos. Três será o número que contarás, e o número da contagem será três." A regra do VPL tem uma precisão semelhante: primeiro, identifica os fluxos de caixa. Então, desconta à taxa apropriada. Nem taxa nominal quando deveria ser real, nem taxa real quando deveria ser nominal. A taxa será a correta, e a taxa correta será a taxa. Confundir as duas — como confundir três com cinco — pode fazer o projeto explodir na sua cara.
