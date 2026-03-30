---
title: Recursos para Download
---

# Recursos para Download

Material complementar do livro em formatos prontos para uso em sala de aula.

## Quizzes

- **[Quizzes Moodle (XML)](quizzes-moodle.xml)** — Todas as 125 questões de revisão rápida (5 por capítulo) em formato Moodle XML. Importe diretamente no Moodle via *Banco de Questões > Importar > Formato Moodle XML*. As questões ficam organizadas por capítulo na categoria `Microeconomia/CapXX`.

## Blackboard Ultra

- **[Instruções de importação](blackboard/README_importacao.md)** — Guia completo para importar questões no Blackboard Ultra
- **Pools por capítulo:** Pasta [`blackboard/`](blackboard/) contém 54 arquivos (1 pool MC + 1 pool V/F por capítulo)
- **Consolidados:**
    - [`all_quiz_mc.txt`](blackboard/all_quiz_mc.txt) — **135 questões de múltipla escolha** (Revisão Rápida, 5 por capítulo)
    - [`all_anpec_tf.txt`](blackboard/all_anpec_tf.txt) — **340 itens Verdadeiro/Falso** (questões estilo ANPEC)
- **Total: 475 questões** prontas para importação
- **Script de regeneração:** [`gerar_blackboard.py`](gerar_blackboard.py) (re-executa se o livro for atualizado)

## Materiais Pedagogicos

- **[Atividades de Sala](atividades-sala.md)** — Inventario completo das 40+ atividades de aprendizagem ativa do livro
- **[Spin-offs e Complementos](spin-offs.md)** — Planejamento de materiais derivados (caderno de exercicios, guia computacional, etc.)
- **[Mapas Conceituais por Parte](mapas-conceituais.md)** — Mini-mapas Mermaid para projetar no inicio de cada parte do livro
- **[Template de Newsletter](newsletter-template.md)** — Estrutura fixa + exemplos prontos para a newsletter semanal "Micro no Mundo Real"
- **[Guia Pythonesco](guia-pythonesco.md)** — Indice de todas as referencias a Monty Python no livro, por sketch e conceito economico

## Versão para Impressão / PDF

- **[Como gerar o PDF do livro](versao-impressao.md)** — Instruções para exportar o livro (ou capítulos individuais) em formato PDF, incluindo impressão pelo navegador, mkdocs-print-site e Pandoc.
- **[Script auxiliar (`gerar-pdf.sh`)](gerar-pdf.sh)** — Shell script que concatena todos os capítulos em um único arquivo Markdown pronto para conversão via Pandoc.
