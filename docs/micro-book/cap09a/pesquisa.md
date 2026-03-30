# Pesquisa em Ação

## 🔬 Pesquisa em Ação

??? pesquisa "Bresnahan, Timothy F.; Reiss, Peter C. (1991). [Entry and Competition in Concentrated Markets](https://doi.org/10.1086/261786). *Journal of Political Economy*, 99(5), 977–1009."
    **Pergunta central:** Quantas firmas são necessárias para que um mercado se torne efetivamente competitivo?

    **Método:** Modelo econométrico de entrada em mercados locais geograficamente isolados nos EUA (cidades pequenas com 1 a 5 firmas), usando dados de cinco setores — médicos, dentistas, farmácias, encanadores e lojas de pneus. A ideia-chave: se o mercado precisa ser proporcionalmente maior para sustentar 3 firmas do que para 2, é porque a terceira firma reduz as margens.

    **Resultado:** A transição de monopólio para duopólio e de duopólio para triopólio gera reduções significativas nas margens. A partir de 3 a 5 firmas, o tamanho por firma se estabiliza — a maior parte dos ganhos competitivos ocorre com as primeiras entrantes.

    **Relevância:** Para o Brasil, os resultados têm implicações diretas para análise do CADE em atos de concentração. A metodologia é aplicável a mercados de combustíveis, farmácias e serviços de saúde no interior. O artigo testa empiricamente as previsões de Cournot e Bertrand (Seção 9a.5).

??? pesquisa "Adams, Christopher P. (2025). *Game Theory for Applied Econometricians: Data Analytics with R*. Boca Raton: CRC Press. Capítulos 1–5."
    **Escopo:** Parte I do livro cobre jogos estáticos com informação completa — a matéria deste módulo — com ênfase em aplicações empíricas e análise de dados em R.

    **Contribuição pedagógica:** Adams conecta cada conceito teórico a um dataset e um script R. O Capítulo 1 analisa o game show *Friend or Foe* (Dilema dos Prisioneiros com dinheiro real); o Capítulo 2 estuda entrada de firmas no mercado de pneus; o Capítulo 3 modela competição de hambúrgueres; o Capítulo 5 testa estratégias mistas com dados de pênaltis.

    **Relevância:** Os R Boxes interativos deste módulo (9a.1 e 9a.2) são inspirados nos scripts de Adams, adaptados para execução no navegador via WebR. Os dados do pacote `Ecdat` permitem que o leitor reproduza e modifique as análises sem instalar nada.

??? pesquisa "Chiappori, Pierre-André; Levitt, Steven; Groseclose, Tim (2002). [Testing Mixed-Strategy Equilibria When Players Are Heterogeneous](https://doi.org/10.1257/00028280260344678). *American Economic Review*, 92(4), 1138–1147."
    **Pergunta central:** Os jogadores de futebol profissional jogam estratégias mistas consistentes com a teoria em cobranças de pênalti?

    **Método:** Dados de 459 pênaltis da Série A italiana e da liga francesa. Cada cobrança é modelada como um jogo 2×2 (cobrador escolhe lado, goleiro escolhe lado). A teoria prevê que as taxas de sucesso devem ser iguais em todos os lados — caso contrário, o cobrador deveria ajustar suas probabilidades.

    **Resultado:** As taxas de sucesso dos cobradores são estatisticamente indistinguíveis entre esquerda e direita, consistente com a teoria de estratégias mistas. Os cobradores não exibem padrões seriais exploráveis.

    **Relevância:** Evidência empírica direta do princípio da indiferença (Seção 9a.4) em um contexto de alto incentivo financeiro.

??? pesquisa "Kreps, David M.; Scheinkman, José A. (1983). [Quantity Precommitment and Bertrand Competition Yield Cournot Outcomes](https://doi.org/10.2307/3003636). *Bell Journal of Economics*, 14(2), 326–337."
    **Pergunta central:** Por que o resultado de Cournot emerge em mercados em que as firmas podem competir em preços?

    **Método:** Modelo de dois estágios: no primeiro estágio, firmas escolhem capacidade produtiva simultaneamente; no segundo, competem em preços à la Bertrand. Capacidade é interpretada como comprometimento de quantidade.

    **Resultado:** O equilíbrio do jogo de dois estágios reproduz exatamente o resultado de Cournot. A intuição é elegante: dada a capacidade instalada no primeiro estágio, a competição em preços no segundo estágio não pode levar ao preço de custo marginal porque as firmas têm capacidade limitada — e isso garante margens positivas idênticas às de Cournot.

    **Relevância:** Este artigo resolve o debate Cournot-Bertrand mostrando que os dois modelos são compatíveis quando se incorpora a decisão de capacidade como etapa anterior à precificação. A distinção entre variável estratégica de curto prazo (preço) e compromisso de longo prazo (capacidade) — discutida na Seção 9a.5 e aprofundada no Módulo 9b — é fundamental para a análise de fusões em setores intensivos em capital.

??? pesquisa "Bajari, Patrick; Benkard, C. Lanier; Levin, Jonathan (2007). [Estimating Dynamic Models of Imperfect Competition](https://doi.org/10.1111/j.1468-0262.2007.00796.x). *Econometrica*, 75(5), 1331–1370."
    **Pergunta central:** Como estimar estruturalmente modelos de oligopólio dinâmico sem impor restrições funcionais rígidas?

    **Método:** Procedimento de estimação em dois estágios (BBL) para jogos dinâmicos de oligopólio. No primeiro estágio, estimam-se as políticas de decisão dos agentes de forma não-paramétrica diretamente dos dados. No segundo, recuperam-se os parâmetros estruturais (custos, payoffs) exigindo que as políticas observadas sejam consistentes com um equilíbrio de Markov perfeito.

    **Resultado:** O método BBL é computacionalmente tratável mesmo para jogos com muitos estados — um avanço em relação aos métodos de programação dinâmica que exigem resolver explicitamente o equilíbrio. Aplicações empíricas cobrem mercados de cimento, companhias aéreas e varejo.

    **Relevância:** A estimação de modelos estruturais de oligopólio é o instrumento de fronteira para análise antitruste quantitativa. O CADE e o DOJ americano utilizam abordagens próximas do BBL para simular os efeitos de fusões. Conecta a Seção 9a.5 (equilíbrio estático de Cournot e Bertrand) com os modelos dinâmicos dos Módulos 9b e 9d.

??? pesquisa "Camerer, Colin F.; Ho, Teck-Hua (1999). [Experience-Weighted Attraction Learning in Normal Form Games](https://doi.org/10.1111/1468-0262.00054). *Econometrica*, 67(4), 827–874."
    **Pergunta central:** Como agentes reais aprendem a jogar equilíbrios de Nash ao longo de experiências repetidas?

    **Método:** Modelo EWA (*Experience-Weighted Attraction*) que generaliza aprendizado por reforço e *fictitious play* em um único framework paramétrico. O modelo é estimado em dados de experimentos laboratoriais com jogos como Batalha dos Sexos, Dilema dos Prisioneiros e Matching Pennies com sujeitos humanos.

    **Resultado:** O modelo EWA se ajusta melhor aos dados do que os modelos concorrentes em 7 dos 8 jogos testados. Em geral, as estratégias dos sujeitos convergem para o equilíbrio de Nash, mas o processo de convergência é lento e heterogêneo entre sujeitos.

    **Relevância:** Fornece evidência empírica sobre a validade descritiva do equilíbrio de Nash como previsão de comportamento. Os resultados sugerem que o equilíbrio é uma boa aproximação para situações com experiência repetida e incentivos elevados — contexto de muitos mercados industriais —, mas pode falhar em interações únicas entre agentes inexperientes. Dialoga diretamente com a discussão sobre fundamentos do equilíbrio de Nash na Seção 9a.3.

---

## 📚 Referências do Capítulo

- Adams, Christopher P. 2025. [*Game Theory for Applied Econometricians: Data Analytics with R*](https://doi.org/10.1201/b23262). Boca Raton: CRC Press.
- Bajari, Patrick, C. Lanier Benkard, e Jonathan Levin. 2007. "Estimating Dynamic Models of Imperfect Competition." *Econometrica* 75 (5): 1331–1370. [DOI](https://doi.org/10.1111/j.1468-0262.2007.00796.x)
- Axelrod, Robert. 1984. [*The Evolution of Cooperation*](https://books.google.com/books?id=NJZBCGbNs98C). New York: Basic Books.
- Bertrand, Joseph. 1883. "Théorie mathématique de la richesse sociale." *Journal des Savants* 67: 499–508.
- Camerer, Colin F., e Teck-Hua Ho. 1999. "Experience-Weighted Attraction Learning in Normal Form Games." *Econometrica* 67 (4): 827–874. [DOI](https://doi.org/10.1111/1468-0262.00054)
- Bresnahan, Timothy F., e Peter C. Reiss. 1991. "Entry and Competition in Concentrated Markets." *Journal of Political Economy* 99 (5): 977–1009. [DOI](https://doi.org/10.1086/261786)
- Chiappori, Pierre-André, Steven Levitt, e Tim Groseclose. 2002. "Testing Mixed-Strategy Equilibria When Players Are Heterogeneous." *American Economic Review* 92 (4): 1138–1147. [DOI](https://doi.org/10.1257/00028280260344678)
- Cournot, Antoine-Augustin. 1838. *Recherches sur les Principes Mathématiques de la Théorie des Richesses*. Paris: Hachette.
- Fudenberg, Drew, e Jean Tirole. 1991. [*Game Theory*](https://books.google.com/books/about/Game_Theory.html?id=pFPHKwXro3QC). Cambridge, MA: MIT Press.
- Gibbons, Robert. 1992. [*Game Theory for Applied Economists*](https://books.google.com/books?id=8ygxf2WunAIC). Princeton: Princeton University Press.
- Kreps, David M., e José A. Scheinkman. 1983. "Quantity Precommitment and Bertrand Competition Yield Cournot Outcomes." *Bell Journal of Economics* 14 (2): 326–337. [DOI](https://doi.org/10.2307/3003636)
- Kalist, David E. 2004. "Data from the Television Game Show 'Friend or Foe?'" *Journal of Statistics Education* 12 (3). [DOI](https://doi.org/10.1080/10691898.2004.11910738)
- List, John A. 2006. "Friend or Foe? A Natural Experiment of the Prisoner's Dilemma." *Review of Economics and Statistics* 88 (3): 463–471. [DOI](https://doi.org/10.1162/rest.88.3.463)
- Mas-Colell, Andreu, Michael D. Whinston, e Jerry R. Green. 1995. [*Microeconomic Theory*](https://books.google.com/books/about/Microeconomic_Theory.html?id=KGtegVXqD8wC). New York: Oxford University Press. Caps. 7–8.
- Maynard Smith, John, e George R. Price. 1973. "The Logic of Animal Conflict." *Nature* 246: 15–18. [DOI](https://doi.org/10.1038/246015a0)
- Nash, John F. 1950. "Equilibrium Points in N-Person Games." *Proceedings of the National Academy of Sciences* 36 (1): 48–49. [DOI](https://doi.org/10.1073/pnas.36.1.48)
- Nash, John F. 1951. "Non-Cooperative Games." *Annals of Mathematics* 54 (2): 286–295. [DOI](https://doi.org/10.2307/1969529)
- Osborne, Martin J., e Ariel Rubinstein. 1994. [*A Course in Game Theory*](https://books.google.com/books/about/A_Course_in_Game_Theory.html?id=k-WLoAEACAAJ). Cambridge, MA: MIT Press.
- Schelling, Thomas C. 1960. [*The Strategy of Conflict*](https://books.google.com/books?id=7RkL4Z8Yg5AC). Cambridge, MA: Harvard University Press.
- Selten, Reinhard. 1965. "Spieltheoretische Behandlung eines Oligopolmodells mit Nachfrageträgheit." *Zeitschrift für die gesamte Staatswissenschaft* 121: 301–324.
- Stackelberg, Heinrich von. 1934. *Marktform und Gleichgewicht*. Vienna: Springer.
- Von Neumann, John, e Oskar Morgenstern. 1944. [*Theory of Games and Economic Behavior*](https://books.google.com/books?id=jCN5aNJ-n-0C). Princeton: Princeton University Press.
