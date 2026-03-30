# Design Decisions Log — Microeconomia II

## 2026-03-30 | Decisões iniciais de arquitetura

### 1. Cobertura de conteúdo
**Decisão**: Cobrir Cap. 2-7 (consumidor) + Cap. 9-12, 14-15 (firma + mercados). Excluir Cap. 1, 8, 13, 16-19.
**Justificativa**:
- Cap. 1 (modelos): coberto em Intro Micro. Revisão rápida integrada na Aula 01.
- Cap. 8 (jogos): elementos essenciais integrados ao Cap. 15 (oligopólio). Teoria dos jogos pura ficaria melhor em disciplina própria ou Micro III.
- Cap. 13 (equilíbrio geral): tema avançado, requer tempo próprio. Micro III.
- Cap. 16-17 (mercados de fatores): conteúdo rico mas excede 24 aulas. Micro III.
- Cap. 18-19 (falhas de mercado): idem. Micro III ou eletiva.

### 2. Padrão alternado C/P
**Decisão**: Aulas ímpares = conteúdo (mini-lecture ≤ 15 slides), aulas pares = prática ativa.
**Justificativa**: Solicitação do professor. Pedagogicamente sólido — espaça a exposição, permite consolidação ativa.

### 3. Estratégia Gen Z
**Decisão**: Hooks com relevância imediata, blocos de 10-12 min, gamificação (torneios, rankings), polling ao vivo, material digital-first.
**Justificativa**: Pesquisa sobre atenção e engajamento de Gen Z. Faixa etária 18-22 responde melhor a feedback imediato, relevância percebida e interação social.

### 4. Avaliação
**Decisão**: Mix formativo (quizzes 10%, participação 10%, PS 20%) + sumativo (P1 25%, P2 25%, projeto 10%).
**Justificativa**: Peso formativo total = 40% incentiva preparação contínua (crucial para flipped). Provas mantêm rigor. Projeto integra e dá autonomia.

### 5. Dotações e escolha intertemporal
**Decisão**: Manter dotações (Aula 9-10) — conteúdo dos slides existentes (05_dotacoes).
**Justificativa**: Presente nos slides de referência. Conecta teoria pura a aplicações de mercado de trabalho e poupança, relevante para Gen Z (primeiro emprego, FIES).

### 6. Exclusão de teoria dos jogos como bloco separado
**Decisão**: Não dedicar 2 aulas a jogos puros. Integrar conceitos estratégicos no bloco de oligopólio.
**Justificativa**: 24 aulas é restritivo. Jogos puros (Cap. 8) têm ~35 slides nos materiais de referência e seriam uma adição. Conceitos de Nash, best response e jogos repetidos são introduzidos organicamente em Cournot/Bertrand/Stackelberg.

### 7. Formato de slides
**Decisão**: Quarto/Reveal.js, máximo 15 slides por aula.
**Justificativa**: Solicitação do professor. Forçar concisão, permitir interatividade (code chunks, gráficos).

### 8. Material pré-aula
**Decisão**: Páginas .md → HTML com conteúdo do livro, gráficos interativos, boxes e quizzes embutidos.
**Justificativa**: Solicitação do professor. Flipped classroom requer material rico e acessível antes da aula.
