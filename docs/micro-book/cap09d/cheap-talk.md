# Conversa Barata: Cheap Talk e Comunicação Estratégica

## 9d.3 Conversa Barata: *Cheap Talk* e Comunicação Estratégica

No modelo de Spence, o sinal é crível porque é *custoso*. Mas grande parte da comunicação no mundo real é gratuita: publicidade, discursos políticos, promessas de campanha, relatórios de analistas de mercado, descrições em apps de namoro. Quando a comunicação não envolve custo direto — o que a teoria chama de **cheap talk** — a pergunta central é: *alguém deveria acreditar?*[^dead-parrot]

[^dead-parrot]: Os fãs de Monty Python reconhecerão o problema imediatamente. No sketch do *Dead Parrot*, o vendedor (Michael Palin) insiste que o papagaio claramente morto está "apenas descansando" (*"He's resting!"*), "contemplando os fiordes noruegueses" e "stunned". O comprador (John Cleese) não acredita em nada. Por quê? Porque o vendedor tem incentivo óbvio para mentir — seus interesses estão completamente desalinhados com os do comprador. Na linguagem de Crawford-Sobel, o viés do vendedor é tão grande que nenhuma informação é transmitida em equilíbrio: a comunicação é puro ruído. Se o vendedor fosse um veterinário independente (interesses mais alinhados), sua declaração teria credibilidade. O sketch é, inadvertidamente, a demonstração mais clara de cheap talk com viés máximo já encenada.

Crawford e Sobel (1982) formalizaram essa intuição num modelo elegante. Um remetente (*sender*) observa o estado do mundo \(\theta \sim U[0, 1]\) e envia uma mensagem \(m\) (sem custo) ao receptor (*receiver*), que então escolhe uma ação \(a\). O remetente quer que o receptor escolha \(a = \theta + b\), onde \(b > 0\) é o **viés** — a distância entre a ação ideal do remetente e a do receptor (que quer \(a = \theta\)). O viés captura o desalinhamento de interesses: quanto maior \(b\), mais o remetente quer "empurrar" a ação do receptor para cima.

### O resultado central: equilíbrio de partição

<iframe src="/micro-book/graficos/cap09d/cheap-talk.html" title="Figura 9d.4 — Cheap Talk: modelo de Crawford-Sobel" class="graph-iframe" style="height:590px;overflow:hidden" scrolling="no"></iframe>

<div class="caption-obj" markdown>
**Figura 9d.4 — Cheap Talk (Crawford-Sobel).** Aumente o viés \(b\) e observe a partição ficar mais grosseira: menos intervalos, menos informação transmitida. Com \(b = 0\), revelação completa; com \(b \geq 0.25\), babbling — nenhuma informação.
</div>

O resultado de Crawford-Sobel é que, em equilíbrio, a comunicação assume a forma de uma **partição** do espaço de estados. O remetente não diz o valor exato de \(\theta\), mas indica em qual *intervalo* \(\theta\) se encontra. O receptor, sabendo o intervalo, escolhe a ação ótima dado esse conhecimento parcial.

- Se o **viés é zero** (\(b = 0\)): interesses perfeitamente alinhados. Revelação completa é possível — o remetente diz a verdade e o receptor acredita. É o caso do consultor imparcial.
- Se o **viés é pequeno**: a partição é fina — muitos intervalos, muita informação transmitida. O receptor aprende bastante, embora não tudo.
- Se o **viés é grande**: a partição é grosseira — poucos intervalos, pouca informação. No limite, quando \(b\) é suficientemente grande, a única partição é o intervalo inteiro \([0, 1]\) — o remetente não transmite *nenhuma* informação, e a mensagem é puro ruído (como o vendedor do papagaio morto).

O número máximo de intervalos na partição de equilíbrio é decrescente em \(b\): quanto maior o desalinhamento, menos informação é credível. Formalmente, existe um equilíbrio com \(N\) intervalos se e somente se \(b < 1/(2N(N-1))\). Para \(b \geq 1/4\), apenas o equilíbrio "babbling" (nenhuma informação) existe.

!!! idea "Intuição Econômica"
    **Em uma frase:** Quando falar é de graça, a credibilidade depende inteiramente de quanto os interesses do emissor estão alinhados com os do receptor.

    **Pense assim:** Um corretor de imóveis diz que o apartamento é "uma oportunidade imperdível". Você acredita? O corretor ganha comissão na venda (viés positivo) — logo, tem incentivo para exagerar a qualidade. Mas ele não mente *completamente*, porque tem reputação a zelar e você pode verificar informações básicas. O resultado é comunicação parcial: o corretor transmite *alguma* informação (localização, metragem, preço), mas o comprador racionalmente desconta a avaliação subjetiva de qualidade.

    **Exemplos de cheap talk com viés variável:**

    | Remetente | Receptor | Viés | Informação transmitida |
    |:----------|:---------|:-----|:----------------------|
    | Meteorologista | Público | ~Zero | Quase completa (previsão precisa) |
    | Médico do SUS | Paciente | Baixo | Alta (interesse alinhado na saúde) |
    | Vendedor de carro | Comprador | Alto | Muito parcial (desconta elogios) |
    | Político em campanha | Eleitor | Variável | Depende do histórico e da instituição |
    | Analista de sell-side | Investidores | Moderado-alto | Parcial (viés de recomendação) |

### Aplicações

**Forward guidance do Banco Central.** A comunicação do BCB com o mercado é um caso paradigmático de cheap talk institucional. Quando o Copom sinaliza "manutenção da taxa Selic na próxima reunião", o mercado precisa avaliar: essa comunicação é informativa ou estratégica? A resposta depende do viés percebido. Se o mercado acredita que o BCB tem viés inflacionário (interesses desalinhados), desconta a comunicação e a curva de juros não se move. Se confia na autonomia institucional (interesses mais alinhados), a comunicação é eficaz e as expectativas se ajustam. A LC 179/2021, ao formalizar a autonomia do BCB, reduziu o viés percebido e aumentou a informatividade do forward guidance — evidenciada pela redução da volatilidade da curva de juros em torno dos comunicados do Copom (ver Box Brasil 9d sobre forward guidance).

**Publicidade e regulação.** A propaganda comercial é cheap talk com viés: o anunciante tem incentivo para exagerar as qualidades do produto. A regulação de publicidade (Conar, Procon) funciona como mecanismo que *aumenta o custo* de mentir, convertendo cheap talk em comunicação parcialmente custosa — e, portanto, mais crível. Quando a Anvisa exige que embalagens de cigarro carreguem imagens de advertência, está forçando a revelação de informação que o remetente (fabricante) preferiria omitir.

**Promessas de campanha.** Promessas eleitorais são cheap talk por excelência: o candidato fala antes da eleição, e a ação (governar) ocorre depois. O modelo prevê que eleitores deveriam descontar promessas na proporção do viés percebido — e é exatamente o que dados de confiança institucional mostram: em países com alto grau de desconfiança em políticos (como o Brasil, onde apenas ~15% confiam nos partidos, segundo o Latinobarómetro), promessas de campanha têm baixíssima informatividade.
