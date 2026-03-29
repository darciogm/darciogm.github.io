# Capítulo 8 — Nem Tão Racionais Assim

Nos capítulos anteriores, construímos a teoria da escolha do consumidor sobre dois pilares: preferências racionais (completas e transitivas) e maximização da utilidade esperada sob incerteza. Esses modelos são elegantes, tratáveis e geram previsões poderosas. Mas quão fiéis são ao comportamento real dos seres humanos?

A partir da década de 1970, uma série de experimentos conduzidos por psicólogos e economistas revelou **violações sistemáticas** dos axiomas de racionalidade. Não se trata de erros aleatórios — os desvios seguem padrões previsíveis, enraizados na arquitetura cognitiva humana. Daniel Kahneman e Amos Tversky foram os pioneiros desse programa de pesquisa, que culminou na **Teoria do Prospecto** (Kahneman e Tversky 1979) e rendeu a Kahneman o Prêmio Nobel de Economia em 2002.

!!! abstract "Roteiro do capítulo"

    <div class="chapter-roadmap" markdown>

    | Seção | Pergunta-guia | O que você vai aprender | Página |
    |:---:|---|---|:---:|
    | **8.1** | Por que erramos de formas previsíveis? | Heurísticas (representatividade, disponibilidade, ancoragem), excesso de confiança, arquitetura dual Sistema 1 vs. Sistema 2 | [Heurísticas e Vieses](heuristicas.md) |
    | **8.2** | Como decidimos sob risco de verdade? | Paradoxo de Allais, função valor, aversão à perda, ponderação de probabilidades, PT Cumulativa, efeito dotação, framing, contabilidade mental | [Teoria do Prospecto](prospecto.md) |
    | **8.3** | E quando nem as probabilidades conhecemos? | Risco vs. ambiguidade, Paradoxo de Ellsberg, modelos de ambiguidade (CEU, MEU, suave) | [Aversão à Ambiguidade](ambiguidade.md) |
    | **8.4** | As pessoas só se importam consigo mesmas? | Jogos do ultimato, ditador e confiança; modelo de Fehr-Schmidt; reciprocidade e cooperação | [Preferências Sociais](preferencias-sociais.md) |
    | **8.5** | Por que sabotamos nosso eu futuro? | Desconto exponencial vs. quasi-hiperbólico, viés do presente, agentes sofisticados vs. ingênuos, mecanismos de compromisso | [Desconto Hiperbólico](desconto.md) |
    | **8.6** | Dá para usar os vieses a nosso favor? | Paternalismo libertário, nudges (defaults, framing, normas sociais), limites e críticas, sludge | [Nudges](nudges.md) |
    | **Exercícios** | Teste e aplique | Revisão, exercícios, ANPEC | [Exercícios](exercicios.md) |
    | **Pesquisa** | O que a fronteira diz? | Kahneman & Tversky, Fehr & Schmidt, Madrian & Shea, Laibson, Ellsberg, Thaler & Sunstein, DellaVigna | [Pesquisa](pesquisa.md) |

    </div>

**Conexão com o restante do livro.** Este capítulo se situa em uma encruzilhada. Do lado do passado, dialoga diretamente com dois conjuntos de resultados já estabelecidos: os axiomas de racionalidade do Capítulo 3 (completude, transitividade, continuidade e, especialmente, independência) e a teoria da utilidade esperada de Von Neumann–Morgenstern do Capítulo 7 (o axioma da independência e a representação linear das probabilidades). A economia comportamental não descarta esses modelos — ela os usa como referência precisa para identificar *onde* e *por que* os agentes se afastam das previsões canônicas. Do lado do futuro, os conceitos deste capítulo são insumos diretos para tópicos avançados: no Capítulo 14, sobre teoria dos jogos, as preferências sociais (Seção 8.4) modificam os equilíbrios previstos em jogos de barganha e de cooperação. Em teoria de mecanismos e desenho de contratos — temas que surgem no Capítulo 15 e além —, a contabilidade mental, o desconto quasi-hiperbólico e a aversão à perda determinam que tipos de incentivos funcionam na prática. Um governo que projeta um programa de previdência complementar ou um regulador que define o formato de um rótulo nutricional precisa incorporar as regularidades documentadas aqui; caso contrário, o mecanismo pode funcionar elegantemente no papel e falhar com agentes reais.

A abordagem deste capítulo é deliberadamente cumulativa: começamos pelos fundamentos psicológicos das heurísticas (Seção 8.1), passamos para o modelo formal mais influente de decisão sob risco (Teoria do Prospecto, Seção 8.2), estendemos a análise para situações com probabilidades desconhecidas (Seção 8.3) e para contextos de interação (preferências sociais, Seção 8.4), examinamos o eixo temporal (desconto hiperbólico, Seção 8.5) e concluímos com as implicações de política pública (nudges, Seção 8.6). A cada passo, privilegiamos a conexão entre o rigor formal e as evidências empíricas — porque a economia comportamental é, acima de tudo, uma ciência empírica.
